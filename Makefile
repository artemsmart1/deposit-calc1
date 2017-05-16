CC   = gcc
CFLAGS   = -Wall -Werror
EXECUTABLE = make
SRC_BIN = bin
SRC_BUILD_DIR = build
SRC_DIR   = src


all: makedir compile tets test-compile

makedir:
	mkdir -p bin build

compile: $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o
	$(CC) $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o -o $(SRC_BIN)/$(EXECUTABLE)

$(SRC_BUILD_DIR)/main.o: $(SRC_DIR)/main.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.c -o $(SRC_BUILD_DIR)/main.o

$(SRC_BUILD_DIR)/deposit.o: $(SRC_DIR)/deposit.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/deposit.c -o $(SRC_BUILD_DIR)/deposit.o
test:mktest test-compile

mktest:
	mkdir -p bin build/test test-compile

test-compile: $(TEST_OBJ_DIR)/main.o $(TEST_OBJ_DIR)/deposit_test.o $(TEST_OBJ_DIR)/validation_test.o $(SRC_BUILD_DIR)/deposit.o
	$(CC) $(TEST_OBJ_DIR)/main.o $(TEST_OBJ_DIR)/deposit_test.o $(TEST_OBJ_DIR)/validation_test.o $(SRC_BUILD_DIR)/deposit.o 

$(TEST_OBJ_DIR)/main.o: $(SRC_TEST_DIR)/main.cpp
	$(CC) $(TEST_FLAGS) -c $(SRC_TEST_DIR)/main.cpp -o $(TEST_OBJ_DIR)/main.o

$(TEST_OBJ_DIR)/deposit_test.o: test/deposit_test.cpp
	$(CC) $(TEST_FLAGS) -c $(SRC_TEST_DIR)/deposit_test.cpp -o $(TEST_OBJ_DIR)/deposit_test.o

$(TEST_OBJ_DIR)/validation_test.o: test/validation_test.cpp
	$(CC) $(TEST_FLAGS) -c $(SRC_TEST_DIR)/validation_test.cpp -o $(TEST_OBJ_DIR)/validation_test.o

 .PHONY : clean
clean:
	rm -rf build/*.o bin/*
