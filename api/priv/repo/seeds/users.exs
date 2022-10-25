alias Api.Repo
alias Api.TimeManager

Api.Repo.insert!(%Api.TimeManager.User{
  username: "username1",
  email: "email1@email.com"
})

Api.Repo.insert!(%Api.TimeManager.User{
  username: "username2",
  email: "email2@email.com"
})

Api.Repo.insert!(%Api.TimeManager.User{
  username: "username3",
  email: "email3@email.com"
})
