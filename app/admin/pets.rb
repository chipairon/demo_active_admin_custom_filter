ActiveAdmin.register Pet do

  filter :custom_search_owner_name_like,
         :as => :autocomplete,
         :url => "/pets/autocomplete_owner_name",
         :label => "Owner name",
         :required => false,
         :element_id => "owner_name_id", # textbox_id
         :wrapper_html => {:style => "list-style: none !important"}
end
