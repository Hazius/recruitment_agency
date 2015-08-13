class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.date :date_of_submit
      t.date :date_of_expiry
      t.integer :salary
      t.string :сontact

      t.timestamps null: false
    end
  end
end
