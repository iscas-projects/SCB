(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1817 0)
(declare-sort var2587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1817-init () var1817)
(declare-fun arr-var2587-init () (Array Int var2587))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2587 (Int) var2587)
(declare-fun String_format/1339386452 (String (Array Int var2587)) String)
(declare-fun <init>/875830710 (var1817 String) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2587__ (Array Int var2587))
(declare-const var2118 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var2118 null-Int)))
(declare-const var996 Int) ; Statement: l3 := @parameter1: long 
(assert (not (= var996 null-Int)))
(declare-const var3165 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var3165 null-Int)))
(define-const var3772 Int (ite (> var3165 var2118) 1 (ite (< var3165 var2118) (- 1) 0))) ; Statement: $b2 = l0 cmp l1 
(define-const var3027 Int (cast-from-Int-to-Int var3772)) ; Statement: $i5 = (int) $b2 
 ; Statement: if $i5 < 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (< var3027 0)) ; Cond: $i5 < 0 
(define-const var1895 var1817 var1817-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var7 (Array Int var2587) arr-var2587-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var1714 Int (Int_valueOf/-1102777585 var3165)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var7!1 (Array Int var2587))
(assert (not (= var7!1 null-__Array__Int__var2587__)))
(assert (= (select var7!1 0) (cast-from-Int-to-var2587 var1714))) ; Statement: $r1[0] = $r2 
(define-const var973 Int (Int_valueOf/-1102777585 var2118)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l1) 
(declare-const var7!2 (Array Int var2587))
(assert (not (= var7!2 null-__Array__Int__var2587__)))
(assert (= (select var7!2 1) (cast-from-Int-to-var2587 var973))) ; Statement: $r1[1] = $r3 
(define-const var1496 Int (Int_valueOf/-1102777585 var996)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l3) 
(declare-const var7!3 (Array Int var2587))
(assert (not (= var7!3 null-__Array__Int__var2587__)))
(assert (= (select var7!3 2) (cast-from-Int-to-var2587 var1496))) ; Statement: $r1[2] = $r4 
(define-const var1041 String (String_format/1339386452 "The value %s is not in the specified inclusive range of %s to %s" var7!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified inclusive range of %s to %s", $r1) 
(assert true)
;(assert (<init>/875830710 var1895 var1041)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1895!1 var1817)
(declare-const var1041!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1817-init=([], java.lang.IllegalArgumentException), arr-var2587-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2587=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2118=l1, var996=l3, var3165=l0, var3772=$b2, var3027=$i5, var1817=java.lang.IllegalArgumentException, var1895=$r6, var2587=java.lang.Object, var7=$r1, var1714=$r2, var973=$r3, var1496=$r4, var1041=$r5}
; {l1=var2118, l3=var996, l0=var3165, $b2=var3772, $i5=var3027, java.lang.IllegalArgumentException=var1817, $r6=var1895, java.lang.Object=var2587, $r1=var7, $r2=var1714, $r3=var973, $r4=var1496, $r5=var1041}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts l1 := @parameter0: long;	l3 := @parameter1: long;	l0 := @parameter2: long;	$b2 = l0 cmp l1;	$i5 = (int) $b2;	if $i5 < 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r1 = newarray (java.lang.Object)[3];	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r1[0] = $r2;	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l1);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l3);	$r1[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The value %s is not in the specified inclusive range of %s to %s", $r1);	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2