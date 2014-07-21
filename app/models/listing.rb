
class Listing < ActiveRecord::Base
  if Rails.env.development?
    has_attached_file :image, :styles => { :small => "50x", :thumb => "100x100>" }, :default_url => "default.jpg"
    validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)

  else
    has_attached_file :image, :styles => { :small => "50x", :thumb => "100x100>" }, :default_url => "default.jpg",
        :storage => :dropbox,
        :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        :path => ":style/:id_:filename"
  end
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  validates_attachment_presence :image
end