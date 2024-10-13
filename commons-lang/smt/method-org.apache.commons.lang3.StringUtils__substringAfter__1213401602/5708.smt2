(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2052 0)
(declare-sort var617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var617_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2353 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2353 null-String)))
(declare-const var740 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var740 null-String)))
(define-const var2547 Bool (var617_isEmpty/1595667738 (cast-from-String-to-String var2353))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2547 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r1 != null goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert (not (= var740 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3587 Int (indexOf/-1209756239 var2353 var740)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var2131 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= var3587 var2131)))) ; Negate: Cond: i0 != $i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var617_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2353=r0, var2052=null_type, var740=r1, var617=org.apache.commons.lang3.StringUtils, var2547=$z0, var3587=i0, var2131=$i4}
; {r0=var2353, null_type=var2052, r1=var740, org.apache.commons.lang3.StringUtils=var617, $z0=var2547, i0=var3587, $i4=var2131}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto (branch);	if r1 != null goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i4 = (int) -1;	if i0 != $i4 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	return ""
;block_num 4