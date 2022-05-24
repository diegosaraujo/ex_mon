defmodule ExMon do
  alias ExMon.{Game, Player}
  @computer_name "Robotinik"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    create_player(@computer_name, :punch, :kick, :heal)
    |> Game.start(player)
  end
end
