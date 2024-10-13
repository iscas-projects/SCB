(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3086 0)
(declare-sort var1014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1014_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3979 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3979 null-String)))
(declare-const var3226 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3226 null-String)))
(define-const var2941 Bool (var1014_isEmpty/1595667738 (cast-from-String-to-String var3979))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2941 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r1 != null goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (= var3226 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var1588 Bool (isEmpty/-1285796103 var3226)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert (= (ite var1588 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1445 Int (indexOf/-1209756239 var3979 var3226)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var336 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var1445 var336)))) ; Negate: Cond: i0 != $i2  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1014_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-1285796103=([java.lang.String], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3979=r0, var3086=null_type, var3226=r1, var1014=org.apache.commons.lang3.StringUtils, var2941=$z0, var1588=$z1, var1445=i0, var336=$i2}
; {r0=var3979, null_type=var3086, r1=var3226, org.apache.commons.lang3.StringUtils=var1014, $z0=var2941, $z1=var1588, i0=var1445, $i2=var336}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if r1 != null goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return r0
;block_num 5