class CreateTest2s < ActiveRecord::Migration[6.0]
  def change
    create_table :test2s do |t|
      t.string :name
      t.text :body
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
