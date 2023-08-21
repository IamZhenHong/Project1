class CreateMentors < ActiveRecord::Migration[7.0]
  def change
    create_table :mentors do |t|
      t.string :name
      t.text :description
      t.text :credentials
      t.text :experience

      t.timestamps
    end
  end
end
