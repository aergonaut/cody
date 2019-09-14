# typed: true
class AddConfigHashToRepositories < ActiveRecord::Migration[5.1]
  def change
    add_column :repositories, :config_hash, :string
  end
end
