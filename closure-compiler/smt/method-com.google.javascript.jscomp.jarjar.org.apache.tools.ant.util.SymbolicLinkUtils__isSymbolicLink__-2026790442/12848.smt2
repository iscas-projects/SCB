(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var883 0)
(declare-sort var85 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var883-init () var883)
(declare-fun getCanonicalPath/2030784441 (var883) String)
(declare-fun <init>/1056156189 (var883 String String) void)
(declare-fun getAbsolutePath/-802773300 (var883) String)
(declare-const null-var2331 var2331)
(declare-const null-var883 var883)
(declare-const null-String String)
(declare-const var2513 var2331) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var2513 null-var2331)))
(declare-const var934 var883) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var934 null-var883)))
(declare-const var1986 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1986 null-String)))
 ; Statement: if r0 == null goto $r6 = new java.io.File 
(assert (not (= var934 null-var883))) ; Negate: Cond: r0 == null  
(define-const var2599 var883 var883-init) ; Statement: $r6 = new java.io.File 
(assert true)
(define-const var3797 String (getCanonicalPath/2030784441 var934)) ; Statement: $r4 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
;(assert (<init>/1056156189 var2599 var3797 var1986)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r4, r1) 

(declare-const var2599!1 var883)
(declare-const var3797!1 String)
(declare-const var1986!1 String)
 ; Statement: goto [?= $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3551 String (getAbsolutePath/-802773300 var2599!1)) ; Statement: $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var738 String (getCanonicalPath/2030784441 var2599!1)) ; Statement: $r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var2143 Bool (= var3551 var738)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2143 1 0) 0))) ; Cond: $z0 != 0 
(define-const var225 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var883-init=([], java.io.File), getCanonicalPath/2030784441=([java.io.File], java.lang.String), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var2331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var2513=r5, var883=java.io.File, var934=r0, var1986=r1, var85=null_type, var2599=$r6, var3797=$r4, var3551=$r3, var738=$r2, var2143=$z0, var225=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var2331, r5=var2513, java.io.File=var883, r0=var934, r1=var1986, null_type=var85, $r6=var2599, $r4=var3797, $r3=var3551, $r2=var738, $z0=var2143, $z1=var225}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r0 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r6 = new java.io.File;	$r6 = new java.io.File;	$r4 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>();	specialinvoke $r6.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r4, r1);	goto [?= $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>()];	$r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 5