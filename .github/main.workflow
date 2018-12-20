workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Docker"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
  runs = "- rm -rf public   - hugo --config config.production.toml   - firebase deploy --token ${FIREBASE_TOKEN}"
}
