class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :entry, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
