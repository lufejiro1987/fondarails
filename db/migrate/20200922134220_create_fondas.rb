class CreateFondas < ActiveRecord::Migration[6.0]
  def change
    create_table :fondas do |t|
      t.string :name
      t.string :address
      t.string :food

      t.timestamps
    end
  end
end
