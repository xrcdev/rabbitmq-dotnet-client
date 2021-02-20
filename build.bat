@ECHO OFF
@REM dotnet restore RabbitMQDotNetClient.sln
dotnet run -p .\projects\client\Apigen\Apigen.csproj --apiName:AMQP_0_9_1 .\docs\specs\amqp0-9-1.stripped.xml .\gensrc\autogenerated-api-0-9-1.cs
msbuild.\projects\client\RabbitMQ.Client
dotnet build .\projects\client\Unit
