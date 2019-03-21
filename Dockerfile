FROM microsoft/dotnet:2.2.3-aspnetcore-runtime
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libgdiplus \
    && apt-get clean \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*