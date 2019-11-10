class ChannelSerializer < ActiveModel::Serializer
    attributes :title, :description
    has_many :posts
end