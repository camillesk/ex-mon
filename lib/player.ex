defmodule ExMon.Player do
  @moduledoc """
  Player Module
  """

  @required_keys [:life, :move_avg, :move_heal, :move_rnd, :name]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(move_avg, move_heal, move_rnd, name) do
    %ExMon.Player{
      life: @max_life,
      move_avg: move_avg,
      move_heal: move_heal,
      move_rnd: move_rnd,
      name: name
    }
  end
end
