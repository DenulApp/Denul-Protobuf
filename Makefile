CC=/usr/bin/protoc
JPATH=compiled/java/
PYPATH=compiled/python/
PROTOFILES=c2s.proto metaMessage.proto
INPATH=.

all : java python

java : 
	$(CC) -I=$(INPATH) --java_out=$(JPATH) $(PROTOFILES)

python :
	$(CC) -I=$(INPATH) --python_out=$(PYPATH) $(PROTOFILES)
