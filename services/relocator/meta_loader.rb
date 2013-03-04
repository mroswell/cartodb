# encoding: utf-8
require 'json'
require_relative './relocator'
require_relative './rdbms'
require_relative './redis/map_style_metadata'
require_relative './redis/user_metadata'
require_relative './redis/threshold_metadata'
require_relative './redis/table_metadata'
require_relative './redis/api_credential_metadata'

Encoding.default_external = "utf-8"

module CartoDB
  module Relocator
    class MetaLoader
      attr_accessor :user_id
      
      %w{ maps layers data_imports client_applications api_keys assets tags}
      .each do |table|
        define_method(table) { insert_in(table) }
      end

      def initialize(arguments)
        @rdbms       = arguments.fetch(:rdbms)
        @relocation  = arguments.fetch(:relocation)
      end #initialize

      def run
        @maps_map                   = maps
        @layers_map                 = layers
        @data_imports_map           = data_imports
        @client_applications_map    = client_applications

        api_keys
        assets
        tags

        rdbms.insert_oauth_tokens_for(
          records:                  records_for(:oauth_tokens),
          client_applications_map:  @client_applications_map,
          user_id:                  user_id
        )

        rdbms.insert_layers_maps_for(
          records:                  records_for(:layers_maps),
          layers_map:               @layers_map,
          maps_map:                 @maps_map
        )

        rdbms.insert_layers_users_for(
          records:                  records_for(:layers_users),
          layers_map:               @layers_map,
          user_id:                  user_id
        )

        rdbms.insert_user_tables_for(
          user_id:                  user_id,
          records:                  records_for(:user_tables),
          maps_map:                 @maps_map,
          data_imports_map:         @data_imports_map
        )

        puts 'Loading redis data'
        ThresholdMetadata.new(user_id)
          .load(records_for('redis/thresholds_metadata'))
        APICredentialMetadata.new(user_id)
          .load(records_for('redis/api_credentials_metadata'))
        MapStyleMetadata.new(user_id)
          .load(records_for('redis/map_styles_metadata')) 
        TableMetadata.new(user_id)
          .load(records_for('redis/tables_metadata' ))
        UserMetadata.new(user_id)
          .load(records_for('redis/users_metadata'))
      end #run

      private

      attr_reader :rdbms, :relocation

      def insert_in(table_name)
        rdbms.insert_in(table_name, records_for(table_name), user_id)
      end #insert_in

      def records_for(table_name)
        JSON.parse(relocation.fetch(table_name).readlines.join)
      end #records_for
    end # MetaLoader
  end # Relocator
end # CartoDB

