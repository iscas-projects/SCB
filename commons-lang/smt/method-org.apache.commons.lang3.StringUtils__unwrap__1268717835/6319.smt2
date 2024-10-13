(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var223 0)
(declare-sort var1210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1210_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1990 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1990 null-String)))
(declare-const var2055 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2055 null-Int)))
(define-const var2722 Bool (var1210_isEmpty/1595667738 (cast-from-String-to-String var1990))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2722 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 == 0 goto return r0 
(assert (not (= var2055 0))) ; Negate: Cond: c0 == 0  
(assert true)
(define-const var3635 Int (length/-134980193 var1990)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var3635 1)))) ; Negate: Cond: $i1 != 1  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1210_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int)}
; {var1990=r0, var223=null_type, var2055=c0, var1210=org.apache.commons.lang3.StringUtils, var2722=$z0, var3635=$i1}
; {r0=var1990, null_type=var223, c0=var2055, org.apache.commons.lang3.StringUtils=var1210, $z0=var2722, $i1=var3635}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 == 0 goto return r0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return r0
;block_num 4