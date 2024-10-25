# Define the compiler
CXX = g++

# Define the target executable
TARGET = main

# Define the source files
SRCS = main.cpp

# Define the object files
OBJS = $(SRCS:.cpp=.o)

# Define the compilation flags
CXXFLAGS = -Wall -g -d

# Default target
all: $(TARGET)

# Rule to link the object files to create the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS) 

# Rule to compile the source files into object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@


# Clean up the build files
clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: all clean
