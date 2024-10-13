(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2371 0)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var2371 var2371)
(declare-const null-String String)
(declare-const var2957 var2371) ; Statement: r1 := @parameter0: org.javacc.parser.Token 
(assert (not (= var2957 null-var2371)))
(declare-const var2677 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2677 null-String)))
(assert true)
(define-const var2251 Int (length/-134980193 var2677)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (= var2251 1)) ; Cond: $i0 == 1 
(assert (not (and true (and (> (str.len var2677) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char)}
; {var2371=org.javacc.parser.Token, var2957=r1, var2677=r0, var2657=null_type, var2251=$i0, var1314=$c1}
; {org.javacc.parser.Token=var2371, r1=var2957, r0=var2677, null_type=var2657, $i0=var2251, $c1=var1314}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: org.javacc.parser.Token;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return $c1
;block_num 2