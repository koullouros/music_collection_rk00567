module ApplicationHelper
  # calculates the average rating for a given track
  def avg_rating(track)
    total = 0
    n = 0
    track.reviews.each do |r|
      total += r.rating
      n += 1
    end

    if n != 0
      return total/n
    else
      return 0
    end
  end
end
