json.array! @tournaments.each do |tournament|
  json.partial! "tournaments.json.jbuilder", tournament: tournament 
end