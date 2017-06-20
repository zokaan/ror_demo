class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :username
      t.string   :email
      t.string   :password
      t.datetime :birth_date

      t.timestamps null: false
    end
  end
end
