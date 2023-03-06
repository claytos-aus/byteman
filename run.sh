function byteman() {
  export BYTEMAN_HOME=/Users/claytonphillips/Downloads/byteman-download-4.0.19
  java \
   -javaagent:${BYTEMAN_HOME}/lib/byteman.jar=script:exception.btm,boot:${BYTEMAN_HOME}/lib/byteman.jar \
  -cp . Sample $*
}

function btrace() {
  export BTR_HOME=/Users/claytonphillips/Downloads/btrace-v2
  java \
  -javaagent:$BTR_HOME/libs/btrace-agent.jar=script=$BTR_HOME/samples/Profiling2.class,debug=false,stdout=true \
  -cp . Sample $*
}

byteman $*
