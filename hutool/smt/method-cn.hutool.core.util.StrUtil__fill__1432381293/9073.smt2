(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1662 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1662 null-String)))
(declare-const var1982 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var1982 null-Int)))
(declare-const var2909 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2909 null-Int)))
(declare-const var751 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var751 null-Bool)))
(assert true)
(define-const var824 Int (length/-134980193 var1662)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= i1 goto $i3 = i1 - i0 
(assert (not (<= var824 var2909))) ; Negate: Cond: i0 <= i1  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1662=r0, var662=null_type, var1982=c2, var2909=i1, var751=z0, var824=i0}
; {r0=var1662, null_type=var662, c2=var1982, i1=var2909, z0=var751, i0=var824}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c2 := @parameter1: char;	i1 := @parameter2: int;	z0 := @parameter3: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= i1 goto $i3 = i1 - i0;	return r0
;block_num 2