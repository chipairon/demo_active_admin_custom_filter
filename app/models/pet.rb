class Pet < ActiveRecord::Base
  attr_accessible :name, :owner_id
  belongs_to :owner


  search_methods :custom_search_owner_name_like
  scope :custom_search_owner_name_like, lambda { |query_string|
    owners_found = Owner.search_owner_name(query_string)
    where(:owner_id => owners_found)
  }
end
