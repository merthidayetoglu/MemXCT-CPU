# ----- Make Macros -----

CXX = mpicxx
CXXFLAGS = -std=c++11 -qreport -qsmp=omp -qlistfmt=html
OPTFLAGS = -O3 -qarch=pwr9 -qtune=pwr9 -qstrict -qsimd=auto

LD_FLAGS = -qsmp=omp

TARGETS = memxct
OBJECTS = main.o raytrace.o kernels.o

# ----- Make Rules -----

all:	$(TARGETS)

%.o: %.cpp 
	${CXX} ${CXXFLAGS} ${OPTFLAGS} $^ -c -o $@

memxct: $(OBJECTS)
	$(CXX) -o $@ $(OBJECTS) $(LD_FLAGS)

clean:
	rm -f $(TARGETS) *.o *.o.* *.txt *.bin core *.html *.xml
