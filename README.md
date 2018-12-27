# Dockerisation of Ubiquiti services
(Windows compatible)

## MongoDB
MongoDB data directory cannot be directory linked to host storage through volume mount. The reason is that MongoDB has some specific requirements on the file system in use (ability to exclusively lock a file, msync, fsync, ...). Windows-docker mount is done with CIFS, which does not fulfil some of those functionalities. 

## Thanks
Big up at [pducharme](https://github.com/pducharme) for the inspiration