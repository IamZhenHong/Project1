class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :mentor, null: false, foreign_key: true
      t.references :mentee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
