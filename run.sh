#!/bin/bash

JAVA_OPTS=(
	 -Xms1g
	 -Xmx1g
	 -Djdk.attach.allowAttachSelf
 )
GCEASY_OPTS_8=(
	-XX:+PrintGCDetails
	-XX:+PrintGCTimeStamps
	-Xloggc:./gc.log
)
GCEASY_OPTS_17=(
	-Xloggc:./gc.log
	-XX:+PrintGCCause
	-XX:+PrintTenuringDistribution
	-XX:+PrintReferenceGC
	-XX:+PrintAdaptiveSizePolicy
)
G1GC_OPT=(
	-XX:+UseG1GC
	-XX:+ExplicitGCInvokesConcurrent
	-XX:+ParallelRefProcEnabled
	-XX:+UseStringDeduplication
	-XX:+UnlockExperimentalVMOptions
	-XX:G1NewSizePercent=20
	-XX:+UnlockDiagnosticVMOptions
	-XX:G1SummarizeRSetStatsPeriod=1
)

echo java  -jar target/benchmarks.jar -rff results.csv -rf csv -jvmArgs \"${JAVA_OPTS[@]} ${GCEASY_OPTS_17[@]} ${G1GC_OPT[@]}\"

