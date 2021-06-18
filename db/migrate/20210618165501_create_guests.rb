class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :full_name
      t.string :email
      t.boolean :rsvp
      t.boolean :attending
      t.text :notes

      t.timestamps
    end
  end
end
