class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.boolean :likesbeer

      t.timestamps
    end
  end
end
