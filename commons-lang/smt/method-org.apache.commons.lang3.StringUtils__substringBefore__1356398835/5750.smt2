(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2058 0)
(declare-sort var1078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1078_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1862 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1862 null-String)))
(declare-const var1027 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1027 null-Int)))
(define-const var1170 Bool (var1078_isEmpty/1595667738 (cast-from-String-to-String var1862))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(assert (= (ite var1170 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var219 Int (indexOf/-1037706067 var1862 var1027)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(define-const var3716 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 != $i3 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (not (= var219 var3716)))) ; Negate: Cond: i1 != $i3  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1078_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1862=r0, var2058=null_type, var1027=i0, var1078=org.apache.commons.lang3.StringUtils, var1170=$z0, var219=i1, var3716=$i3}
; {r0=var1862, null_type=var2058, i0=var1027, org.apache.commons.lang3.StringUtils=var1078, $z0=var1170, i1=var219, $i3=var3716}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	$i3 = (int) -1;	if i1 != $i3 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	return r0
;block_num 3