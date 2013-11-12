require 'rails/generators/migration'

module Sanction
  module Generators
    class RoleGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      desc "Generates a roles table and sanction initializer."

      def copy_role_file
        template "initializer.rb", "config/initializers/sanction.rb"
        migration_template "create_roles.rb", "db/migrate/create_roles"
      end
      
      def show_readme
        readme "README" if behavior == :invoke
      end

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end
