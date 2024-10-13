(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var3660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3660_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1621 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1621 null-String)))
(declare-const var3532 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3532 null-String)))
(define-const var3040 Bool (var3660_isEmpty/1595667738 (cast-from-String-to-String var1621))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3040 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r1 != null goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (= var3532 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3700 Bool (isEmpty/-1285796103 var3532)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert (= (ite var3700 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3059 Int (indexOf/-1209756239 var1621 var3532)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var3032 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var3059 var3032))) ; Cond: i0 != $i2 
(assert (and true (and (>= 0 0) (>= (str.len var1621) var3059) (>= var3059 0))))
(define-const var982 String (substring/-1240304868 var1621 0 var3059)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3660_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-1285796103=([java.lang.String], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1621=r0, var3862=null_type, var3532=r1, var3660=org.apache.commons.lang3.StringUtils, var3040=$z0, var3700=$z1, var3059=i0, var3032=$i2, var982=$r2}
; {r0=var1621, null_type=var3862, r1=var3532, org.apache.commons.lang3.StringUtils=var3660, $z0=var3040, $z1=var3700, i0=var3059, $i2=var3032, $r2=var982}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if r1 != null goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r2
;block_num 5