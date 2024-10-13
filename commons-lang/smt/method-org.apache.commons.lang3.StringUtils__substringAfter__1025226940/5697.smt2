(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1623 0)
(declare-sort var1786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1786_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3283 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3283 null-String)))
(declare-const var427 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var427 null-Int)))
(define-const var1606 Bool (var1786_isEmpty/1595667738 (cast-from-String-to-String var3283))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(assert (= (ite var1606 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3330 Int (indexOf/-1037706067 var3283 var427)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0) 
(define-const var1853 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $i2 = i1 + 1 
(assert (not (= var3330 var1853))) ; Cond: i1 != $i4 
(define-const var951 Int (+ var3330 1)) ; Statement: $i2 = i1 + 1 
(assert (and true (and (>= var951 0) (>= (str.len var3283) var951))))
(define-const var2924 String (substring/850833817 var3283 var951)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1786_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3283=r0, var1623=null_type, var427=i0, var1786=org.apache.commons.lang3.StringUtils, var1606=$z0, var3330=i1, var1853=$i4, var951=$i2, var2924=$r1}
; {r0=var3283, null_type=var1623, i0=var427, org.apache.commons.lang3.StringUtils=var1786, $z0=var1606, i1=var3330, $i4=var1853, $i2=var951, $r1=var2924}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(i0);	$i4 = (int) -1;	if i1 != $i4 goto $i2 = i1 + 1;	$i2 = i1 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	return $r1
;block_num 3