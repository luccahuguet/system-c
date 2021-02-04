# SystemC

- Install [Docker](https://docs.docker.com/get-docker/)
- `sudo docker build -t systemc .`
- `sudo docker images` -- verify that there is an image named `systemc`
- `sudo docker run -it systemc /bin/bash` -- will start an interactive session
- Try to compile and run the example:
- `cd systemc-helloworld`
- `chmod +x compile.sh && ./compile.sh`
- `./main.sh`

Verify that the program prints "Hello world!".
