class PetsController < InheritedResources::Base
  # this creates a route 'pets/autocomplete_owner_name'
  # full means -> name like '%string%'
  autocomplete :owner, :name, :full => true
end
