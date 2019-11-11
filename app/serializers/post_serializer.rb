class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :body, :channel_id, :user_id
end