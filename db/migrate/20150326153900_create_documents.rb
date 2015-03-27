class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :box_view_id

      t.timestamps null: false
    end
  end
end
