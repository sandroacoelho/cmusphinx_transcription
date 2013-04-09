CMUSphinx Transcription
=======================

I've summarized here the great article about transcription process using the CMUSphinx by Andrew Brobinson[1]. Enjoy it!

On your linux terminal (Tested in Ubuntu 12.10 and Debian 6.0), type the following commands

1 - sudo apt-get install sphinx*

2 - sudo apt-get libcdio-paranoia-dev

3 - sudo apt-get python-all-dev 

4 - wget http://downloads.sourceforge.net/project/audiotools/audiotools/2.16/audiotools.2.16.tar.gz

5 - tar -xvf audiotools.2.16.tar.gz

6 - cd audiotools.2.16

7 - sudo make install

8 - sudo python setup.py build

9 - sudo python setup.py install


Before to start, you need to download an acoustic model,a language model and a dictionary for your language.
At CMUSphinx site[2], you have available ( ready-to-use) models for English, Russian, Spanish, German and Dutch.

Finally, edit the speech-to-text.py file with your parameters (folders and audio file) and run 

python speech-to-text.py 


[1] - http://andrewbrobinson.com/2012/02/29/speech-recognition-using-sphinx-dont-try-this-at-home/
[2] - http://cmusphinx.sourceforge.net/wiki/download/
