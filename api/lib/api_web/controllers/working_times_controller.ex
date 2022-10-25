defmodule ApiWeb.WorkingTimesController do
  use ApiWeb, :controller

  alias Api.TimeManager
  alias Api.TimeManager.WorkingTimes

  action_fallback ApiWeb.FallbackController

  def index(conn, _params) do
    workingtimes = TimeManager.list_workingtimes()
    render(conn, "index.json", workingtimes: workingtimes)
  end

  def create(conn, %{"working_times" => working_times_params}) do
    with {:ok, %WorkingTimes{} = working_times} <- TimeManager.create_working_times(working_times_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.working_times_path(conn, :show, working_times))
      |> render("show.json", working_times: working_times)
    end
  end

  def show(conn, %{"id" => id}) do
    working_times = TimeManager.get_working_times!(id)
    render(conn, "show.json", working_times: working_times)
  end

  def update(conn, %{"id" => id, "working_times" => working_times_params}) do
    working_times = TimeManager.get_working_times!(id)

    with {:ok, %WorkingTimes{} = working_times} <- TimeManager.update_working_times(working_times, working_times_params) do
      render(conn, "show.json", working_times: working_times)
    end
  end

  def delete(conn, %{"id" => id}) do
    working_times = TimeManager.get_working_times!(id)

    with {:ok, %WorkingTimes{}} <- TimeManager.delete_working_times(working_times) do
      send_resp(conn, :no_content, "")
    end
  end
end
