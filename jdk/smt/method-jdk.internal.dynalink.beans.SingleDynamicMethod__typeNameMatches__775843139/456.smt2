(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var554 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var554 null-String)))
(declare-const var1365 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var1365 null-ClassObject)))
(assert true)
(define-const var839 Int (indexOf/-1037706067 var554 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var449 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert (not (= var839 var449))) ; Cond: $i0 != $i2 
(assert true)
(define-const var1113 String (getCanonicalName/935544231 var1365)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1555 Bool (= var554 var1113)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), getCanonicalName/935544231=([java.lang.Class], java.lang.String)}
; {var554=r0, var2345=null_type, var1365=r1, var839=$i0, var449=$i2, var1113=$r2, var1555=$z0}
; {r0=var554, null_type=var2345, r1=var1365, $i0=var839, $i2=var449, $r2=var1113, $z0=var1555}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getCanonicalName()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getCanonicalName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 3