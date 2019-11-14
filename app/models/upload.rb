class Upload < ApplicationRecord
  # mount_base64_uploader :uri, FileUploader
  belongs_to :user
  # validates_integrity_of :uri
  # validates_processing_of :uri

end
