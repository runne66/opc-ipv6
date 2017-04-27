TARGET = server
OBJECT = server.o open62541.o
CFLAGS = -g -std=c99 -lrt -rdynamic 
$(TARGET):$(OBJECT)
	gcc -o $@ $^ $(CFLAGS) 
$(OBJECT):%.o:%.c
	gcc -c $(CFLAGS) $< -o $@
	 
clean:
	rm -f $(TARGET) $(OBJECT)

