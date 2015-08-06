require "rails_admin_bulk_update/engine"

module RailsAdminBulkUpdate
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class BulkUpdate < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :collection? do
          true
        end

        register_instance_option :only do
          Offer
        end

        register_instance_option :controller do
          proc do
            @offers = @abstract_model.all
            @blocks = Block.all
            respond_to do |format|
              format.js {
                render text: :ok
              }
              format.html
            end
          end
        end

      end
    end
  end
end
