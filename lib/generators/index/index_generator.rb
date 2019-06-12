require "rails/generators/active_record"

class IndexGenerator < Rails::Generators::Base
  include ActiveRecord::Generators::Migration
  source_root File.join(__dir__, "templates")

  argument :table, type: :string
  argument :columns, type: :array

  def copy_migration
    migrate_path = ActiveRecord::Tasks::DatabaseTasks.migrations_paths.first
    migration_template "index_migration.rb", "#{migrate_path}/add_index_on_#{columns.join('_and_')}_to_#{table}.rb"
  end

  def migration_version
    "[#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}]"
  end
end
