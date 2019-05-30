.build_offline_gmail: 
	docker build -t offlineimap_gmail \
	        	   --file "$(PWD)/Dockerfile.offlineimap" .

.run_offline_gmail: .build_offline_gmail
	docker run --env-file .envrc -d \
			       --volume="$(PWD)/mail:/root/Maildir" offlineimap_gmail

.build_neomutt:
	docker build -t localneomutt \
	             --file "$(PWD)/Dockerfile.neomutt" .

.run_neomutt: .build_neomutt
	docker run --env-file .envrc -it \
						 --volume="$(PWD)/mail:/root/Maildir" localneomutt

.mail-up: 
	docker-compose up -d

default: .mail-up
	docker attach neomutt
