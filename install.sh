#!/bin/sh


#currdir=$(cd $(dirname ${BASH_SOURCE[0]}); pwd )
currdir=$(cd `dirname $0`; pwd)

cd $currdir

for _Version in `ls com/ctrip/framework/framework-bom/`; do
	mvn install:install-file -Dfile=com/ctrip/framework/framework-bom/$_Version/framework-bom-$_Version.pom -DpomFile=com/ctrip/framework/framework-bom/$_Version/framework-bom-$_Version.pom -Dpackaging=pom
done



for _Version in `ls com/ctrip/framework/framework-foundation/`; do
	mvn install:install-file -Dfile=com/ctrip/framework/framework-foundation/$_Version/framework-foundation-$_Version.jar -DpomFile=com/ctrip/framework/framework-foundation/$_Version/framework-foundation-$_Version.pom
done

#1.5.6无法安装，报错
for _Version in `ls com/ctrip/framework/framework-parent/ `; do
	mvn install:install-file -Dfile=com/ctrip/framework/framework-parent/$_Version/framework-parent-$_Version.pom -DpomFile=com/ctrip/framework/framework-parent/$_Version/framework-parent-$_Version.pom -Dpackaging=pom
done


for _Version in `ls com/dianping/cat/cat-client/`; do
	mvn install:install-file -Dfile=com/dianping/cat/cat-client/$_Version/cat-client-$_Version.jar -DpomFile=com/dianping/cat/cat-client/$_Version/cat-client-$_Version.pom
done


for _Version in `ls com/dianping/cat/parent/`; do
	mvn install:install-file -Dfile=com/dianping/cat/parent/$_Version/parent-$_Version.pom -DpomFile=com/dianping/cat/parent/$_Version/parent-$_Version.pom -Dpackaging=pom
done



for _Version in `ls org/codehaus/plexus/plexus-container-default/`; do
	mvn install:install-file -Dfile=org/codehaus/plexus/plexus-container-default/$_Version/plexus-container-default-$_Version.jar -DpomFile=org/codehaus/plexus/plexus-container-default/$_Version/plexus-container-default-$_Version.pom
done



for _Version in `ls org/unidal/framework/dal-jdbc/`; do
	mvn install:install-file -Dfile=org/unidal/framework/dal-jdbc/$_Version/dal-jdbc-$_Version.jar -DpomFile=org/unidal/framework/dal-jdbc/$_Version/dal-jdbc-$_Version.pom
done



for _Version in `ls org/unidal/framework/foundation-service`; do
	mvn install:install-file -Dfile=org/unidal/framework/foundation-service/$_Version/foundation-service-$_Version.jar -DpomFile=org/unidal/framework/foundation-service/$_Version/foundation-service-$_Version.pom
done



for _Version in `ls org/unidal/framework/parent/`; do
	mvn install:install-file -Dfile=org/unidal/framework/parent/$_Version/parent-$_Version.pom -DpomFile=org/unidal/framework/parent/$_Version/parent-$_Version.pom -Dpackaging=pom
done

for _Version in `ls org/unidal/maven/plugins/codegen`; do
	mvn install:install-file -Dfile=org/unidal/maven/plugins/codegen/$_Version/codegen-$_Version.jar -DpomFile=org/unidal/maven/plugins/codegen/$_Version/codegen-$_Version.pom
done


for _Version in `ls org/unidal/maven/plugins/codegen-maven-plugin`; do
	mvn install:install-file -Dfile=org/unidal/maven/plugins/codegen-maven-plugin/$_Version/codegen-maven-plugin-$_Version.jar -DpomFile=org/unidal/maven/plugins/codegen-maven-plugin/$_Version/codegen-maven-plugin-$_Version.pom
done



for _Version in `ls org/unidal/maven/plugins/common/`; do
	mvn install:install-file -Dfile=org/unidal/maven/plugins/common/$_Version/common-$_Version.jar -DpomFile=org/unidal/maven/plugins/common/$_Version/common-$_Version.pom
done



for _Version in `ls org/unidal/maven/plugins/default/`; do
	mvn install:install-file -Dfile=org/unidal/maven/plugins/default/$_Version/default-$_Version.pom -DpomFile=org/unidal/maven/plugins/default/$_Version/default-$_Version.pom -Dpackaging=pom
done


for _Version in `ls org/unidal/maven/plugins/plexus-maven-plugin`; do
	mvn install:install-file -Dfile=org/unidal/maven/plugins/plexus-maven-plugin/$_Version/plexus-maven-plugin-$_Version.jar -DpomFile=org/unidal/maven/plugins/plexus-maven-plugin/$_Version/plexus-maven-plugin-$_Version.pom
done

for _Version in `ls org/unidal/framework/test-framework`; do
	mvn install:install-file -Dfile=org/unidal/framework/test-framework/$_Version/test-framework-$_Version.jar -DpomFile=org/unidal/framework/test-framework/$_Version/test-framework-$_Version.pom
done

