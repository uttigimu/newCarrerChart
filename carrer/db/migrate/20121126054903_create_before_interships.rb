class CreateBeforeInterships < ActiveRecord::Migration
  def change
    create_table :before_interships do |t|
      t.string :company
      t.string :capital
      t.string :business
      t.string :delegate
      t.string :address1
      t.string :address2
      t.string :intershipsContent
      t.string :unit
      t.string :receivingPerson
      t.string :tel
      t.string :email

      t.timestamps
    end
  end
end
