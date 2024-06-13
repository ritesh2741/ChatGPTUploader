class CreateFileUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :file_uploads do |t|
      t.string :name
      t.binary :file_data

      t.timestamps
    end
  end
end
