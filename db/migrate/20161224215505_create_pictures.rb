class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :comment
      t.string :name
      t.string :content_type
      t.binary :data, :limit => 1.megabyte
    end
  end
end
