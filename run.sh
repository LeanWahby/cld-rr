 #!/bin/sh

if [ "${NODE_ENV}" = "staging" ]; then
	echo "Running Staging";
	npm run start:staging;
fi

if [ "${NODE_ENV}" = "production" ]; then
	echo "Running production";
	npm run start:production;
fi
