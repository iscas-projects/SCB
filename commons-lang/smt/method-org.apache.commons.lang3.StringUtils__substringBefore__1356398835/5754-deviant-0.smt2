(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var953_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2282 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2282 null-String)))
(declare-const var2362 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2362 null-Int)))
(define-const var3699 Bool (var953_isEmpty/1595667738 (cast-from-String-to-String var2282))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(assert (= (ite var3699 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3773 Int (indexOf/-1037706067 var2282 var2362)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(define-const var639 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 != $i3 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (= var3773 var639))) ; Cond: i1 != $i3 
(assert (not (and true (and (>= 0 0) (>= (str.len var2282) var3773) (>= var3773 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var953_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2282=r0, var3402=null_type, var2362=i0, var953=org.apache.commons.lang3.StringUtils, var3699=$z0, var3773=i1, var639=$i3, var1949=$r1}
; {r0=var2282, null_type=var3402, i0=var2362, org.apache.commons.lang3.StringUtils=var953, $z0=var3699, i1=var3773, $i3=var639, $r1=var1949}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	$i3 = (int) -1;	if i1 != $i3 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	return $r1
;block_num 3