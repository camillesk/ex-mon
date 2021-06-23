defmodule ExMon do
  @moduledoc """
  Main module of the game.
  """

  alias ExMon.{Game, Player}
  alias ExMon.Game.Status

  def create_player(move_avg, move_heal, move_rnd, name) do
    Player.build(move_avg, move_heal, move_rnd, name)
  end

  def start_game(player) do
    create_player(:soco, :cura, :chute, "Venom")
    |> Game.start(player)

    Status.print_round_message()
  end
end
