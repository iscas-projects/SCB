(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3968 0)
(declare-sort var3699 0)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3699-init () var3699)
(declare-fun arr-var2693-init () (Array Int var2693))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2693 (Int) var2693)
(declare-fun String_format/1339386452 (String (Array Int var2693)) String)
(declare-fun <init>/875830710 (var3699 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var3968 var3968)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2693__ (Array Int var2693))
(declare-const var2331 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var2331 null-__Array__Int__Int__)))
(declare-const var3982 var3968) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var3982 null-var3968)))
(declare-const var1169 var3968) ; Statement: r3 := @parameter2: java.util.Set 
(assert (not (= var1169 null-var3968)))
(declare-const var3828 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3828 null-Int)))
(define-const var1465 Int (select var2331 var3828)) ; Statement: $c1 = r0[i0] 
(define-const var64 Int (cast-from-Int-to-Int var1465)) ; Statement: $i3 = (int) $c1 
 ; Statement: if $i3 != 32 goto $c2 = r0[i0] 
(assert (not (not (= var64 32)))) ; Negate: Cond: $i3 != 32  
(define-const var1672 var3699 var3699-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var2877 (Array Int var2693) arr-var2693-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(define-const var874 Int (Int_valueOf/-1371140006 var3828)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2877!1 (Array Int var2693))
(assert (not (= var2877!1 null-__Array__Int__var2693__)))
(assert (= (select var2877!1 0) (cast-from-Int-to-var2693 var874))) ; Statement: $r5[0] = $r6 
(define-const var1018 String (String_format/1339386452 "alphabet must not contain spaces: index %d" var2877!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("alphabet must not contain spaces: index %d", $r5) 
(assert true)
;(assert (<init>/875830710 var1672 var1018)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1672!1 var3699)
(declare-const var1018!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var3699-init=([], java.lang.IllegalArgumentException), arr-var2693-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2693=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2331=r0, var3968=java.util.Set, var3982=r2, var1169=r3, var3828=i0, var1465=$c1, var64=$i3, var3699=java.lang.IllegalArgumentException, var1672=$r8, var2693=java.lang.Object, var2877=$r5, var874=$r6, var1018=$r7}
; {r0=var2331, java.util.Set=var3968, r2=var3982, r3=var1169, i0=var3828, $c1=var1465, $i3=var64, java.lang.IllegalArgumentException=var3699, $r8=var1672, java.lang.Object=var2693, $r5=var2877, $r6=var874, $r7=var1018}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: char[];	r2 := @parameter1: java.util.Set;	r3 := @parameter2: java.util.Set;	i0 := @parameter3: int;	$c1 = r0[i0];	$i3 = (int) $c1;	if $i3 != 32 goto $c2 = r0[i0];	$r8 = new java.lang.IllegalArgumentException;	$r5 = newarray (java.lang.Object)[1];	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r5[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("alphabet must not contain spaces: index %d", $r5);	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r8
;block_num 2