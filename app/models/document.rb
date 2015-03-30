class Document < ActiveRecord::Base

  has_attached_file :doc,
                    storage: :s3,
                    s3_credentials: {
                      bucket: ENV['S3_BUCKET_NAME'],
                      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
                      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
                    },
                    path: "/:rails_env/:filename"

  validates_attachment_content_type :doc, content_type: [
    'application/pdf',
    'application/msword',
    'application/vnd.oasis.opendocument.text',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    "application/vnd.ms-powerpoint",
    "application/vnd.openxmlformats-officedocument.presentationml.presentation"
  ]
end
