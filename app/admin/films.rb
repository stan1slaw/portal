ActiveAdmin.register Film do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :producer, :time_create, :description, :picture, :cached_votes_total, :cached_votes_score, :cached_votes_up, :cached_votes_down, :cached_weighted_score, :cached_weighted_total, :cached_weighted_average
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :producer, :time_create, :description, :picture, :cached_votes_total, :cached_votes_score, :cached_votes_up, :cached_votes_down, :cached_weighted_score, :cached_weighted_total, :cached_weighted_average]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
