(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var880 0)
(declare-sort var3485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3485_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var677 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var677 null-String)))
(declare-const var3370 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3370 null-String)))
(define-const var1875 Bool (var3485_isEmpty/1595667738 (cast-from-String-to-String var677))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1875 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r1 != null goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert (not (= var3370 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2178 Int (indexOf/-1209756239 var677 var3370)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var838 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= var2178 var838))) ; Cond: i0 != $i4 
(assert true)
(define-const var3016 Int (length/-134980193 var3370)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1131 Int (+ var2178 var3016)) ; Statement: $i2 = i0 + $i1 
(assert (not (and true (and (>= var1131 0) (>= (str.len var677) var1131)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3485_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var677=r0, var880=null_type, var3370=r1, var3485=org.apache.commons.lang3.StringUtils, var1875=$z0, var2178=i0, var838=$i4, var3016=$i1, var1131=$i2, var1914=$r2}
; {r0=var677, null_type=var880, r1=var3370, org.apache.commons.lang3.StringUtils=var3485, $z0=var1875, i0=var2178, $i4=var838, $i1=var3016, $i2=var1131, $r2=var1914}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto (branch);	if r1 != null goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i4 = (int) -1;	if i0 != $i4 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = i0 + $i1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	return $r2
;block_num 4