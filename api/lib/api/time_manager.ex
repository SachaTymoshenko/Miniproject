defmodule Api.TimeManager do
  @moduledoc """
  The TimeManager context.
  """

  import Ecto.Query, warn: false
  alias Api.Repo

  alias Api.TimeManager.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)


  def get_userByEmailAndUserName!(email, username), do: Repo.get_by!(User,email: email,username: username)
  def get_userByUsername!(username), do: Repo.get!(User, username)


  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a user.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_user(%User{} = user, attrs \\ %{}) do
    User.changeset(user, attrs)
  end

  alias Api.TimeManager.Clock

  @doc """
  Returns the list of clocks.

  ## Examples

      iex> list_clocks()
      [%Clock{}, ...]

  """
  def list_clocks do
    Repo.all(Clock)
  end

  @doc """
  Gets a single clock.

  Raises `Ecto.NoResultsError` if the Clock does not exist.

  ## Examples

      iex> get_clock!(123)
      %Clock{}

      iex> get_clock!(456)
      ** (Ecto.NoResultsError)

  """
  def get_clock!(id), do: Repo.get!(Clock, id)

  @doc """
  Creates a clock.

  ## Examples

      iex> create_clock(%{field: value})
      {:ok, %Clock{}}

      iex> create_clock(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_clock(attrs \\ %{}) do
    %Clock{}
    |> Clock.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a clock.

  ## Examples

      iex> update_clock(clock, %{field: new_value})
      {:ok, %Clock{}}

      iex> update_clock(clock, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_clock(%Clock{} = clock, attrs) do
    clock
    |> Clock.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a clock.

  ## Examples

      iex> delete_clock(clock)
      {:ok, %Clock{}}

      iex> delete_clock(clock)
      {:error, %Ecto.Changeset{}}

  """
  def delete_clock(%Clock{} = clock) do
    Repo.delete(clock)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking clock changes.

  ## Examples

      iex> change_clock(clock)
      %Ecto.Changeset{data: %Clock{}}

  """
  def change_clock(%Clock{} = clock, attrs \\ %{}) do
    Clock.changeset(clock, attrs)
  end

  alias Api.TimeManager.WorkingTimes

  @doc """
  Returns the list of workingtimes.

  ## Examples

      iex> list_workingtimes()
      [%WorkingTimes{}, ...]

  """
  def list_workingtimes do
    Repo.all(WorkingTimes)
  end

  @doc """
  Gets a single working_times.

  Raises `Ecto.NoResultsError` if the Working times does not exist.

  ## Examples

      iex> get_working_times!(123)
      %WorkingTimes{}

      iex> get_working_times!(456)
      ** (Ecto.NoResultsError)

  """
  def get_working_times!(id), do: Repo.get!(WorkingTimes, id)

  @doc """
  Creates a working_times.

  ## Examples

      iex> create_working_times(%{field: value})
      {:ok, %WorkingTimes{}}

      iex> create_working_times(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_working_times(attrs \\ %{}) do
    %WorkingTimes{}
    |> WorkingTimes.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a working_times.

  ## Examples

      iex> update_working_times(working_times, %{field: new_value})
      {:ok, %WorkingTimes{}}

      iex> update_working_times(working_times, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_working_times(%WorkingTimes{} = working_times, attrs) do
    working_times
    |> WorkingTimes.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a working_times.

  ## Examples

      iex> delete_working_times(working_times)
      {:ok, %WorkingTimes{}}

      iex> delete_working_times(working_times)
      {:error, %Ecto.Changeset{}}

  """
  def delete_working_times(%WorkingTimes{} = working_times) do
    Repo.delete(working_times)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking working_times changes.

  ## Examples

      iex> change_working_times(working_times)
      %Ecto.Changeset{data: %WorkingTimes{}}

  """
  def change_working_times(%WorkingTimes{} = working_times, attrs \\ %{}) do
    WorkingTimes.changeset(working_times, attrs)
  end
end
