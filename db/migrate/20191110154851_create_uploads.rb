class CreateUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :uploads do |t|
      t.string :filename
      t.string :uri

      t.timestamps
    end
  end
end
