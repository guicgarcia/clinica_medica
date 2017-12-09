class CreatePreservices < ActiveRecord::Migration[5.1]
  def change
    create_table :preservices do |t|
      t.string :type_service
      t.text :note
      t.text :reasons
      t.string :situation
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
