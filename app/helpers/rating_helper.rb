module RatingHelper
  def star_rating_class(comment, index)
    if index < comment.note
      "fill-yellow-400 stroke-yellow-400"
    else
      "fill-transparent stroke-gray-400"
    end
  end
end
