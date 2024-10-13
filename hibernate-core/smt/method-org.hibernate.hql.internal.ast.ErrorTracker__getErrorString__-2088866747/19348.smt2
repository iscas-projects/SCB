(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1872 0)
(declare-sort var454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun errorList/-500160548 (var1872) var454)
(declare-fun var454_iterator/-912451715 (var454) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1872 var1872)
(declare-const var3822 var1872) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.ErrorTracker 
(assert (not (= var3822 null-var1872)))
(define-const var444 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var444)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var444!1 String)
(assert (= var444!1 ""))
(define-const var1229 var454 (errorList/-500160548 var3822)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.ErrorTracker: java.util.List errorList> 
(define-const var2719 Iterator (var454_iterator/-912451715 var1229)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3583 Bool (Iterator_hasNext/-1669924200 var2719)) ; Statement: $z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3583 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2790 String (toString/-2075883882 var444!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), errorList/-500160548=([org.hibernate.hql.internal.ast.ErrorTracker], java.util.List), var454_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1872=org.hibernate.hql.internal.ast.ErrorTracker, var3822=r1, var444=$r0, var454=java.util.List, var1229=$r2, var2719=r3, var3583=$z1, var2790=$r4}
; {org.hibernate.hql.internal.ast.ErrorTracker=var1872, r1=var3822, $r0=var444, java.util.List=var454, $r2=var1229, r3=var2719, $z1=var3583, $r4=var2790}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.ErrorTracker;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.hql.internal.ast.ErrorTracker: java.util.List errorList>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3