(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3252 0)
(declare-sort var784 0)
(declare-sort var1056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var3252_getMagicNumber/-646849366 ((Array Int Int)) Int)
(declare-fun var784-init () var784)
(declare-fun <init>/-194189802 (var784) void)
(declare-fun cast-from-var784-to-var1056 (var784) var1056)
(define-const var755 String "PropertyResource") ; Statement: $r0 = "PropertyResource" 
(assert true)
(define-const var3002 (Array Int Int) (getBytes/1068683673 var755)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var2601 Int (var3252_getMagicNumber/-646849366 var3002)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1) 
(define-const var1424 Int var2601) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: int PROPERTY_MAGIC> = $i0 
(define-const var1632 var784 var784-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1 
(assert true)
;(assert (<init>/-194189802 var1632)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1: void <init>()>() 

(declare-const var1632!1 var784)
(define-const var2201 var1056 (cast-from-var784-to-var1056 var1632!1)) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: java.io.InputStream UNSET> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), var3252_getMagicNumber/-646849366=([byte[]], int), var784-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1), <init>/-194189802=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1], void), cast-from-var784-to-var1056=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1], java.io.InputStream)}
; {var755=$r0, var3002=$r1, var3252=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2601=$i0, var1424=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: int PROPERTY_MAGIC>, var784=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1, var1632=$r2, var1056=java.io.InputStream, var2201=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: java.io.InputStream UNSET>}
; {$r0=var755, $r1=var3002, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3252, $i0=var2601, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: int PROPERTY_MAGIC>=var1424, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1=var784, $r2=var1632, java.io.InputStream=var1056, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: java.io.InputStream UNSET>=var2201}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts $r0 = "PropertyResource";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: int PROPERTY_MAGIC> = $i0;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource$1: void <init>()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.PropertyResource: java.io.InputStream UNSET> = $r2;	return
;block_num 1