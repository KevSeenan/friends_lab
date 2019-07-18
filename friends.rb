def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def do_they_like_this_food(person, food)
  for favourite_snack in person[:favourites][:snacks]
  if food == favourite_snack
    return favourite_snack
  else
    return favourite_snack
  end
end
end

def add_new_friend(person, friend)
  person[:friends].push(friend)
end

def fall_out_with_friend(person, friend)
  person[:friends].delete(friend)
end

def get_total_money(people)
 total = 0
 for person in people
   total += person[:monies]
 end
 return total
end

def lending_money(lender, lendee, amount)
 lender[:monies] = lender[:monies] - amount
 lendee[:monies] = lendee[:monies] + amount
end

def joined_food(people)
  all_food = []

  for person in people
    for food in person[:favourites][:snacks]
      all_food << food
    end
  end

  return all_food
end

def no_friends(people)
  no_pals = []

  for person in people
    if person[:friends] == []
      no_pals << person[:name]
    end
  end

  return no_pals
end
