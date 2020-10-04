class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :building, foreign_key: true
      t.text :contact
      t.text :respond
      t.string :status
      t.timestamps
    end
  end
end
