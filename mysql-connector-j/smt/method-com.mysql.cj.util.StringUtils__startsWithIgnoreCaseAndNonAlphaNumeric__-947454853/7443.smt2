(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var387 0)
(declare-sort var521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var521_regionMatchesIgnoreCase/1635927219 (String Int String) Bool)
(declare-const null-String String)
(declare-const var2226 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2226 null-String)))
(declare-const var2104 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2104 null-String)))
 ; Statement: if r0 != null goto i2 = 0 
(assert (not (= var2226 null-String))) ; Cond: r0 != null 
(define-const var2982 Int 0) ; Statement: i2 = 0 
(assert true)
(define-const var706 Int (length/-134980193 var2226)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1) 
(assert (>= var2982 var706)) ; Cond: i2 >= i0 
(define-const var3218 Bool (var521_regionMatchesIgnoreCase/1635927219 var2226 var2982 var2104)) ; Statement: $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var521_regionMatchesIgnoreCase/1635927219=([java.lang.String, int, java.lang.String], boolean)}
; {var2226=r0, var387=null_type, var2104=r1, var2982=i2, var706=i0, var521=com.mysql.cj.util.StringUtils, var3218=$z0}
; {r0=var2226, null_type=var387, r1=var2104, i2=var2982, i0=var706, com.mysql.cj.util.StringUtils=var521, $z0=var3218}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 != null goto i2 = 0;	i2 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= i0 goto $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1);	$z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1);	return $z0
;block_num 4