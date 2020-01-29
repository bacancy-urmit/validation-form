class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :age
      t.string :degree
      t.datetime :yearcompleted
      t.string :username
      t.string :website
      t.text :address_line1
      t.text :address_line2
      t.string :city
      t.string :state
      t.float :zipcode
      t.string :password

      t.timestamps
    end
  end
end
