# pdf-unlock-docker

[![](https://images.microbadger.com/badges/image/rogeriopradoj/pdf-unlock.svg)](https://microbadger.com/images/rogeriopradoj/pdf-unlock "Get your own image badge on microbadger.com"

rogeriopradoj/pdf-unlock-docker

Based in micro-tutorial about how to use `pdftk` available on [How-To Geek](http://www.howtogeek.com/197195/how-to-remove-a-password-from-a-pdf-file-in-linux/).

It unlocks a pdf file using the password used to open your file.

**Important**: You must know the password in order to unlock your pdf file.

## How to use

    docker run -v `pwd`:/unlock rogeriopradoj/pdf-unlock \
    YOUR_FILE.pdf YOUR_PASSWORD

Done! Your unlocked pdf file will be available in the same folder, named as YOUR_FILE.unlocked.pdf

*Note*: The program will suffix your provided name with **.unlocked**, e.g.:
* MYFILE.pdf   -> MYFILE.unlocked.pdf
* 123.pdf      -> 123.unlocked.pdf
* filename.pdf -> filename.unlocked.pdf
