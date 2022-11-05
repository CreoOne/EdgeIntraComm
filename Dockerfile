FROM --platform=$BUILDPLATFORM node:19-alpine AS as2wasm

WORKDIR /usr

# packaging chapter
COPY ./package.json .
RUN npm install

# building chapter
COPY ./asconfig.json ./asconfig.json
COPY ./assembly ./assembly
RUN npm run asbuild:release

FROM scratch

COPY --link --from=as2wasm /usr/build/release.wasm /release.wasm

ENTRYPOINT [ "release.wasm" ]