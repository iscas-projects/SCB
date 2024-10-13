(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var612 0)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var612_getFileUtils/-1544204204 () var612)
(declare-fun var3588-init () var3588)
(declare-fun <init>/-898088389 (var3588) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var3264 var612 var612_getFileUtils/-1544204204) ; Statement: $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>() 
(define-const var1757 var612 var3264) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r0 
(define-const var3127 var3588 var3588-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter 
(assert true)
;(assert (<init>/-898088389 var3127)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: void <init>()>() 

(declare-const var3127!1 var3588)
(define-const var2812 var3588 var3127!1) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter DOM_WRITER> = $r1 
(define-const var2476 String "File ") ; Statement: $r2 = "File " 
(assert true)
(define-const var2970 Int (length/-134980193 var2476)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2500 Int var2970) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: int FILE_STRING_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var612_getFileUtils/-1544204204=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils), var3588-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter), <init>/-898088389=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter], void), length/-134980193=([java.lang.String], int)}
; {var612=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var3264=$r0, var1757=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>, var3588=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, var3127=$r1, var2812=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter DOM_WRITER>, var2476=$r2, var2970=$i0, var2500=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: int FILE_STRING_LENGTH>}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var612, $r0=var3264, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>=var1757, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter=var3588, $r1=var3127, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter DOM_WRITER>=var2812, $r2=var2476, $i0=var2970, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: int FILE_STRING_LENGTH>=var2500}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r0;	$r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: void <init>()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter DOM_WRITER> = $r1;	$r2 = "File ";	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: int FILE_STRING_LENGTH> = $i0;	return
;block_num 1