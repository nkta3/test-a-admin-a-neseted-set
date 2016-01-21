class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.date :birth_day
      t.references :division, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
