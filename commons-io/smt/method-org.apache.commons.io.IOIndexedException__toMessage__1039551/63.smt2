(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3626 0)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1171-init () (Array Int var1171))
(declare-fun cast-from-String-to-var1171 (String) var1171)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1171 (Int) var1171)
(declare-fun String_format/1339386452 (String (Array Int var1171)) String)
(declare-const null-Int Int)
(declare-const null-var3626 var3626)
(declare-const null-__Array__Int__var1171__ (Array Int var1171))
(declare-const var2715 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2715 null-Int)))
(declare-const var2328 var3626) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var2328 null-var3626)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var2328 null-var3626)))) ; Negate: Cond: r0 != null  
(define-const var1520 String "Null") ; Statement: $r6 = "Null" 
 ; Statement: goto [?= r2 = $r6] 
(assert true) ; Non Conditional
(define-const var1480 String var1520) ; Statement: r2 = $r6 
 ; Statement: if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert (not (not (= var2328 null-var3626)))) ; Negate: Cond: r0 != null  
(define-const var2020 String "Null") ; Statement: $r7 = "Null" 
 ; Statement: goto [?= $r3 = newarray (java.lang.Object)[3]] 
(assert true) ; Non Conditional
(define-const var1228 (Array Int var1171) arr-var1171-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(declare-const var1228!1 (Array Int var1171))
(assert (not (= var1228!1 null-__Array__Int__var1171__)))
(assert (= (select var1228!1 0) (cast-from-String-to-var1171 var1480))) ; Statement: $r3[0] = r2 
(define-const var1037 Int (Int_valueOf/-1371140006 var2715)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1228!2 (Array Int var1171))
(assert (not (= var1228!2 null-__Array__Int__var1171__)))
(assert (= (select var1228!2 1) (cast-from-Int-to-var1171 var1037))) ; Statement: $r3[1] = $r4 
(declare-const var1228!3 (Array Int var1171))
(assert (not (= var1228!3 null-__Array__Int__var1171__)))
(assert (= (select var1228!3 2) (cast-from-String-to-var1171 var2020))) ; Statement: $r3[2] = $r7 
(define-const var3204 String (String_format/1339386452 "%s #%,d: %s" var1228!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1171-init=([], java.lang.Object[]), cast-from-String-to-var1171=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1171=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2715=i0, var3626=java.lang.Throwable, var2328=r0, var1520=$r6, var1480=r2, var2020=$r7, var1171=java.lang.Object, var1228=$r3, var1037=$r4, var3204=$r5}
; {i0=var2715, java.lang.Throwable=var3626, r0=var2328, $r6=var1520, r2=var1480, $r7=var2020, java.lang.Object=var1171, $r3=var1228, $r4=var1037, $r5=var3204}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.Throwable;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = "Null";	goto [?= r2 = $r6];	r2 = $r6;	if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = "Null";	goto [?= $r3 = newarray (java.lang.Object)[3]];	$r3 = newarray (java.lang.Object)[3];	$r3[0] = r2;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[1] = $r4;	$r3[2] = $r7;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3);	return $r5
;block_num 5