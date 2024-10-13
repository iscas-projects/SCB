(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1054 0)
(declare-sort var2818 0)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1054-init () var1054)
(declare-fun arr-var2818-init () (Array Int var2818))
(declare-fun var748_getName/-646780932 (ClassObject String) String)
(declare-fun cast-from-String-to-var2818 (String) var2818)
(declare-fun String_format/1339386452 (String (Array Int var2818)) String)
(declare-fun <init>/875830710 (var1054 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var2818__ (Array Int var2818))
(declare-const var2983 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2983 null-ClassObject)))
(declare-const var2578 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var2578 null-ClassObject)))
 ; Statement: if r0 == null goto $r2 = new java.lang.IllegalArgumentException 
(assert (= var2578 null-ClassObject)) ; Cond: r0 == null 
(define-const var1257 var1054 var1054-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3304 (Array Int var2818) arr-var2818-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(define-const var850 String (var748_getName/-646780932 var2578 "null type")) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getName(java.lang.Class,java.lang.String)>(r0, "null type") 
(declare-const var3304!1 (Array Int var2818))
(assert (not (= var3304!1 null-__Array__Int__var2818__)))
(assert (= (select var3304!1 0) (cast-from-String-to-var2818 var850))) ; Statement: $r3[0] = $r4 
(define-const var3915 String (var748_getName/-646780932 var2983 "null type")) ; Statement: $r5 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getName(java.lang.Class,java.lang.String)>(r1, "null type") 
(declare-const var3304!2 (Array Int var2818))
(assert (not (= var3304!2 null-__Array__Int__var2818__)))
(assert (= (select var3304!2 1) (cast-from-String-to-var2818 var3915))) ; Statement: $r3[1] = $r5 
(define-const var1488 String (String_format/1339386452 "Cannot assign a %s to a %s" var3304!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot assign a %s to a %s", $r3) 
(assert true)
;(assert (<init>/875830710 var1257 var1488)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1257!1 var1054)
(declare-const var1488!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1054-init=([], java.lang.IllegalArgumentException), arr-var2818-init=([], java.lang.Object[]), var748_getName/-646780932=([java.lang.Class, java.lang.String], java.lang.String), cast-from-String-to-var2818=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2983=r1, var2578=r0, var1054=java.lang.IllegalArgumentException, var1257=$r2, var2818=java.lang.Object, var3304=$r3, var748=org.apache.commons.lang3.ClassUtils, var850=$r4, var3915=$r5, var1488=$r6}
; {r1=var2983, r0=var2578, java.lang.IllegalArgumentException=var1054, $r2=var1257, java.lang.Object=var2818, $r3=var3304, org.apache.commons.lang3.ClassUtils=var748, $r4=var850, $r5=var3915, $r6=var1488}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.Class;	if r0 == null goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = newarray (java.lang.Object)[2];	$r4 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getName(java.lang.Class,java.lang.String)>(r0, "null type");	$r3[0] = $r4;	$r5 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getName(java.lang.Class,java.lang.String)>(r1, "null type");	$r3[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot assign a %s to a %s", $r3);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2