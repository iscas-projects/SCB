(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3386-init () var3386)
(declare-fun arr-var2736-init () (Array Int var2736))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2736 (Int) var2736)
(declare-fun String_format/1339386452 (String (Array Int var2736)) String)
(declare-fun <init>/875830710 (var3386 String) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2736__ (Array Int var2736))
(declare-const var405 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var405 null-Int)))
 ; Statement: if i0 >= 0 goto $r0 = new java.io.ByteArrayOutputStream 
(assert (not (>= var405 0))) ; Negate: Cond: i0 >= 0  
(define-const var2398 var3386 var3386-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var2739 (Array Int var2736) arr-var2736-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var3414 Int (Int_valueOf/-1371140006 var405)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2739!1 (Array Int var2736))
(assert (not (= var2739!1 null-__Array__Int__var2736__)))
(assert (= (select var2739!1 0) (cast-from-Int-to-var2736 var3414))) ; Statement: $r3[0] = $r4 
(define-const var1177 String (String_format/1339386452 "Invalid size: %s" var2739!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid size: %s", $r3) 
(assert true)
;(assert (<init>/875830710 var2398 var1177)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2398!1 var3386)
(declare-const var1177!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3386-init=([], java.lang.IllegalArgumentException), arr-var2736-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2736=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var405=i0, var3386=java.lang.IllegalArgumentException, var2398=$r2, var2736=java.lang.Object, var2739=$r3, var3414=$r4, var1177=$r5}
; {i0=var405, java.lang.IllegalArgumentException=var3386, $r2=var2398, java.lang.Object=var2736, $r3=var2739, $r4=var3414, $r5=var1177}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	if i0 >= 0 goto $r0 = new java.io.ByteArrayOutputStream;	$r2 = new java.lang.IllegalArgumentException;	$r3 = newarray (java.lang.Object)[1];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid size: %s", $r3);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r2
;block_num 2