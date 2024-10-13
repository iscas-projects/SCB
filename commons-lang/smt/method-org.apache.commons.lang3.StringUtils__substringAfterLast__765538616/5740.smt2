(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3429 0)
(declare-sort var276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var276_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var184 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var184 null-String)))
(declare-const var3177 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3177 null-String)))
(define-const var409 Bool (var276_isEmpty/1595667738 (cast-from-String-to-String var184))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
(assert (= (ite var409 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1281 Bool (var276_isEmpty/1595667738 (cast-from-String-to-String var3177))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(assert (= (ite var1281 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3692 Int (lastIndexOf/-618837785 var184 var3177)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(define-const var903 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 == $i7 goto return "" 
(assert (= var3692 var903)) ; Cond: i0 == $i7 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var276_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var184=r0, var3429=null_type, var3177=r1, var276=org.apache.commons.lang3.StringUtils, var409=$z0, var1281=$z1, var3692=i0, var903=$i7}
; {r0=var184, null_type=var3429, r1=var3177, org.apache.commons.lang3.StringUtils=var276, $z0=var409, $z1=var1281, i0=var3692, $i7=var903}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	$i7 = (int) -1;	if i0 == $i7 goto return "";	return ""
;block_num 4