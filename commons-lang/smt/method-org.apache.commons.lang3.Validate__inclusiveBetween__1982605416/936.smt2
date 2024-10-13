(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var830 0)
(declare-sort var79 0)
(declare-sort var198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var79_compareTo/903719057 (var79 var830) Int)
(declare-fun var198-init () var198)
(declare-fun arr-var830-init () (Array Int var830))
(declare-fun cast-from-var79-to-var830 (var79) var830)
(declare-fun String_format/1339386452 (String (Array Int var830)) String)
(declare-fun <init>/875830710 (var198 String) void)
(declare-const null-var830 var830)
(declare-const null-var79 var79)
(declare-const null-__Array__Int__var830__ (Array Int var830))
(declare-const var2585 var830) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2585 null-var830)))
(declare-const var2013 var830) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2013 null-var830)))
(declare-const var2232 var79) ; Statement: r0 := @parameter2: java.lang.Comparable 
(assert (not (= var2232 null-var79)))
(define-const var2507 Int (var79_compareTo/903719057 var2232 var2585)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.Comparable: int compareTo(java.lang.Object)>(r1) 
 ; Statement: if $i0 < 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (< var2507 0)) ; Cond: $i0 < 0 
(define-const var486 var198 var198-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3027 (Array Int var830) arr-var830-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(declare-const var3027!1 (Array Int var830))
(assert (not (= var3027!1 null-__Array__Int__var830__)))
(assert (= (select var3027!1 0) (cast-from-var79-to-var830 var2232))) ; Statement: $r3[0] = r0 
(declare-const var3027!2 (Array Int var830))
(assert (not (= var3027!2 null-__Array__Int__var830__)))
(assert (= (select var3027!2 1) var2585)) ; Statement: $r3[1] = r1 
(declare-const var3027!3 (Array Int var830))
(assert (not (= var3027!3 null-__Array__Int__var830__)))
(assert (= (select var3027!3 2) var2013)) ; Statement: $r3[2] = r4 
(define-const var1050 String (String_format/1339386452 "The value %s is not in the specified inclusive range of %s to %s" var3027!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified inclusive range of %s to %s", $r3) 
(assert true)
;(assert (<init>/875830710 var486 var1050)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var486!1 var198)
(declare-const var1050!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var79_compareTo/903719057=([java.lang.Comparable, java.lang.Object], int), var198-init=([], java.lang.IllegalArgumentException), arr-var830-init=([], java.lang.Object[]), cast-from-var79-to-var830=([java.lang.Comparable], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var830=java.lang.Object, var2585=r1, var2013=r4, var79=java.lang.Comparable, var2232=r0, var2507=$i0, var198=java.lang.IllegalArgumentException, var486=$r2, var3027=$r3, var1050=$r5}
; {java.lang.Object=var830, r1=var2585, r4=var2013, java.lang.Comparable=var79, r0=var2232, $i0=var2507, java.lang.IllegalArgumentException=var198, $r2=var486, $r3=var3027, $r5=var1050}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Comparable;	$i0 = interfaceinvoke r0.<java.lang.Comparable: int compareTo(java.lang.Object)>(r1);	if $i0 < 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = newarray (java.lang.Object)[3];	$r3[0] = r0;	$r3[1] = r1;	$r3[2] = r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified inclusive range of %s to %s", $r3);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r2
;block_num 2