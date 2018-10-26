mkdir build
cd build
cmake -GNinja -DJP2KFLAG=ON -Dpybindings=OFF -DCMAKE_INSTALL_PREFIX=$PREFIX -Disis3Data=/usgs/cpkgs/isis3/data -Disis3TestData=/usgs/cpkgs/isis3/testData ../isis
/usgs/cpkgs/isis3/isis3mgr_scripts/createReleaseNotesXML -d 2018-02-10 -o ../isis/src/docsys/documents/ReleaseNotes/ReleaseNotesList.xml --current-branch=dev ../isis/
ninja docs
ninja install