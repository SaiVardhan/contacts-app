class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :title
      t.string :type
      t.string :phone
      t.string :ext
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end
