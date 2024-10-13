(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var174 0)
(declare-sort var2803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var174-init () var174)
(declare-fun arr-var2803-init () (Array Int var2803))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2803 (Int) var2803)
(declare-fun String_format/1339386452 (String (Array Int var2803)) String)
(declare-fun <init>/875830710 (var174 String) void)
(declare-const null-Iterator Iterator)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2803__ (Array Int var2803))
(declare-const var2974 Iterator) ; Statement: r0 := @parameter0: java.util.Iterator 
(assert (not (= var2974 null-Iterator)))
(declare-const var3380 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3380 null-Int)))
 ; Statement: if i0 >= 1 goto (branch) 
(assert (not (>= var3380 1))) ; Negate: Cond: i0 >= 1  
(define-const var2625 var174 var174-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2099 (Array Int var2803) arr-var2803-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(define-const var2436 Int (Int_valueOf/-1371140006 var3380)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2099!1 (Array Int var2803))
(assert (not (= var2099!1 null-__Array__Int__var2803__)))
(assert (= (select var2099!1 0) (cast-from-Int-to-var2803 var2436))) ; Statement: $r5[0] = $r6 
(define-const var873 String (String_format/1339386452 "length (%s) must be >= 1" var2099!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("length (%s) must be >= 1", $r5) 
(assert true)
;(assert (<init>/875830710 var2625 var873)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2625!1 var174)
(declare-const var873!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var174-init=([], java.lang.IllegalArgumentException), arr-var2803-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2803=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2974=r0, var3380=i0, var174=java.lang.IllegalArgumentException, var2625=$r4, var2803=java.lang.Object, var2099=$r5, var2436=$r6, var873=$r7}
; {r0=var2974, i0=var3380, java.lang.IllegalArgumentException=var174, $r4=var2625, java.lang.Object=var2803, $r5=var2099, $r6=var2436, $r7=var873}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.util.Iterator;	i0 := @parameter1: int;	if i0 >= 1 goto (branch);	$r4 = new java.lang.IllegalArgumentException;	$r5 = newarray (java.lang.Object)[1];	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r5[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("length (%s) must be >= 1", $r5);	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r4
;block_num 2