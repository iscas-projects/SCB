(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var1676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2861 var2861)
(declare-const null-String String)
(declare-const var1963 var2861) ; Statement: r1 := @parameter0: org.javacc.parser.Token 
(assert (not (= var1963 null-var2861)))
(declare-const var446 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var446 null-String)))
(define-const var415 String "") ; Statement: r36 = "" 
(define-const var2557 Int 1) ; Statement: i6 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var1937 Int (length/-134980193 var446)) ; Statement: $i7 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2045 Int (- var1937 1)) ; Statement: $i8 = $i7 - 1 
 ; Statement: if i6 >= $i8 goto return r36 
(assert (>= var2557 var2045)) ; Cond: i6 >= $i8 
 ; Statement: return r36 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2861=org.javacc.parser.Token, var1963=r1, var446=r0, var1676=null_type, var415=r36, var2557=i6, var1937=$i7, var2045=$i8}
; {org.javacc.parser.Token=var2861, r1=var1963, r0=var446, null_type=var1676, r36=var415, i6=var2557, $i7=var1937, $i8=var2045}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: org.javacc.parser.Token;	r0 := @parameter1: java.lang.String;	r36 = "";	i6 = 1;	$i7 = virtualinvoke r0.<java.lang.String: int length()>();	$i8 = $i7 - 1;	if i6 >= $i8 goto return r36;	return r36
;block_num 3