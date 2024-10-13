(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3931 0)
(declare-sort var2655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2655_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2854 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2854 null-String)))
(declare-const var2164 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2164 null-Int)))
(define-const var116 Bool (var2655_isEmpty/1595667738 (cast-from-String-to-String var2854))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var116 1 0) 0)) ; Cond: $z0 == 0 
(assert (not (and true (and (> (str.len var2854) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2655_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char)}
; {var2854=r0, var3931=null_type, var2164=c0, var2655=org.apache.commons.lang3.StringUtils, var116=$z0, var3421=$c1}
; {r0=var2854, null_type=var3931, c0=var2164, org.apache.commons.lang3.StringUtils=var2655, $z0=var116, $c1=var3421}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return $c1
;block_num 3