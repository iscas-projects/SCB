(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1946 0)
(declare-sort var64 0)
(declare-sort var3934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var64_compareTo/903719057 (var64 var1946) Int)
(declare-fun var3934-init () var3934)
(declare-fun arr-var1946-init () (Array Int var1946))
(declare-fun cast-from-var64-to-var1946 (var64) var1946)
(declare-fun String_format/1339386452 (String (Array Int var1946)) String)
(declare-fun <init>/875830710 (var3934 String) void)
(declare-const null-var1946 var1946)
(declare-const null-var64 var64)
(declare-const null-__Array__Int__var1946__ (Array Int var1946))
(declare-const var2939 var1946) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2939 null-var1946)))
(declare-const var2683 var1946) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2683 null-var1946)))
(declare-const var2586 var64) ; Statement: r0 := @parameter2: java.lang.Comparable 
(assert (not (= var2586 null-var64)))
(define-const var1364 Int (var64_compareTo/903719057 var2586 var2939)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.Comparable: int compareTo(java.lang.Object)>(r1) 
 ; Statement: if $i0 <= 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (<= var1364 0)) ; Cond: $i0 <= 0 
(define-const var3500 var3934 var3934-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1155 (Array Int var1946) arr-var1946-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(declare-const var1155!1 (Array Int var1946))
(assert (not (= var1155!1 null-__Array__Int__var1946__)))
(assert (= (select var1155!1 0) (cast-from-var64-to-var1946 var2586))) ; Statement: $r3[0] = r0 
(declare-const var1155!2 (Array Int var1946))
(assert (not (= var1155!2 null-__Array__Int__var1946__)))
(assert (= (select var1155!2 1) var2939)) ; Statement: $r3[1] = r1 
(declare-const var1155!3 (Array Int var1946))
(assert (not (= var1155!3 null-__Array__Int__var1946__)))
(assert (= (select var1155!3 2) var2683)) ; Statement: $r3[2] = r4 
(define-const var846 String (String_format/1339386452 "The value %s is not in the specified exclusive range of %s to %s" var1155!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified exclusive range of %s to %s", $r3) 
(assert true)
;(assert (<init>/875830710 var3500 var846)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3500!1 var3934)
(declare-const var846!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var64_compareTo/903719057=([java.lang.Comparable, java.lang.Object], int), var3934-init=([], java.lang.IllegalArgumentException), arr-var1946-init=([], java.lang.Object[]), cast-from-var64-to-var1946=([java.lang.Comparable], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1946=java.lang.Object, var2939=r1, var2683=r4, var64=java.lang.Comparable, var2586=r0, var1364=$i0, var3934=java.lang.IllegalArgumentException, var3500=$r2, var1155=$r3, var846=$r5}
; {java.lang.Object=var1946, r1=var2939, r4=var2683, java.lang.Comparable=var64, r0=var2586, $i0=var1364, java.lang.IllegalArgumentException=var3934, $r2=var3500, $r3=var1155, $r5=var846}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Comparable;	$i0 = interfaceinvoke r0.<java.lang.Comparable: int compareTo(java.lang.Object)>(r1);	if $i0 <= 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = newarray (java.lang.Object)[3];	$r3[0] = r0;	$r3[1] = r1;	$r3[2] = r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified exclusive range of %s to %s", $r3);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r2
;block_num 2