# logstash-all-plugins-on-docker

logstash version: 2.3.1 All plugins

## Default logstash.conf:

	input {
	  websocket {
	    codec => "json"
	    url => "ws://stream.meetup.com/2/rsvps"
	  }
	}
	
	output {
	  stdout { codec => rubydebug }
	}

>Data source: meetup.com RSVP stream  
>detail: [here](http://www.meetup.com/meetup_api/docs/stream/2/rsvps/#websockets)

## Deploy:

docker run -it -v /path/to/logstash.conf:/logstash-conf/logstash.conf logstash:2.3.1
