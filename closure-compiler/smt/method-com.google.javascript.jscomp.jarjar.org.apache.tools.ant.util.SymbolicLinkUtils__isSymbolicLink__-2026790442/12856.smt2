(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2102 0)
(declare-sort var1446 0)
(declare-sort var2126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1446-init () var1446)
(declare-fun <init>/-1681595970 (var1446 String) void)
(declare-fun getAbsolutePath/-802773300 (var1446) String)
(declare-fun getCanonicalPath/2030784441 (var1446) String)
(declare-const null-var2102 var2102)
(declare-const null-var1446 var1446)
(declare-const null-String String)
(declare-const var433 var2102) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var433 null-var2102)))
(declare-const var3340 var1446) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3340 null-var1446)))
(declare-const var1724 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1724 null-String)))
 ; Statement: if r0 == null goto $r6 = new java.io.File 
(assert (= var3340 null-var1446)) ; Cond: r0 == null 
(define-const var2886 var1446 var1446-init) ; Statement: $r6 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2886 var1724)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2886!1 var1446)
(declare-const var1724!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2108 String (getAbsolutePath/-802773300 var2886!1)) ; Statement: $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var418 String (getCanonicalPath/2030784441 var2886!1)) ; Statement: $r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var814 Bool (= var2108 var418)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var814 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3960 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1446-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), getCanonicalPath/2030784441=([java.io.File], java.lang.String)}
; {var2102=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var433=r5, var1446=java.io.File, var3340=r0, var1724=r1, var2126=null_type, var2886=$r6, var2108=$r3, var418=$r2, var814=$z0, var3960=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var2102, r5=var433, java.io.File=var1446, r0=var3340, r1=var1724, null_type=var2126, $r6=var2886, $r3=var2108, $r2=var418, $z0=var814, $z1=var3960}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r0 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r6 = new java.io.File;	$r6 = new java.io.File;	specialinvoke $r6.<java.io.File: void <init>(java.lang.String)>(r1);	$r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 5