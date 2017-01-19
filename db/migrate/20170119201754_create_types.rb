class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :desc

      t.timestamps null: false
    end
  end
end
