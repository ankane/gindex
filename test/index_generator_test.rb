require_relative "test_helper"

require "rails/generators/test_case"
require "generators/index/index_generator"

class IndexGeneratorTest < Rails::Generators::TestCase
  tests IndexGenerator
  destination File.expand_path("../tmp", __dir__)
  setup :prepare_destination

  def test_one
    ActiveRecord::Tasks::DatabaseTasks.stub(:migrations_paths, ["#{destination_root}/db/migrate"]) do
      run_generator ["users", "email"]
    end
    assert_migration "db/migrate/add_index_on_email_to_users.rb", /add_index :users, :email, algorithm: :concurrently/
  end

  def test_many
    ActiveRecord::Tasks::DatabaseTasks.stub(:migrations_paths, ["#{destination_root}/db/migrate"]) do
      run_generator ["deliveries", "store_id", "delivered_at"]
    end
    assert_migration "db/migrate/add_index_on_store_id_and_delivered_at_to_deliveries.rb", /add_index :deliveries, \[:store_id, :delivered_at\], algorithm: :concurrently/
  end
end
