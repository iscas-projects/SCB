(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var2692 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2692-init () var2692)
(declare-fun getCanonicalPath/2030784441 (var2692) String)
(declare-fun <init>/1056156189 (var2692 String String) void)
(declare-fun getAbsolutePath/-802773300 (var2692) String)
(declare-const null-var3686 var3686)
(declare-const null-var2692 var2692)
(declare-const null-String String)
(declare-const var2382 var3686) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var2382 null-var3686)))
(declare-const var1476 var2692) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1476 null-var2692)))
(declare-const var3684 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3684 null-String)))
 ; Statement: if r0 == null goto $r6 = new java.io.File 
(assert (not (= var1476 null-var2692))) ; Negate: Cond: r0 == null  
(define-const var1350 var2692 var2692-init) ; Statement: $r6 = new java.io.File 
(assert true)
(define-const var2579 String (getCanonicalPath/2030784441 var1476)) ; Statement: $r4 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
;(assert (<init>/1056156189 var1350 var2579 var3684)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r4, r1) 

(declare-const var1350!1 var2692)
(declare-const var2579!1 String)
(declare-const var3684!1 String)
 ; Statement: goto [?= $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3969 String (getAbsolutePath/-802773300 var1350!1)) ; Statement: $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1154 String (getCanonicalPath/2030784441 var1350!1)) ; Statement: $r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var3792 Bool (= var3969 var1154)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3792 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3515 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2692-init=([], java.io.File), getCanonicalPath/2030784441=([java.io.File], java.lang.String), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var3686=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var2382=r5, var2692=java.io.File, var1476=r0, var3684=r1, var2370=null_type, var1350=$r6, var2579=$r4, var3969=$r3, var1154=$r2, var3792=$z0, var3515=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var3686, r5=var2382, java.io.File=var2692, r0=var1476, r1=var3684, null_type=var2370, $r6=var1350, $r4=var2579, $r3=var3969, $r2=var1154, $z0=var3792, $z1=var3515}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r0 := @parameter0: java.io.File;	r1 := @parameter1: java.lang.String;	if r0 == null goto $r6 = new java.io.File;	$r6 = new java.io.File;	$r4 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>();	specialinvoke $r6.<java.io.File: void <init>(java.lang.String,java.lang.String)>($r4, r1);	goto [?= $r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>()];	$r3 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$r2 = virtualinvoke $r6.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 5