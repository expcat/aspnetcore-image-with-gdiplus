FROM mcr.microsoft.com/dotnet/core/aspnet:2.2.3
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libgdiplus \
    && apt-get clean \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*