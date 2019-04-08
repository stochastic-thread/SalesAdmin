class CreateFileuploads < ActiveRecord::Migration[5.2]
  def change
    create_table :fileuploads do |t|
      t.string :fname
      t.string :content_type
      t.binary :contents

      t.timestamps
    end
  end
end
