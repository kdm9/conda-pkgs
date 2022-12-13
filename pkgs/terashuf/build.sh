$GXX -o terashuf -std=c++11 -Wall -Dhome -O3  terashuf.cc
mkdir -p $PREFIX/bin/
cp terashuf $PREFIX/bin/
