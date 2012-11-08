class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.text :note
      t.timestamp :viewed_at

      t.timestamps
    end
  end
end
