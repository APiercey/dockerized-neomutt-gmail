# Dockerized Neomutt Gmail
Dockerized Neomutt + OfflineIMAP + Notmuch + Mailcap + Gmail configurable with runtime env variables

No one should have to struggle to read their email!

## Features 🚀
- OAuth 2 + other settings are configurable at container run time
- Offline sync via OfflineIMAP
- Email viewing/editing/sending via Neomutt
- HTML + Image viewing with external tools hooked up by Mailcap
- Email search + Indexing via Notmuch
- One command boot-up
- Dracula default theme

## How-to-Use
Clone the repo:
```
git clone https://github.com/APiercey/dockerized-neomutt-gmail.git --depth 1
cd dockerized-neomutt-gmail/
```
Create a OAUTH Client ID and secret here: https://console.cloud.google.com/apis/credentials?

Copy the .envrc to alter
```
cp .envrc.sample .envrc
```
Alter the env variables to match your account and needs. 

Run `make` and enjoy!

## TODO
- [ ] Switch from Ubuntu base image to Alpine
- [ ] Allow a configurable theme
- [ ] Allow a customizable `.muttrc` file

## Contributing + Issues
Contributions welcome, if people would like. If someone has a request, please open an issue.
