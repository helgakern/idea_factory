class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :rating
      t.references :idea, null: false, foreign_key: true
      t.timestamps
    end
    # add_reference :reviews, :user, null: true, foreign_key: true
  end
end