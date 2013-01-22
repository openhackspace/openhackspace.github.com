
JEKYLL=jekyll --server --auto &> _LOG &

restart:
	killall ruby; \
	sleep 1; \
	$(JEKYLL)

start:
	$(JEKYLL)
stop:
	killall ruby

post:
	touch  "_posts/`date +"%Y-%m-%d-index.md"`"