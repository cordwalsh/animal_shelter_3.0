class AddPetsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
     t.column :name, :string
     t.column :type_of_animal, :string
     t.column :sex, :string
     t.column :age, :integer
   end
  end
end
