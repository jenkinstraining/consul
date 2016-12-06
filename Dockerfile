FROM gliderlabs/consul:6
ADD ./config /config/
ADD ./agent /agent
ADD ./bootstrap /bootstrap
ADD ./data /data
ADD ./server /server
ADD ./web /web

ENTRYPOINT ["/bin/consul", "agent", "-server", "-config-dir=/config"]
