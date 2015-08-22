# Static build of PhantomJS using Docker

This Docker image contains a build of [bprodoehl's PhantomJS fork](https://github.com/bprodoehl/phantomjs) with statically built-in dependencies. 

## Quickstart

With Docker installed, run the following to get the compiled executable in your local directory:

    docker run -v $PWD:/output mazzolino/docker-phantomjs-static

## Building

You can build your own image locally using `build.sh`.

## Testing

There is a script which tests the images built using mainline distribution images from the Docker hub.

After building the image as shown above, run `test.sh` to see the output.

The current results are:

```bash
$ sudo ./test.sh
--- ubuntu:15.04 ---
2.0.0
--- ubuntu:14.04 ---
2.0.0
--- ubuntu:12.04 ---
2.0.0
--- debian:jessie ---
2.0.0
--- debian:wheezy ---
phantomjs: /lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.15' not found (required by phantomjs)
phantomjs: /lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.14' not found (required by phantomjs)
--- centos:7 ---
2.0.0
--- centos:6.6 ---
phantomjs: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by phantomjs)
phantomjs: /lib64/libc.so.6: version `GLIBC_2.15' not found (required by phantomjs)
phantomjs: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by phantomjs)
--- centos:6 ---
phantomjs: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by phantomjs)
phantomjs: /lib64/libc.so.6: version `GLIBC_2.15' not found (required by phantomjs)
phantomjs: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by phantomjs)
--- fedora:22 ---
2.0.0
--- fedora:21 ---
2.0.0
--- fedora:20 ---
2.0.0
