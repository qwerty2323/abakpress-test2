class Post < ActiveRecord::Base
    belongs_to :parent, class_name: "Post"
    has_many :children, class_name: "Post", foreign_key: "parent_id"

    def to_param
        name
    end

    def set_name(parent,pname)
        name = Post.find_by(parent_id: parent).name + "/" + pname
    end
end
