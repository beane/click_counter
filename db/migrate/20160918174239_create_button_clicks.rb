class CreateButtonClicks < ActiveRecord::Migration
  def change
    create_table :button_clicks do |t|

      t.timestamps null: false
    end
  end
end
