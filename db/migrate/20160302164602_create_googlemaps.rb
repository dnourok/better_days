class CreateGooglemaps < ActiveRecord::Migration[5.0]
  def change
    create_table :googlemaps do |t|

      t.timestamps
    end
  end
end
