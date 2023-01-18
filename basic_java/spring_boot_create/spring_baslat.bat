@echo off

@rem link: https://docs.spring.io/spring-boot/docs/current/reference/html/cli.html#cli.using-the-cli



@rem -n, --name <String>          Project name; infer application name (artifact-id ile ayni olabilir)

set name=board

@rem -a, --artifact-id <String>   Project coordinates; infer archive name (for example 'firebase-admin')

set artifact-id=board

@rem -g, --group-id <String>      Project coordinates (for example 'org.test ya da com.google.firebase')

set group-id=com.troyatech

@rem --build <String>             Build system to use (for example 'maven' or 'gradle') (default: maven)

set build=maven

@rem -l, --language <String>      Programming language  (for example 'java')

set language=java

@rem -j, --java-version <String>  Language level (for example '1.8')

set java-version=1.7

@rem -p, --packaging <String>     Project packaging (for example 'jar')

set packaging=jar

@rem --target <String>            URL of the service to use (default: https://start.spring.io)

set target=https://start.spring.io

@rem -x, --extract                Extract the project archive. Inferred if a location is specified without an extension


mkdir %artifact-id%
@rem cd %artifact-id%
pushd %artifact-id%


call spring init -n %name% -a %artifact-id% -g %group-id% -build=maven --dependencies=web,data-jpa,devtools,h2,mysql -l %language% -j %java-version% -p %packaging% --target %target% --extract


popd


@rem @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2

@rem copy application.properties


copy /y application.properties board\src\main\resources

@rem open in intellij
pushd %artifact-id%
call idea .
popd


