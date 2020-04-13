# Une cascade de if...
def time_string(second)
  # Si les heures sont < 10
  if second/3600 < 10
    # Si les minutes sont < 10
    if (second%3600)/60 <10
      # Si les secondes sont < 10 alors on met un 0 devant
      if second%3600%60 < 10
        return "0#{second/3600}:0#{(second%3600)/60}:0#{second%3600%60}"
      else
        return "0#{second/3600}:0#{(second%3600)/60}:#{second%3600%60}"
      end
    # Si les minutes sont > 10
    else
      return "0#{second/3600}:#{(second%3600)/60}:#{second%3600%60}"
    end

  # Si les heures sont > 10
  else
    # Si les minutes sont < 10
    if (second%3600)/60 <10
      # Si les secondes sont < 10 alors on met un 0 devant
      if second%3600%60 < 10
        return "#{second/3600}:0#{(second%3600)/60}:0#{second%3600%60}"
      else
        return "#{second/3600}:0#{(second%3600)/60}:#{second%3600%60}"
      end
    # Si les minutes sont > 10
    else
      # Si les secondes sont < 10 alors on met un 0 devant
      if second%3600%60 < 10
        return "#{second/3600}:#{(second%3600)/60}:0#{second%3600%60}"
      else
        return "#{second/3600}:#{(second%3600)/60}:#{second%3600%60}"
      end
    end
  end
end