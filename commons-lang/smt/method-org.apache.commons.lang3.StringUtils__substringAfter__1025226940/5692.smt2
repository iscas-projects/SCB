(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort var106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var106_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1629 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1629 null-String)))
(declare-const var3173 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3173 null-Int)))
(define-const var1212 Bool (var106_isEmpty/1595667738 (cast-from-String-to-String var1629))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(assert (= (ite var1212 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1814 Int (indexOf/-1037706067 var1629 var3173)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(define-const var2237 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $i2 = i1 + 1 
(assert (not (not (= var1814 var2237)))) ; Negate: Cond: i1 != $i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var106_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1629=r0, var2717=null_type, var3173=i0, var106=org.apache.commons.lang3.StringUtils, var1212=$z0, var1814=i1, var2237=$i4}
; {r0=var1629, null_type=var2717, i0=var3173, org.apache.commons.lang3.StringUtils=var106, $z0=var1212, i1=var1814, $i4=var2237}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	$i4 = (int) -1;	if i1 != $i4 goto $i2 = i1 + 1;	return ""
;block_num 3