shards:
	shards install

install: shards

build:
	crystal build -o twilio-cr ./src/twilio.cr

console:
	icr -r ./src/twilio.cr