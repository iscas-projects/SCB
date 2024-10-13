(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1938-init () var1938)
(declare-fun arr-var1967-init () (Array Int var1967))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1967 (Int) var1967)
(declare-fun String_format/1339386452 (String (Array Int var1967)) String)
(declare-fun <init>/875830710 (var1938 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1967__ (Array Int var1967))
(declare-const var2115 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2115 null-__Array__Int__Int__)))
(declare-const var3545 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var3545 null-Int)))
(declare-const var984 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var984 null-Int)))
(declare-const var263 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var263 null-Bool)))
 ; Statement: if i0 < 9 goto l10 = 0L 
(assert (not (< var984 9))) ; Negate: Cond: i0 < 9  
(define-const var905 var1938 var1938-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1233 (Array Int var1967) arr-var1967-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(define-const var2897 Int (Int_valueOf/-1371140006 var3545)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i4) 
(declare-const var1233!1 (Array Int var1967))
(assert (not (= var1233!1 null-__Array__Int__var1967__)))
(assert (= (select var1233!1 0) (cast-from-Int-to-var1967 var2897))) ; Statement: $r2[0] = $r3 
(define-const var2536 Int (Int_valueOf/-1371140006 var984)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1233!2 (Array Int var1967))
(assert (not (= var1233!2 null-__Array__Int__var1967__)))
(assert (= (select var1233!2 1) (cast-from-Int-to-var1967 var2536))) ; Statement: $r2[1] = $r4 
(define-const var3946 String (String_format/1339386452 "At offset %d, %d byte binary number exceeds maximum signed long value" var1233!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("At offset %d, %d byte binary number exceeds maximum signed long value", $r2) 
(assert true)
;(assert (<init>/875830710 var905 var3946)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var905!1 var1938)
(declare-const var3946!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1938-init=([], java.lang.IllegalArgumentException), arr-var1967-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1967=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2115=r0, var3545=i4, var984=i0, var263=z0, var1938=java.lang.IllegalArgumentException, var905=$r6, var1967=java.lang.Object, var1233=$r2, var2897=$r3, var2536=$r4, var3946=$r5}
; {r0=var2115, i4=var3545, i0=var984, z0=var263, java.lang.IllegalArgumentException=var1938, $r6=var905, java.lang.Object=var1967, $r2=var1233, $r3=var2897, $r4=var2536, $r5=var3946}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: byte[];	i4 := @parameter1: int;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	if i0 < 9 goto l10 = 0L;	$r6 = new java.lang.IllegalArgumentException;	$r2 = newarray (java.lang.Object)[2];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i4);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("At offset %d, %d byte binary number exceeds maximum signed long value", $r2);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2