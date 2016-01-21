ActiveAdmin.register Division do

permit_params :name, :parent_id #,:lft, :rgt

  # Sort categories by left asc
  config.sort_order = 'lft_asc'

  # Add member actions for positioning.
  sortable_tree_member_actions

  index do
    # This adds columns for moving up, down, top and bottom.
    sortable_tree_columns

    #...
    column :name
    column :parent
    column :lft
    column :rgt
    actions

    column 'Staffs' do |division|
      table_for division.staffs do
        column :id 
        column :name
        column :birth_day
      end
    end
  end

  show do
    attributes_table do
      row :parent
      row :id
      row :name
    end

    panel "Table of Staffs" do
      table_for division.staffs do
        column :id 
        column :name
        column :birth_day
      end
    end
  end

end
