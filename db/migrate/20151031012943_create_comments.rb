class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :article_id, null: false
      t.index :article_id
    end
  end
end
