(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var65 0)
(declare-sort var1022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var65-init () var65)
(declare-fun arr-var1022-init () (Array Int var1022))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1022 (Int) var1022)
(declare-fun String_format/1339386452 (String (Array Int var1022)) String)
(declare-fun <init>/875830710 (var65 String) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1022__ (Array Int var1022))
(declare-const var2500 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2500 null-Int)))
(declare-const var1617 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1617 null-Int)))
(define-const var1936 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto (branch) 
(assert (not (= var2500 var1936))) ; Cond: i0 != $i3 
 ; Statement: if i0 < 0 goto $r7 = new java.lang.IllegalArgumentException 
(assert (< var2500 0)) ; Cond: i0 < 0 
(define-const var3738 var65 var65-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var544 (Array Int var1022) arr-var1022-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var3273 Int (Int_valueOf/-1371140006 var2500)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var544!1 (Array Int var1022))
(assert (not (= var544!1 null-__Array__Int__var1022__)))
(assert (= (select var544!1 0) (cast-from-Int-to-var1022 var3273))) ; Statement: $r1[0] = $r2 
(define-const var2455 Int (Int_valueOf/-1371140006 var1617)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var544!2 (Array Int var1022))
(assert (not (= var544!2 null-__Array__Int__var1022__)))
(assert (= (select var544!2 1) (cast-from-Int-to-var1022 var2455))) ; Statement: $r1[1] = $r3 
(define-const var3667 String (String_format/1339386452 "line and column values must be >= 0: line %d, column: %d" var544!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("line and column values must be >= 0: line %d, column: %d", $r1) 
(assert true)
;(assert (<init>/875830710 var3738 var3667)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3738!1 var65)
(declare-const var3667!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var65-init=([], java.lang.IllegalArgumentException), arr-var1022-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1022=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2500=i0, var1617=i1, var1936=$i3, var65=java.lang.IllegalArgumentException, var3738=$r7, var1022=java.lang.Object, var544=$r1, var3273=$r2, var2455=$r3, var3667=$r4}
; {i0=var2500, i1=var1617, $i3=var1936, java.lang.IllegalArgumentException=var65, $r7=var3738, java.lang.Object=var1022, $r1=var544, $r2=var3273, $r3=var2455, $r4=var3667}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$i3 = (int) -1;	if i0 != $i3 goto (branch);	if i0 < 0 goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[2];	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("line and column values must be >= 0: line %d, column: %d", $r1);	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r7
;block_num 3