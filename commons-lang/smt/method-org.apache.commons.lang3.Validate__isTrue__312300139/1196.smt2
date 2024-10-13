(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2262 0)
(declare-sort var1371 0)
(declare-sort var1530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1371-init () var1371)
(declare-fun arr-var1530-init () (Array Int var1530))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var1530 (Int) var1530)
(declare-fun String_format/1339386452 (String (Array Int var1530)) String)
(declare-fun <init>/875830710 (var1371 String) void)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1530__ (Array Int var1530))
(declare-const var1700 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1700 null-Bool)))
(declare-const var1092 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1092 null-String)))
(declare-const var3418 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var3418 null-Int)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var1700 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var2545 var1371 var1371-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3999 (Array Int var1530) arr-var1530-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(define-const var2618 Int (Int_valueOf/-1102777585 var3418)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var3999!1 (Array Int var1530))
(assert (not (= var3999!1 null-__Array__Int__var1530__)))
(assert (= (select var3999!1 0) (cast-from-Int-to-var1530 var2618))) ; Statement: $r2[0] = $r3 
(define-const var1114 String (String_format/1339386452 var1092 var3999!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, $r2) 
(assert true)
;(assert (<init>/875830710 var2545 var1114)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var2545!1 var1371)
(declare-const var1114!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1371-init=([], java.lang.IllegalArgumentException), arr-var1530-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var1530=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1700=z0, var1092=r1, var2262=null_type, var3418=l0, var1371=java.lang.IllegalArgumentException, var2545=$r0, var1530=java.lang.Object, var3999=$r2, var2618=$r3, var1114=$r4}
; {z0=var1700, r1=var1092, null_type=var2262, l0=var3418, java.lang.IllegalArgumentException=var1371, $r0=var2545, java.lang.Object=var1530, $r2=var3999, $r3=var2618, $r4=var1114}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.String;	l0 := @parameter2: long;	if z0 != 0 goto return;	$r0 = new java.lang.IllegalArgumentException;	$r2 = newarray (java.lang.Object)[1];	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, $r2);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2