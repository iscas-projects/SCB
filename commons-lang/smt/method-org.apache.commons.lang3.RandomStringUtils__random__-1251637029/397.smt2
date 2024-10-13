(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2781 0)
(declare-sort var3061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var3061_random/1671104558 (Int (Array Int Int)) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1803 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1803 null-Int)))
(declare-const var2336 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2336 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert (not (= var2336 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var665 (Array Int Int) (toCharArray/415275702 var2336)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var165 String (var3061_random/1671104558 var1803 var665)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.RandomStringUtils: java.lang.String random(int,char[])>(i0, $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var3061_random/1671104558=([int, char[]], java.lang.String)}
; {var1803=i0, var2336=r0, var2781=null_type, var665=$r1, var3061=org.apache.commons.lang3.RandomStringUtils, var165=$r2}
; {i0=var1803, r0=var2336, null_type=var2781, $r1=var665, org.apache.commons.lang3.RandomStringUtils=var3061, $r2=var165}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r2 = staticinvoke <org.apache.commons.lang3.RandomStringUtils: java.lang.String random(int,char[])>(i0, $r1);	return $r2
;block_num 2