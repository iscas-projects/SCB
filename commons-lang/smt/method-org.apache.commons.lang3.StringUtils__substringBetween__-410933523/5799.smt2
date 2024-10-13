(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1416 0)
(declare-sort var2522 0)
(declare-sort var529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2522-init () (Array Int var2522))
(declare-fun cast-from-String-to-var2522 (String) var2522)
(declare-fun var529_allNotNull/1601190162 ((Array Int var2522)) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-__Array__Int__var2522__ (Array Int var2522))
(declare-const var753 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var753 null-String)))
(declare-const var668 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var668 null-String)))
(declare-const var999 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var999 null-String)))
(define-const var982 (Array Int var2522) arr-var2522-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var982!1 (Array Int var2522))
(assert (not (= var982!1 null-__Array__Int__var2522__)))
(assert (= (select var982!1 0) (cast-from-String-to-var2522 var753))) ; Statement: $r0[0] = r1 
(declare-const var982!2 (Array Int var2522))
(assert (not (= var982!2 null-__Array__Int__var2522__)))
(assert (= (select var982!2 1) (cast-from-String-to-var2522 var668))) ; Statement: $r0[1] = r2 
(declare-const var982!3 (Array Int var2522))
(assert (not (= var982!3 null-__Array__Int__var2522__)))
(assert (= (select var982!3 2) (cast-from-String-to-var2522 var999))) ; Statement: $r0[2] = r3 
(define-const var3594 Bool (var529_allNotNull/1601190162 var982!3)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean allNotNull(java.lang.Object[])>($r0) 
 ; Statement: if $z0 != 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2) 
(assert (not (= (ite var3594 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3138 Int (indexOf/-1209756239 var753 var668)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2) 
(define-const var973 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 == $i7 goto return null 
(assert (= var3138 var973)) ; Cond: i0 == $i7 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2522-init=([], java.lang.Object[]), cast-from-String-to-var2522=([java.lang.String], java.lang.Object), var529_allNotNull/1601190162=([java.lang.Object[]], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var753=r1, var1416=null_type, var668=r2, var999=r3, var2522=java.lang.Object, var982=$r0, var529=org.apache.commons.lang3.ObjectUtils, var3594=$z0, var3138=i0, var973=$i7}
; {r1=var753, null_type=var1416, r2=var668, r3=var999, java.lang.Object=var2522, $r0=var982, org.apache.commons.lang3.ObjectUtils=var529, $z0=var3594, i0=var3138, $i7=var973}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean allNotNull(java.lang.Object[])>($r0);	if $z0 != 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2);	i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2);	$i7 = (int) -1;	if i0 == $i7 goto return null;	return null
;block_num 3