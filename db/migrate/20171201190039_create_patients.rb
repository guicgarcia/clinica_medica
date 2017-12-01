class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :cpf
      t.string :birth
      t.string :phone
      t.string :address
      t.string :companion

      t.timestamps
    end
  end
end
