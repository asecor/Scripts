#copy file to folder
copy-item c:\test.txt -destination c:\testfolder

#copy folder and all subdirectories and files
copy-item c:\testfolder -destination c:\newfolder -recurse

#show files being moved or copied
-verbose