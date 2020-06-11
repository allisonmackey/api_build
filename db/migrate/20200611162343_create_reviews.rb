class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :content, :string
      t.column :user_id, :integer
      t.column :destination_id, :integer
    end
  end
end
