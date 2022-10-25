Api.Repo.insert!(%Api.TimeManager.Clock {
  time: ~N[2022-10-26 00:00:00],
  status: true,
  userID: 5
})

Api.Repo.insert!(%Api.TimeManager.Clock {
  time: ~N[2022-10-27 00:00:00],
  status: true,
  userID: 6
})

Api.Repo.insert!(%Api.TimeManager.Clock{
  time: ~N[2022-10-28 00:00:00],
  status: true,
  userID: 7
})
