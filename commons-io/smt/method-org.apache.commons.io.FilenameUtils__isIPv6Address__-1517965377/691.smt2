(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-const null-String String)
(declare-const var1737 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1737 null-String)))
(assert true)
(define-const var422 Bool (contains/1009244746 var1737 (cast-from-String-to-String "::"))) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("::") 
 ; Statement: if z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(":") 
(assert (not (= (ite var422 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var212 Int (indexOf/-1209756239 var1737 "::")) ; Statement: $i6 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("::") 
(assert true)
(define-const var433 Int (lastIndexOf/-618837785 var1737 "::")) ; Statement: $i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("::") 
 ; Statement: if $i6 == $i5 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(":") 
(assert (not (= var212 var433))) ; Negate: Cond: $i6 == $i5  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1209756239=([java.lang.String, java.lang.String], int), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int)}
; {var1737=r0, var1777=null_type, var422=z0, var212=$i6, var433=$i5}
; {r0=var1737, null_type=var1777, z0=var422, $i6=var212, $i5=var433}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("::");	if z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(":");	$i6 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("::");	$i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("::");	if $i6 == $i5 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(":");	return 0
;block_num 3