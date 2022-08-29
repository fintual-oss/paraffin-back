module Resources
  module ShowHelper
    def format_comment(comment)
      "Comment by #{comment.user.name}: #{comment.content}"
    end
  end
end
