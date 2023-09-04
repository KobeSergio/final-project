# This one is provided for you - a multi-build example
FROM mcr.microsoft.com/dotnet/sdk:6.0.202-alpine3.15 as builder

WORKDIR /Worker

COPY src/Worker.csproj .

RUN dotnet restore

COPY src/* .

RUN dotnet publish -c Release -o /out Worker.csproj

# app image
FROM mcr.microsoft.com/dotnet/runtime:6.0.4-alpine3.15

WORKDIR /app

COPY --from=builder /out .

ENTRYPOINT ["dotnet", "Worker.dll"]
