(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3441 0)
(declare-sort var1046 0)
(declare-sort var2946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1046-init () var1046)
(declare-fun <init>/-1681595970 (var1046 String) void)
(declare-fun getAbsolutePath/-802773300 (var1046) String)
(declare-fun getCanonicalPath/2030784441 (var1046) String)
(declare-const null-var3441 var3441)
(declare-const null-var1046 var1046)
(declare-const null-String String)
(declare-const var3026 var3441) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var3026 null-var3441)))
(declare-const var1901 var1046) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1901 null-var1046)))
(declare-const var3951 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3951 null-String)))
 ; Statement: if r0 == null goto $r6 = new java.io.File 
(assert (= var1901 null-var1046)) ; Cond: r0 == null 
(define-const var741 var1046 var1046-init) ; Statement: $r6 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var741 var3951)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var741!1 var1046)
(declare-const var3951!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var24 String (getAbsolutePath/-802773300 var741!1)) ; Statement: $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1563 String (getCanonicalPath/2030784441 var741!1)) ; Statement: $r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var1540 Bool (= var24 var1563)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1540 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1906 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1046-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), getCanonicalPath/2030784441=([java.io.File], java.lang.String)}
; {var3441=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var3026=r5, var1046=java.io.File, var1901=r0, var3951=r1, var2946=null_type, var741=$r6, var24=$r3, var1563=$r2, var1540=$z0, var1906=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var3441, r5=var3026, java.io.File=var1046, r0=var1901, r1=var3951, null_type=var2946, $r6=var741, $r3=var24, $r2=var1563, $z0=var1540, $z1=var1906}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r0 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r6 = new java.io.File;	$r6 = new java.io.File;	specialinvoke $r6.<java.io.File: void <init>(java.lang.String)>(r1);	$r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 5