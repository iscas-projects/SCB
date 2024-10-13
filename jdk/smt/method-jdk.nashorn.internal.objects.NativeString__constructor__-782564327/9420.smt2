(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var3000-1 ((Array Int var3000)) Int)
(declare-fun var2043_toCharSequence/-1118367307 (var3000) String)
(declare-fun cast-from-String-to-var3000 (String) var3000)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-Bool Bool)
(declare-const null-var3000 var3000)
(declare-const null-__Array__Int__var3000__ (Array Int var3000))
(declare-const var2142 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2142 null-Bool)))
(declare-const var881 var3000) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var881 null-var3000)))
(declare-const var2921 (Array Int var3000)) ; Statement: r0 := @parameter2: java.lang.Object[] 
(assert (not (= var2921 null-__Array__Int__var3000__)))
(define-const var532 Int (getLength-Arr-var3000-1 var2921)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $r3 = "" 
(assert (not (<= var532 0))) ; Negate: Cond: $i0 <= 0  
(define-const var493 var3000 (select var2921 0)) ; Statement: $r1 = r0[0] 
(define-const var1311 String (var2043_toCharSequence/-1118367307 var493)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.CharSequence toCharSequence(java.lang.Object)>($r1) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var2142 1 0) 0)) ; Cond: z0 == 0 
(define-const var2417 var3000 (cast-from-String-to-var3000 (String_toString/-1426662429 var1311))) ; Statement: $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var3000-1=([java.lang.Object[]], int), var2043_toCharSequence/-1118367307=([java.lang.Object], java.lang.CharSequence), cast-from-String-to-var3000=([java.lang.String], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2142=z0, var3000=java.lang.Object, var881=r2, var2921=r0, var532=$i0, var493=$r1, var2043=jdk.nashorn.internal.runtime.JSType, var1311=$r3, var2417=$r4}
; {z0=var2142, java.lang.Object=var3000, r2=var881, r0=var2921, $i0=var532, $r1=var493, jdk.nashorn.internal.runtime.JSType=var2043, $r3=var1311, $r4=var2417}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object[];	$i0 = lengthof r0;	if $i0 <= 0 goto $r3 = "";	$r1 = r0[0];	$r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.CharSequence toCharSequence(java.lang.Object)>($r1);	goto [?= (branch)];	if z0 == 0 goto $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>();	return $r4
;block_num 5