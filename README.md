# obsidian-livesync-couchdb-docker
Starting point for self-hosted obsidian livesync with docker + couchdb with near zero configuration

Made following this guide on [Reddit](https://www.reddit.com/r/selfhosted/comments/1eo7knj/guide_obsidian_with_free_selfhosted_instant_sync/)

Uses the obsidian-livesync plugin by vorotamoroz. Read the reddit guide to configure the obsidian part.

## Prerequisites & Usage

- Docker must be installed.

- Modify the `.env` file using your own credentials.

- Run `make upd` (alternatively `make up` if you want it to keep attached) to run Couchdb. Data and config volumes will be mounted on `./volumes`. You can change it in `docker-compose.yml`.

- Run `make setup` to create default databases and obsidian db with the name specified in `.env`. Use this name in obsidian-livesync plugin.

- If you want more databases (recommeded if you have multiple vaults) run `DB=otherdb make create-db`

