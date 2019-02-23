FROM microsoft/dotnet:2.2.2-aspnetcore-runtime
RUN apt-get update -y --no-install-recommends \
    && apt-get install -y libgdiplus \
    && apt-get clean \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*