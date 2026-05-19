

###############################################################################
###                                Dev targets                              ###
###############################################################################
build:
	mix dev_setup

start:
	iex -S mix phx.server

precommit:
	mix dev_precommit

prepush:
	mix dev_prepush


###############################################################################
###                                Prod targets                             ###
###############################################################################
prod-build:
	mix prod_build

prod-start:
	MIX_ENV=prod PHX_SERVER=true mix phx.server