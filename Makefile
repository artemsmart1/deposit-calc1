CC              = gcc
CFLAGS          = -Wall -Werror
TEST_FLAGS      = -I src -I thirdparty -Wall -Werror
EXECUTABLE      = bin/calc
SRC_BUILD_DIR   = build
SRC_DIR         = src
TEST_EXEC       = bin/test
TEST_OBJ_DIR    = build/test

all: makedir compile test

makedir: 
	mkdir -p bin build

compile: $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o
	$(CC) $(SRC_BUILD_DIR)/main.o $(SRC_BUILD_DIR)/deposit.o -o $(EXECUTABLE)

$(SRC_BUILD_DIR)/main.o: $(SRC_DIR)/main.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.c -o $(SRC_BUILD_DIR)/main.o

$(SRC_BUILD_DIR)/deposit.o: $(SRC_DIR)/deposit.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/deposit.c -o $(SRC_BUILD_DIR)/deposit.o


test: mktest test-comp

mktest:
	mkdir -p bin build/test

test-comp: $(TEST_OBJ_DIR)/main.o $(TEST_OBJ_DIR)/deposit-test.o $(TEST_OBJ_DIR)/validation_test.o $(SRC_BUILD_DIR)/deposit.o
	$(CC) $(TEST_OBJ_DIR)/main.o $(TEST_OBJ_DIR)/deposit-test.o $(TEST_OBJ_DIR)/validation_test.o $(SRC_BUILD_DIR)/deposit.o -o $(TEST_EXEC)

$(TEST_OBJ_DIR)/main.o: test/main.c
	$(CC) $(TEST_FLAGS) -c test/main.c -o $(TEST_OBJ_DIR)/main.o

$(TEST_OBJ_DIR)/deposit-test.o: test/deposit-test.c
	$(CC) $(TEST_FLAGS) -c test/deposit-test.c -o $(TEST_OBJ_DIR)/deposit-test.o

$(TEST_OBJ_DIR)/validation_test.o: test/validation_test.c
	$(CC) $(TEST_FLAGS) -c test/validation_test.c -o $(TEST_OBJ_DIR)/validation_test.o
 

.PHONY : clean
clean:
	rm -rf build/ bin/
