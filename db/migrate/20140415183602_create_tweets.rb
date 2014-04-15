class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.column :user_id, :int
      t.column :tweet, :string

      t.timestamps
    end
  end
end
