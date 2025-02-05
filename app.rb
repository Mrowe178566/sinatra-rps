require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"



get "/" do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <ul>
    <li><a href='/rock'>Play Rock</a></li>
    <li><a href='/paper'>Play Paper</a></li>
    <li><a href='/scissors'>Play Scissors</a></li>
    <li><a href='https://en.wikipedia.org/wiki/Rock_paper_scissors'>Rules</a></li>
  </ul>
  "
end

  






get ("/rock") do
  moves = ["rock","paper","scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:zebra)
end

get "/paper" do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end
  erb(:paper)
end


get "/scissors" do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
  erb :scissors
end

