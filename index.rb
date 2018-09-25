def findOptions(options, currentJumps)
  [1,2].each do |n|
    newCurrentJumps = currentJumps.dup
    newCurrentJumps.push(n)
    sum = newCurrentJumps.sum

    if sum > 11
      next
    elsif sum === 11
      options.push(newCurrentJumps)
    else
      options = findOptions(options, newCurrentJumps)
    end
  end
  return options
end

options = findOptions([], [])

print options.length
