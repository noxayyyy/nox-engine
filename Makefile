CC=clang++
LIB=libnox_engine.a

SRC_DIRS=./src
INC_DIRS=./include
OBJ_DIRS=./obj

DEP_FLAGS=-MP -MMD
CFLAGS=-std=c++17 -Wall -Wextra -Wpedantic -g $(foreach D,$(INC_DIRS),-I$(D)) $(DEP_FLAGS)

CFILES=$(wildcard $(SRC_DIRS)/*.cpp)
OBJECTS=$(patsubst %.cpp, $(OBJ_DIRS)/%.o, $(CFILES))
DEPFILES=$(OBJECTS:.o=.d)

.PHONY: all clean

all: $(LIB)

$(LIB): $(OBJECTS)
	ar rcs $@ $^

$(OBJ_DIRS)/%.o: %.cpp
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(LIB) $(OBJ_DIRS) $(DEPFILES)

-include $(DEPFILES)
