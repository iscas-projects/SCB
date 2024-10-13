(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var1672-1 ((Array Int var1672)) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-String-to-var1672 (String) var1672)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-Bool Bool)
(declare-const null-var1672 var1672)
(declare-const null-__Array__Int__var1672__ (Array Int var1672))
(declare-const var2093 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2093 null-Bool)))
(declare-const var1483 var1672) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1483 null-var1672)))
(declare-const var134 (Array Int var1672)) ; Statement: r0 := @parameter2: java.lang.Object[] 
(assert (not (= var134 null-__Array__Int__var1672__)))
(define-const var3834 Int (getLength-Arr-var1672-1 var134)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $r3 = "" 
(assert (<= var3834 0)) ; Cond: $i0 <= 0 
(define-const var945 String (cast-from-String-to-String "")) ; Statement: $r3 = "" 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var2093 1 0) 0)) ; Cond: z0 == 0 
(define-const var2556 var1672 (cast-from-String-to-var1672 (String_toString/-1426662429 var945))) ; Statement: $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var1672-1=([java.lang.Object[]], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-String-to-var1672=([java.lang.String], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2093=z0, var1672=java.lang.Object, var1483=r2, var134=r0, var3834=$i0, var945=$r3, var2556=$r4}
; {z0=var2093, java.lang.Object=var1672, r2=var1483, r0=var134, $i0=var3834, $r3=var945, $r4=var2556}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object[];	$i0 = lengthof r0;	if $i0 <= 0 goto $r3 = "";	$r3 = "";	if z0 == 0 goto $r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = interfaceinvoke $r3.<java.lang.CharSequence: java.lang.String toString()>();	return $r4
;block_num 5