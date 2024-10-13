(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var265 0)
(declare-sort var2680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var265-init () var265)
(declare-fun arr-var2680-init () (Array Int var2680))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2680 (Int) var2680)
(declare-fun String_format/1339386452 (String (Array Int var2680)) String)
(declare-fun <init>/875830710 (var265 String) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2680__ (Array Int var2680))
(declare-const var2145 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var2145 null-Int)))
(declare-const var2991 Int) ; Statement: l3 := @parameter1: long 
(assert (not (= var2991 null-Int)))
(declare-const var3639 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var3639 null-Int)))
(define-const var1998 Int (ite (> var3639 var2145) 1 (ite (< var3639 var2145) (- 1) 0))) ; Statement: $b2 = l0 cmp l1 
(define-const var2151 Int (cast-from-Int-to-Int var1998)) ; Statement: $i5 = (int) $b2 
 ; Statement: if $i5 <= 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (<= var2151 0)) ; Cond: $i5 <= 0 
(define-const var118 var265 var265-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1554 (Array Int var2680) arr-var2680-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var2323 Int (Int_valueOf/-1102777585 var3639)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var1554!1 (Array Int var2680))
(assert (not (= var1554!1 null-__Array__Int__var2680__)))
(assert (= (select var1554!1 0) (cast-from-Int-to-var2680 var2323))) ; Statement: $r1[0] = $r2 
(define-const var591 Int (Int_valueOf/-1102777585 var2145)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l1) 
(declare-const var1554!2 (Array Int var2680))
(assert (not (= var1554!2 null-__Array__Int__var2680__)))
(assert (= (select var1554!2 1) (cast-from-Int-to-var2680 var591))) ; Statement: $r1[1] = $r3 
(define-const var670 Int (Int_valueOf/-1102777585 var2991)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l3) 
(declare-const var1554!3 (Array Int var2680))
(assert (not (= var1554!3 null-__Array__Int__var2680__)))
(assert (= (select var1554!3 2) (cast-from-Int-to-var2680 var670))) ; Statement: $r1[2] = $r4 
(define-const var3927 String (String_format/1339386452 "The value %s is not in the specified exclusive range of %s to %s" var1554!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified exclusive range of %s to %s", $r1) 
(assert true)
;(assert (<init>/875830710 var118 var3927)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var118!1 var265)
(declare-const var3927!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var265-init=([], java.lang.IllegalArgumentException), arr-var2680-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2680=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2145=l1, var2991=l3, var3639=l0, var1998=$b2, var2151=$i5, var265=java.lang.IllegalArgumentException, var118=$r6, var2680=java.lang.Object, var1554=$r1, var2323=$r2, var591=$r3, var670=$r4, var3927=$r5}
; {l1=var2145, l3=var2991, l0=var3639, $b2=var1998, $i5=var2151, java.lang.IllegalArgumentException=var265, $r6=var118, java.lang.Object=var2680, $r1=var1554, $r2=var2323, $r3=var591, $r4=var670, $r5=var3927}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts l1 := @parameter0: long;	l3 := @parameter1: long;	l0 := @parameter2: long;	$b2 = l0 cmp l1;	$i5 = (int) $b2;	if $i5 <= 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[3];	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l1);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l3);	$r1[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified exclusive range of %s to %s", $r1);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2