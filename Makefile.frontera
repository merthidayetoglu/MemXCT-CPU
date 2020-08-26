# ----- Make Macros -----

CXX = mpicxx
CXXFLAGS = -std=c++11 -qopenmp
OPTFLAGS = -O3 -xhost 

LD_FLAGS = -qopenmp

TARGETS = memxct
OBJECTS = src/main.o src/raytrace.o src/kernels.o

# ----- Make Rules -----

all:	$(TARGETS)

%.o: %.cpp vars.h
	${CXX} ${CXXFLAGS} ${OPTFLAGS} $^ -c -o $@

memxct: $(OBJECTS)
	$(CXX) -o $@ $(OBJECTS) $(LD_FLAGS)

clean:
	rm -f $(TARGETS) src/*.o src/*.o.* *.txt *.bin core
