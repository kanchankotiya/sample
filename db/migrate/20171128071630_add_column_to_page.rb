class AddColumnToPage < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :subject_id, :integer
    add_column :pages, :name, :string
    add_column :pages, :position, :integer
    add_column :pages, :permalink, :string
    add_column :pages, :visible, :string
  end
end
