# typed: true
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :name
      t.string :uid

      t.timestamps
    end
  end
end
