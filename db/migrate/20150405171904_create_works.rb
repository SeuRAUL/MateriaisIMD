class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :status
      t.string :version
      t.string :type
      t.string :file
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :works, :users
  end
end
