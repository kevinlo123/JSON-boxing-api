class CreateBoxers < ActiveRecord::Migration[5.2]
  def change
    create_table :boxers do |t|
      t.string :name
      t.string :height
      t.string :weight
      t.string :nationality
      t.string :stance
      t.integer :bouts
      t.integer :wins
      t.integer :losses
      t.string :division

      t.timestamps
    end
  end
end
