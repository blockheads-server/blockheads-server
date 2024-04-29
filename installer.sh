#!/usr/bin/env bash

curl -sL https://web.archive.org/web/20240309015235if_/https://majicdave.com/share/blockheads_server171.tar.gz | tar xvz

patchelf --replace-needed libgnustep-base.so.1.24 libgnustep-base.so.1.28 blockheads_server171
patchelf --replace-needed libobjc.so.4.6 libobjc.so.4 blockheads_server171
patchelf --replace-needed libgnutls.so.26 libgnutls.so.30 blockheads_server171
patchelf --replace-needed libgcrypt.so.11 libgcrypt.so.20 blockheads_server171
patchelf --replace-needed libffi.so.6 libffi.so.8 blockheads_server171
patchelf --replace-needed libicui18n.so.48 libicui18n.so.70 blockheads_server171
patchelf --replace-needed libicuuc.so.48 libicuuc.so.70 blockheads_server171
patchelf --replace-needed libicudata.so.48 libicudata.so.70 blockheads_server171
patchelf --replace-needed libdispatch.so libdispatch.so.0 blockheads_server171
