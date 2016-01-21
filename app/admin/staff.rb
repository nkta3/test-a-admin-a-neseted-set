ActiveAdmin.register Staff do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :birth_day, :division_id , :image
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


  index do
    selectable_column
    column :division do |staff|
      div = staff.division
      divs = []
      while div.parent
        divs << div.name
        div = div.parent
      end
      divs << div.name
      divs.reverse.join(" - ")
    end
    column :division
    column :id
    column :name
    column :birth_day
    column :image do
      image_tag :image, width: 64
    end
    actions
  end

  show do
    attributes_table do
      row :division do |staff|
        staff.division.parent.name
      end
      row :division
      row :id
      row :name
      row :birth_day
      row :image do |staff|
        image_tag staff.image, width: 320
      end
    end
  end

end
