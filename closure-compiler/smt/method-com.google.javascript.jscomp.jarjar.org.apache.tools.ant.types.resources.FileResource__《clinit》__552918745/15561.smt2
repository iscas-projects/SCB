(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1474 0)
(declare-sort var1231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1474_getFileUtils/-1544204204 () var1474)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var1231_getMagicNumber/-646849366 ((Array Int Int)) Int)
(define-const var801 var1474 var1474_getFileUtils/-1544204204) ; Statement: $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>() 
(define-const var1425 var1474 var801) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r0 
(define-const var1600 String "null file") ; Statement: $r1 = "null file" 
(assert true)
(define-const var794 (Array Int Int) (getBytes/1068683673 var1600)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>() 
(define-const var118 Int (var1231_getMagicNumber/-646849366 var794)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r2) 
(define-const var1722 Int var118) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: int NULL_FILE> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1474_getFileUtils/-1544204204=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils), getBytes/1068683673=([java.lang.String], byte[]), var1231_getMagicNumber/-646849366=([byte[]], int)}
; {var1474=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var801=$r0, var1425=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>, var1600=$r1, var794=$r2, var1231=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var118=$i0, var1722=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: int NULL_FILE>}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var1474, $r0=var801, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>=var1425, $r1=var1600, $r2=var794, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1231, $i0=var118, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: int NULL_FILE>=var1722}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r0;	$r1 = "null file";	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>();	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r2);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileResource: int NULL_FILE> = $i0;	return
;block_num 1