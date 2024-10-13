(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1998 0)
(declare-sort var3787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/207920178 (var3787) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1998 var1998)
(declare-const null-var3787 var3787)
(declare-const var2006 var1998) ; Statement: r4 := @this: org.hibernate.type.descriptor.java.LocaleTypeDescriptor$LocaleComparator 
(assert (not (= var2006 null-var1998)))
(declare-const var2067 var3787) ; Statement: r0 := @parameter0: java.util.Locale 
(assert (not (= var2067 null-var3787)))
(declare-const var3964 var3787) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var3964 null-var3787)))
(assert true)
(define-const var2770 String (toString/207920178 var2067)) ; Statement: $r3 = virtualinvoke r0.<java.util.Locale: java.lang.String toString()>() 
(assert true)
(define-const var1091 String (toString/207920178 var3964)) ; Statement: $r2 = virtualinvoke r1.<java.util.Locale: java.lang.String toString()>() 
(assert true)
(define-const var3407 Int (compareTo/1411385946 var2770 var1091)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2770 var1091)) (this<=other (str.<= var2770 var1091)) (compareRes (compareTo/1411385946 var2770 var1091))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/207920178=([java.util.Locale], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1998=org.hibernate.type.descriptor.java.LocaleTypeDescriptor$LocaleComparator, var2006=r4, var3787=java.util.Locale, var2067=r0, var3964=r1, var2770=$r3, var1091=$r2, var3407=$i0}
; {org.hibernate.type.descriptor.java.LocaleTypeDescriptor$LocaleComparator=var1998, r4=var2006, java.util.Locale=var3787, r0=var2067, r1=var3964, $r3=var2770, $r2=var1091, $i0=var3407}
;seq <java.util.Locale: java.lang.String toString()>;	<java.util.Locale: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.type.descriptor.java.LocaleTypeDescriptor$LocaleComparator;	r0 := @parameter0: java.util.Locale;	r1 := @parameter1: java.util.Locale;	$r3 = virtualinvoke r0.<java.util.Locale: java.lang.String toString()>();	$r2 = virtualinvoke r1.<java.util.Locale: java.lang.String toString()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1