# db-deploy


mvn install:install-file -Dfile=ojdbc6.jar -DgroupId=com.oracle  -DartifactId=ojdbc6 -Dversion=11.2.0.4 -Dpackaging=jar -DgeneratePom=true


Issues:
https://github.com/flyway/flyway/issues/782

Reference:
http://www.dennis-stepp.com/post/flywaygradle/


sample configurations:
https://flywaydb.org/documentation/gradle/undo