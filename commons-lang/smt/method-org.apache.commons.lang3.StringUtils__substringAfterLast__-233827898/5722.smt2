(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1597 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1657_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3883 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3883 null-String)))
(declare-const var1756 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1756 null-Int)))
(define-const var1429 Bool (var1657_isEmpty/1595667738 (cast-from-String-to-String var3883))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0) 
(assert (= (ite var1429 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var996 Int (lastIndexOf/-1292097097 var3883 var1756)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0) 
(define-const var3317 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i1 == $i6 goto return "" 
(assert (= var996 var3317)) ; Cond: i1 == $i6 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1657_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3883=r0, var1597=null_type, var1756=i0, var1657=org.apache.commons.lang3.StringUtils, var1429=$z0, var996=i1, var3317=$i6}
; {r0=var3883, null_type=var1597, i0=var1756, org.apache.commons.lang3.StringUtils=var1657, $z0=var1429, i1=var996, $i6=var3317}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0);	$i6 = (int) -1;	if i1 == $i6 goto return "";	return ""
;block_num 3