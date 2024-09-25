CC=g++
CFLAGS=-lcrypto -lssl
CMDLINE_CMD_1=chmod 755

SRC_DIR=src
BUILD_DIR=build

SRCS_1=$(wildcard $(SRC_DIR)/*.cpp)
OBJS_1=$(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%,$(SRCS_1))

all: $(OBJS_1)

$(BUILD_DIR)/%: $(SRC_DIR)/%.cpp
	$(CC) -c $< -o $@ $(CFLAGS)
	$(CMDLINE_CMD_1) $@

clean:
	rm -rf $(BUILD_DIR)/*.
