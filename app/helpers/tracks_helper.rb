module TracksHelper
  def avg_rating(track)
    total = 0
    n = 0
    track.reviews.each do |r|
      total += r.rating
      n += 1
    end

    return total/n
  end
end
