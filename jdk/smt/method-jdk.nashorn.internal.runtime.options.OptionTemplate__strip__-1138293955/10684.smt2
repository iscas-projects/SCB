(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3664 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3664 null-String)))
(declare-const var1889 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var1889 null-Int)))
(declare-const var1027 Int) ; Statement: c4 := @parameter2: char 
(assert (not (= var1027 null-Int)))
(assert true)
(define-const var1005 Int (length/-134980193 var3664)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= 1 goto return null 
(assert (<= var1005 1)) ; Cond: i0 <= 1 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3664=r0, var3104=null_type, var1889=c1, var1027=c4, var1005=i0}
; {r0=var3664, null_type=var3104, c1=var1889, c4=var1027, i0=var1005}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	c4 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= 1 goto return null;	return null
;block_num 2