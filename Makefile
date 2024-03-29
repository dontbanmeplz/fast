TARGET = fastPathSign
CC = clang

CFLAGS = -framework Foundation -framework CoreServices -framework Security -fobjc-arc $(shell pkg-config --cflags libcrypto) -I../../ChOma/src
LDFLAGS = $(shell pkg-config --libs libcrypto)

$(TARGET): $(wildcard src/*.m src/*.c ../../ChOma/src/*.c)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	@rm -f $(TARGET)
