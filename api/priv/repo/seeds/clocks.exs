Api.Repo.insert!(%Api.TimeManager.Clock {
  time: ~N[2022-10-26 00:00:00],
  status: true,
  user: 1
})

Api.Repo.insert!(%Api.TimeManager.Clock {
  time: ~N[2022-10-27 00:00:00],
  status: true,
  user: 2
})

Api.Repo.insert!(%Api.TimeManager.Clock{
  time: ~N[2022-10-28 00:00:00],
  status: true,
  user: 3
})
