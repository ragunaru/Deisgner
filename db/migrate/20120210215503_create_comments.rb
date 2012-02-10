class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :email
      t.string :url
      t.text :body
      t.references :deisgn

      t.timestamps
    end
    add_index :comments, :deisgn_id
  end
end
