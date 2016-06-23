# ngless brew build/install scripts


If you use [brew](http://brew.sh/), you easily build and install
[ngless](http://ngless.readthedocs.io/) using this repository.

First install the two required dependencies:

    brew install homebrew/science/bwa
    brew install homebrew/science/samtools


Now install ngless:

    brew tap luispedro/ngless
    brew install ngless

This should download the brew formula and build ngless.

If you prefer, you can also first clone the repository:

    git clone https://github.com/luispedro/homebrew-ngless
    cd homebrew-ngless
    # inspect the ngless.rb file if you wish
    brew install ngless.rb
