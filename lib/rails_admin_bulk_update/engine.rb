module RailsAdminBulkUpdate
  class Engine < ::Rails::Engine

    initializer "RailsAdminBulkUpdate precompile hook", group: :all do |app|
      app.config.assets.precompile += %w(rails_admin/rails_admin_bulk_update.js)
    end

  end
end
