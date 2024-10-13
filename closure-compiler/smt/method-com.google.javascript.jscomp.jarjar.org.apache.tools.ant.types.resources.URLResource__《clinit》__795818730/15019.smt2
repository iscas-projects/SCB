(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort var1578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var91_getFileUtils/-1544204204 () var91)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var1578_getMagicNumber/-646849366 ((Array Int Int)) Int)
(define-const var3212 var91 var91_getFileUtils/-1544204204) ; Statement: $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>() 
(define-const var1364 var91 var3212) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r0 
(define-const var2045 String "null URL") ; Statement: $r1 = "null URL" 
(assert true)
(define-const var236 (Array Int Int) (getBytes/1068683673 var2045)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>() 
(define-const var772 Int (var1578_getMagicNumber/-646849366 var236)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r2) 
(define-const var3380 Int var772) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: int NULL_URL> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var91_getFileUtils/-1544204204=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils), getBytes/1068683673=([java.lang.String], byte[]), var1578_getMagicNumber/-646849366=([byte[]], int)}
; {var91=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var3212=$r0, var1364=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>, var2045=$r1, var236=$r2, var1578=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var772=$i0, var3380=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: int NULL_URL>}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var91, $r0=var3212, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>=var1364, $r1=var2045, $r2=var236, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1578, $i0=var772, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: int NULL_URL>=var3380}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils getFileUtils()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> = $r0;	$r1 = "null URL";	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>();	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r2);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: int NULL_URL> = $i0;	return
;block_num 1