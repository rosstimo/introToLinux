
# 9. File Compression and Archiving

- `tar`: Archive files.
  ```bash
  tar -cvf archive.tar /path/to/directory      # create a tarball
  tar -xvf archive.tar                        # extract a tarball
  tar -czvf archive.tar.gz /path/to/directory # compress a directory
  tar -xzvf archive.tar.gz                    # decompress a tarball
  ```
- `zip` / `unzip`: Zip files.
  ```bash
  zip archive.zip filename.txt     # compress a file
  unzip archive.zip                # decompress a zip file
  ```
