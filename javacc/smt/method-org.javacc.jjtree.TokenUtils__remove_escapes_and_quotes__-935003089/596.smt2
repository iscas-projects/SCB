(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var641 0)
(declare-sort var645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var641 var641)
(declare-const null-String String)
(declare-const var2226 var641) ; Statement: r1 := @parameter0: org.javacc.jjtree.Token 
(assert (not (= var2226 null-var641)))
(declare-const var2552 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2552 null-String)))
(define-const var2112 String "") ; Statement: r36 = "" 
(define-const var1413 Int 1) ; Statement: i6 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var399 Int (length/-134980193 var2552)) ; Statement: $i7 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1146 Int (- var399 1)) ; Statement: $i8 = $i7 - 1 
 ; Statement: if i6 >= $i8 goto return r36 
(assert (>= var1413 var1146)) ; Cond: i6 >= $i8 
 ; Statement: return r36 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var641=org.javacc.jjtree.Token, var2226=r1, var2552=r0, var645=null_type, var2112=r36, var1413=i6, var399=$i7, var1146=$i8}
; {org.javacc.jjtree.Token=var641, r1=var2226, r0=var2552, null_type=var645, r36=var2112, i6=var1413, $i7=var399, $i8=var1146}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: org.javacc.jjtree.Token;	r0 := @parameter1: java.lang.String;	r36 = "";	i6 = 1;	$i7 = virtualinvoke r0.<java.lang.String: int length()>();	$i8 = $i7 - 1;	if i6 >= $i8 goto return r36;	return r36
;block_num 3