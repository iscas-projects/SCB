(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3432 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3432 null-String)))
(declare-const var953 Int) ; Statement: c3 := @parameter1: char 
(assert (not (= var953 null-Int)))
(declare-const var1848 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1848 null-Int)))
(define-const var3984 Int (String_length/-667254855 var3432)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var9 Int (- var1848 var3984)) ; Statement: i2 = i0 - $i1 
 ; Statement: if i2 > 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (> var9 0))) ; Negate: Cond: i2 > 0  
(define-const var1744 String (String_toString/-1426662429 var3432)) ; Statement: $r6 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3432=r0, var953=c3, var1848=i0, var3984=$i1, var9=i2, var1744=$r6}
; {r0=var3432, c3=var953, i0=var1848, $i1=var3984, i2=var9, $r6=var1744}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	c3 := @parameter1: char;	i0 := @parameter2: int;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i2 = i0 - $i1;	if i2 > 0 goto $r1 = new java.lang.StringBuilder;	$r6 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r6
;block_num 2