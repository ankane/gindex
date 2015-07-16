require "rails/generators/migration"

class IndexGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path("../templates", __FILE__)
  argument :table, type: :string
  argument :columns, type: :array

  # Implement the required interface for Rails::Generators::Migration.
  def self.next_migration_number(dirname) #:nodoc:
    next_migration_number = current_migration_number(dirname) + 1
    if ::ActiveRecord::Base.timestamped_migrations
      [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
    else
      "%.3d" % next_migration_number
    end
  end

  def copy_migration
    migration_template "index_migration.rb", "db/migrate/add_index_on_#{columns.join('_and_')}_to_#{table}.rb"
  end
end
