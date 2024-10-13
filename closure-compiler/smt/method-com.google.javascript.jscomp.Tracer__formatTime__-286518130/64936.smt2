(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var1551-init () (Array Int var1551))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1551 (Int) var1551)
(declare-fun String_format/1339386452 (String (Array Int var1551)) String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1551__ (Array Int var1551))
(declare-const var153 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var153 null-Int)))
(define-const var560 Int (div var153 1000)) ; Statement: $l1 = l0 / 1000L 
(define-const var100 Int (mod var560 60)) ; Statement: $l2 = $l1 % 60L 
(define-const var2812 Int (cast-from-Int-to-Int var100)) ; Statement: i3 = (int) $l2 
(define-const var3691 Int (mod var153 1000)) ; Statement: $l4 = l0 % 1000L 
(define-const var3959 Int (cast-from-Int-to-Int var3691)) ; Statement: i5 = (int) $l4 
(define-const var3612 (Array Int var1551) arr-var1551-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var3510 Int (Int_valueOf/-1371140006 var2812)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i3) 
(declare-const var3612!1 (Array Int var1551))
(assert (not (= var3612!1 null-__Array__Int__var1551__)))
(assert (= (select var3612!1 0) (cast-from-Int-to-var1551 var3510))) ; Statement: $r0[0] = $r1 
(define-const var601 Int (Int_valueOf/-1371140006 var3959)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5) 
(declare-const var3612!2 (Array Int var1551))
(assert (not (= var3612!2 null-__Array__Int__var1551__)))
(assert (= (select var3612!2 1) (cast-from-Int-to-var1551 var601))) ; Statement: $r0[1] = $r2 
(define-const var720 String (String_format/1339386452 "%02d.%03d" var3612!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%02d.%03d", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([long], int), arr-var1551-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1551=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var153=l0, var560=$l1, var100=$l2, var2812=i3, var3691=$l4, var3959=i5, var1551=java.lang.Object, var3612=$r0, var3510=$r1, var601=$r2, var720=$r3}
; {l0=var153, $l1=var560, $l2=var100, i3=var2812, $l4=var3691, i5=var3959, java.lang.Object=var1551, $r0=var3612, $r1=var3510, $r2=var601, $r3=var720}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts l0 := @parameter0: long;	$l1 = l0 / 1000L;	$l2 = $l1 % 60L;	i3 = (int) $l2;	$l4 = l0 % 1000L;	i5 = (int) $l4;	$r0 = newarray (java.lang.Object)[2];	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i3);	$r0[0] = $r1;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5);	$r0[1] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%02d.%03d", $r0);	return $r3
;block_num 1