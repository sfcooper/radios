class Radio < ApplicationRecord
    has_one_attached :image
    
  extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
private
  def should_generate_new_friendly_id?
    slug.nil? || name_changed? || location_changed?
  end
end
