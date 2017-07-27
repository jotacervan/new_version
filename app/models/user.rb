class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""


  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time


  field :remember_created_at, type: Time


  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String


  field :user_type,              type: String, default: 'user'
  field :name,                   type: String
  field :cpf,                    type: String
  field :rg,                     type: String
  field :cep,                    type: String
  field :street,                 type: String
  field :number,                 type: String
  field :complement,             type: String
  field :neighborhood,           type: String
  field :city,                   type: String
  field :state,                  type: String
  field :picture_file_name,      type: String
  field :picture_file_size,      type: String
  field :picture_content_type,   type: String
  field :doc_front_file_name,    type: String
  field :doc_front_file_size,    type: String
  field :doc_front_content_type, type: String
  field :doc_back_file_name,     type: String
  field :doc_back_file_size,     type: String
  field :doc_back_content_type,  type: String
  field :afiliation,             type: String
  field :work_city,              type: String
  field :status,                 type: Integer, default: 1
  field :udid,                   type: String
  field :accepted_terms,         type: Mongoid::Boolean, default: false


  belongs_to :syndicate, optional: :true
  has_many :cards
  has_many :questions

  has_mongoid_attached_file :picture, 
    :styles => { :medium => "320x320>", :thumb => "160x160#" },
    :storage        => :s3,
    :bucket_name    => 'SindicatosBR',
    :bucket    => 'SindicatosBR',
    :path           => ':attachment/:id/:style.:extension',
    :s3_credentials => File.join(Rails.root, 'config', 's3.yml')
  validates_attachment_size :picture, :less_than => 5.megabytes
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

  
  has_mongoid_attached_file :doc_front, 
    :styles => { :medium => "320x320>", :thumb => "160x160#" },
    :storage        => :s3,
    :bucket_name    => 'SindicatosBR',
    :bucket    => 'SindicatosBR',
    :path           => ':attachment/:id/:style.:extension',
    :s3_credentials => File.join(Rails.root, 'config', 's3.yml')
  validates_attachment_size :doc_front, :less_than => 5.megabytes
  validates_attachment_content_type :doc_front, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

  
  has_mongoid_attached_file :doc_back, 
    :styles => { :medium => "320x320>", :thumb => "160x160#" },
    :storage        => :s3,
    :bucket_name    => 'SindicatosBR',
    :bucket    => 'SindicatosBR',
    :path           => ':attachment/:id/:style.:extension',
    :s3_credentials => File.join(Rails.root, 'config', 's3.yml')
  validates_attachment_size :doc_back, :less_than => 5.megabytes
  validates_attachment_content_type :doc_back, :content_type => ['image/jpeg', 'image/png', 'image/jpg']


  def will_save_change_to_email?
    # FAKE FUNCTION
  end

  def self.mapuser (u)
    { :id => u.id.to_s, :name => u.name, :udid => u.udid, :status => u.status, :picture => u.picture, :doc_front => u.doc_front, :doc_back => u.doc_back, :afiliation => u.afiliation, :rg => u.rg, :cpf => u.cpf, :syndicate_name => u.syndicate.name, :cep => u.cep, :state => u.state, :city => u.city, :neighborhood => u.neighborhood, :street => u.street, :number => u.number, :complement => u.complement, :accepted_terms => u.accepted_terms  }
  end
  
end
