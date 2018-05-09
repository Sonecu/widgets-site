# Ctrl-C kills both commands
trap killgroup SIGINT
killgroup(){
  kill 0
}

# watch Hugo files during development
hugo server -v -D --watch && fg
