(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2621_getFileUtils/-1544204204 () var2621)
(declare-fun arr-String-init () (Array Int String))
(declare-const null-__Array__Int__String__ (Array Int String))
(define-const var551 String "function loadFrames() {") ; Statement: $r0 = "function loadFrames() {" 
(assert true)
(define-const var295 Int (length/-134980193 var551)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var181 Int var295) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: int LOAD_FRAME_LEN> = $i0 
(define-const var2608 var2621 var2621_getFileUtils/-1544204204) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>() 
(define-const var333 var2621 var2608) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r1 
(define-const var2033 (Array Int String) arr-String-init) ; Statement: $r2 = newarray (java.lang.String)[6] 
(declare-const var2033!1 (Array Int String))
(assert (not (= var2033!1 null-__Array__Int__String__)))
(assert (= (select var2033!1 0) "overview")) ; Statement: $r2[0] = "overview" 
(declare-const var2033!2 (Array Int String))
(assert (not (= var2033!2 null-__Array__Int__String__)))
(assert (= (select var2033!2 1) "packages")) ; Statement: $r2[1] = "packages" 
(declare-const var2033!3 (Array Int String))
(assert (not (= var2033!3 null-__Array__Int__String__)))
(assert (= (select var2033!3 2) "types")) ; Statement: $r2[2] = "types" 
(declare-const var2033!4 (Array Int String))
(assert (not (= var2033!4 null-__Array__Int__String__)))
(assert (= (select var2033!4 3) "constructors")) ; Statement: $r2[3] = "constructors" 
(declare-const var2033!5 (Array Int String))
(assert (not (= var2033!5 null-__Array__Int__String__)))
(assert (= (select var2033!5 4) "methods")) ; Statement: $r2[4] = "methods" 
(declare-const var2033!6 (Array Int String))
(assert (not (= var2033!6 null-__Array__Int__String__)))
(assert (= (select var2033!6 5) "fields")) ; Statement: $r2[5] = "fields" 
(define-const var3609 (Array Int String) var2033!6) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String[] SCOPE_ELEMENTS> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2621_getFileUtils/-1544204204=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils), arr-String-init=([], java.lang.String[])}
; {var551=$r0, var295=$i0, var181=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: int LOAD_FRAME_LEN>, var2621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2608=$r1, var333=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>, var2033=$r2, var3609=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String[] SCOPE_ELEMENTS>}
; {$r0=var551, $i0=var295, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: int LOAD_FRAME_LEN>=var181, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2621, $r1=var2608, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>=var333, $r2=var2033, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String[] SCOPE_ELEMENTS>=var3609}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "function loadFrames() {";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: int LOAD_FRAME_LEN> = $i0;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r1;	$r2 = newarray (java.lang.String)[6];	$r2[0] = "overview";	$r2[1] = "packages";	$r2[2] = "types";	$r2[3] = "constructors";	$r2[4] = "methods";	$r2[5] = "fields";	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String[] SCOPE_ELEMENTS> = $r2;	return
;block_num 1