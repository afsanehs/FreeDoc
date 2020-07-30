class CreateDoctorSpecialities < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_specialities do |t|
      t.integer :doctor_id
      t.integer :speciality_id

      t.timestamps
    end
  end
end
