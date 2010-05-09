class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.text :address, :null => false
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
