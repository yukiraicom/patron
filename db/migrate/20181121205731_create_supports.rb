class CreateSupports < ActiveRecord::Migration[5.1]
  def change
    create_table :supports do |t|
      t.integer :patreon_id
      t.integer :creater_id	
      t.integer :SupportMoney
      t.timestamps
    end
  end
end
