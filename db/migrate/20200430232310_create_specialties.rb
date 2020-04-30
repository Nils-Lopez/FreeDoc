class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :name

      t.timestamps
    end
    add_reference :doctors, :specialty, foreign_key: true
  end
end
