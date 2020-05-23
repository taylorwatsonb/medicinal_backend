class HerbSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image_url, :nature_id, :nature
end
