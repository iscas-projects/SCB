(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var2028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-String String)
(declare-const var2028-FIELD_STRING_VALUE_ERROR Bool)
(declare-const var2421 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2421 null-String)))
(define-const var1207 Bool var2028-FIELD_STRING_VALUE_ERROR) ; Statement: $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean FIELD_STRING_VALUE_ERROR> 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert (not (= (ite var1207 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1338 (Array Int Int) (toCharArray/415275702 var2421)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var2421=r0, var3736=null_type, var2028=com.alibaba.fastjson2.util.JDKUtils, var1207=$z0, var1338=$r1}
; {r0=var2421, null_type=var3736, com.alibaba.fastjson2.util.JDKUtils=var2028, $z0=var1207, $r1=var1338}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean FIELD_STRING_VALUE_ERROR>;	if $z0 != 0 goto $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	return $r1
;block_num 2