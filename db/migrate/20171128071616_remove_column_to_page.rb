class RemoveColumnToPage < ActiveRecord::Migration[5.0]
  def change
    remove_column :pages, :subject_id, :integer
  end
end
