# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  visible     :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#
class Product < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged

    #validates :name, presence: true
    validates :name, presence: {message: 'El nombre es requerido'}
    #validates :description, presence: true
    validates :description, presence: {message: 'La descripción es requerida'}

    validates :name, length: {maximum:200, minimum: 2}

    has_one_attached :image, :dependent => :destroy
    #uniqueness
    # length
    #format
    #presence 
end
