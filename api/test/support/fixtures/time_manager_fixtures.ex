defmodule Api.TimeManagerFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Api.TimeManager` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        username: "some username"
      })
      |> Api.TimeManager.create_user()

    user
  end

  @doc """
  Generate a clock.
  """
  def clock_fixture(attrs \\ %{}) do
    {:ok, clock} =
      attrs
      |> Enum.into(%{
        status: true,
        time: ~N[2022-10-24 10:22:00]
      })
      |> Api.TimeManager.create_clock()

    clock
  end

  @doc """
  Generate a working_times.
  """
  def working_times_fixture(attrs \\ %{}) do
    {:ok, working_times} =
      attrs
      |> Enum.into(%{
        end: ~N[2022-10-24 10:24:00],
        start: ~N[2022-10-24 10:24:00]
      })
      |> Api.TimeManager.create_working_times()

    working_times
  end
end
