(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2356 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2356 null-String)))
(declare-const var380 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var380 null-String)))
(assert true)
(define-const var383 Int (length/-134980193 var380)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var383 0))) ; Cond: $i0 != 0 
(assert (not (and true (and (> (str.len var380) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2356=r0, var2948=null_type, var380=r6, var383=$i0, var839=$c1, var3873=$i9, var1333=$i2}
; {r0=var2356, null_type=var2948, r6=var380, $i0=var383, $c1=var839, $i9=var3873, $i2=var1333}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 0 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$i9 = (int) $c1;	if $i9 != 42 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if $i2 != 0 goto $c3 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	return 0
;block_num 4