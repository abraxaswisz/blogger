class Author < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "50x50#"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
