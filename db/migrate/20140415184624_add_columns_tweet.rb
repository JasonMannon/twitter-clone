class AddColumnsTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :user_id, :int
    add_column :tweets, :tweet, :string
  end
end
