class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.decimal :total_amount
      t.decimal :paid_by_amar
      t.decimal :paid_by_akbar
      t.decimal :paid_by_anthony
      t.integer :event_type, default: 0
      t.boolean :amar_present, default: false
      t.boolean :akbar_present, default: false
      t.boolean :anthony_present, default: false
      t.timestamps null: false
    end
  end
end
