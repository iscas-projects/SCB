(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun append/-359508548 (var3962 String Int Int) var3962)
(declare-const null-var3962 var3962)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2486 var3962) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2486 null-var3962)))
(declare-const var2122 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2122 null-String)))
(declare-const var2549 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2549 null-Int)))
(declare-const var602 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var602 null-Int)))
 ; Statement: if r0 != null goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var2122 null-String))) ; Cond: r0 != null 
(define-const var2219 String (String_toString/-1426662429 var2122)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var977 var3962 (append/-359508548 var2486 var2219 var2549 var602)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String,int,int)>($r2, i0, i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), append/-359508548=([org.apache.commons.lang3.text.StrBuilder, java.lang.String, int, int], org.apache.commons.lang3.text.StrBuilder)}
; {var3962=org.apache.commons.lang3.text.StrBuilder, var2486=r1, var2122=r0, var2549=i0, var602=i1, var2219=$r2, var977=$r3}
; {org.apache.commons.lang3.text.StrBuilder=var3962, r1=var2486, r0=var2122, i0=var2549, i1=var602, $r2=var2219, $r3=var977}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	if r0 != null goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = virtualinvoke r1.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String,int,int)>($r2, i0, i1);	return $r3
;block_num 2