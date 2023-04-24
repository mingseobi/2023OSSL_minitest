CC = gcc
CFLAGS = -Wall
TARGET = market
OBJECTS = manager.o product.o market.o

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

manager.o: manager.h manager.c
	$(CC) $(CFLAGS) -c manager.c

product.o: product.h product.c
	$(CC) $(CFLAGS) -c product.c

market.o: market.c
	$(CC) $(CFLAGS) -c market.c

clean:
	rm -f $(TARGET) $(OBJECTS)

