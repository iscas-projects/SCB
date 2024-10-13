(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var34_toCharSequence/-1118367307 (var3307) String)
(declare-fun cast-from-String-to-var3307 (String) var3307)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-Bool Bool)
(declare-const null-var3307 var3307)
(declare-const var1417 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1417 null-Bool)))
(declare-const var978 var3307) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var978 null-var3307)))
(declare-const var1617 var3307) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var1617 null-var3307)))
(define-const var796 String (var34_toCharSequence/-1118367307 var1617)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.CharSequence toCharSequence(java.lang.Object)>(r0) 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var1417 1 0) 0)) ; Cond: z0 == 0 
(define-const var1836 var3307 (cast-from-String-to-var3307 (String_toString/-1426662429 var796))) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var34_toCharSequence/-1118367307=([java.lang.Object], java.lang.CharSequence), cast-from-String-to-var3307=([java.lang.String], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1417=z0, var3307=java.lang.Object, var978=r2, var1617=r0, var34=jdk.nashorn.internal.runtime.JSType, var796=r1, var1836=$r3}
; {z0=var1417, java.lang.Object=var3307, r2=var978, r0=var1617, jdk.nashorn.internal.runtime.JSType=var34, r1=var796, $r3=var1836}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.CharSequence toCharSequence(java.lang.Object)>(r0);	if z0 == 0 goto $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 3