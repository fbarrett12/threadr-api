class PostSerializer < ActiveModel::Serializer
    attributes :title, :body, :channel_id, :user_id
end