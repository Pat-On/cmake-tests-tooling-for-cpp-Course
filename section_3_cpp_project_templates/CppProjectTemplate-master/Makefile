CONAN_FLAGS = --output-folder=. --build missing -s compiler.cppstd=17

all: prepare

install_min:
	sudo apt-get install gcc g++ cmake make doxygen

# gcovr - is creating intermediate represenatiuon of debugger information - lcov parse it to html files

install_tests: install_min
	sudo apt-get install gcovr lcov

install: install_min install_tests
	sudo apt-get install git llvm pkg-config curl zip unzip tar python3-dev clang-format clang-tidy

install_pip:
	pip install jinja2 Pygments cmake-format pre-commit

install_doc: install_min
	sudo apt-get install doxygen
	pip install jinja2 Pygments

setup:
	pip install --user -U conan

prepare:
	rm -rf build
	mkdir build

conan_d:
	rm -rf build
	mkdir build
	cd build && conan install .. -s build_type=Debug $(CONAN_FLAGS)

conan_r:
	rm -rf build
	mkdir build
	cd build && conan install .. -s build_type=Release $(CONAN_FLAGS)

# prebuild in conan - most of the libraries that are in conan baase that are in release based
# they are already in binary format so you do not have to build them on our system
# Binary Packages
