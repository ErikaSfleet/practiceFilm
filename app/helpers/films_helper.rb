module FilmsHelper
  def rating_for_select
    Rating.all { |r| [r.name, r.id] }
  end

end
