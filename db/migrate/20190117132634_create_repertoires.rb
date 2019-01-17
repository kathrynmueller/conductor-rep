class CreateRepertoires < ActiveRecord::Migration[5.2]
  def change
    create_table :repertoires do |t|
      t.string :composer
      t.string :title
      t.date :date_performed
      t.string :ensemble_performed

      t.timestamps
    end
  end
end
