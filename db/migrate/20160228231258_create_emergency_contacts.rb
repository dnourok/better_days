class CreateEmergencyContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :emergency_contacts do |t|
      t.string :full_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
