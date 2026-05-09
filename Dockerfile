FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base

WORKDIR /app
EXPOSE /8080
ENV ASPNETCORE_URLS=http://+:8080

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /src
COPY . . 
RUN dotnet restore
RUN dotnet publish -c Release -o /app/out

FROM basse AS final
WORKDIR /app
COPY --from=build /app/out
ENTRYPOINT ["dotnet", "VillarLibraryNowAPI.dll"]S