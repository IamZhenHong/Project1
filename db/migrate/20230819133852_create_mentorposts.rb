class CreateMentorposts < ActiveRecord::Migration[7.0]
  def change
    create_table :mentorposts do |t|
      t.string :title
      t.text :body
      t.text :description
      t.text :credentials
      t.text :experience
      t.text :availability
      t.text :contact
      

      t.timestamps
    end
  end
end
