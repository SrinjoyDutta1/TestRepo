# Variables
CXX = g++           # The C++ compiler to use
CXXFLAGS = -Wall -std=c++11  # Compiler flags: enable all warnings, use C++11 standard
TARGET = tic_tac_toe_game    # The name of the output binary
SRC = main.cpp board.cpp     # The source files
OBJ = $(SRC:.cpp=.o)         # Object files generated from the source files

# Rule to build the final binary
$(TARGET): $(OBJ)
	$(CXX) -o $(TARGET) $(OBJ)

# Rule to compile each .cpp file into an object (.o) file
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to clean up the build (remove object files and the binary)
clean:
	rm -f $(OBJ) $(TARGET)

# Optional rule to run the compiled binary
run: $(TARGET)
	./$(TARGET)

