class CreateFortunes < ActiveRecord::Migration[7.1]
  def change
    create_table :fortunes do |t|
      t.string :text

      t.timestamps
    end
  end
end
