FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.1
# FROM ccr.ccs.tencentyun.com/dotnetimages/aspnet:3.1.1
# RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
#     echo "deb http://mirrors.163.com/debian/ buster main non-free contrib" >/etc/apt/sources.list && \
#     echo "deb http://mirrors.163.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list && \
#     echo "deb http://mirrors.163.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list && \
#     echo "deb-src http://mirrors.163.com/debian/ buster main non-free contrib" >>/etc/apt/sources.list && \
#     echo "deb-src http://mirrors.163.com/debian/ buster-updates main non-free contrib" >>/etc/apt/sources.list && \
#     echo "deb-src http://mirrors.163.com/debian/ buster-backports main non-free contrib" >>/etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libc6-dev \
    libgdiplus \
    libx11-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*