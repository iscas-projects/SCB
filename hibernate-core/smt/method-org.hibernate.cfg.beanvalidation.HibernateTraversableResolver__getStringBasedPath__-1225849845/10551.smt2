(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var3842 0)
(declare-sort var2506 0)
(declare-sort var3488 0)
(declare-sort var3771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2506_iterator/-1089954711 (var2506) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3842_getName/942764273 (var3842) String)
(declare-fun var3771-init () var3771)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3771 String) void)
(declare-const null-var617 var617)
(declare-const null-var3842 var3842)
(declare-const null-var2506 var2506)
(declare-const null-String String)
(declare-const var1588 var617) ; Statement: r18 := @this: org.hibernate.cfg.beanvalidation.HibernateTraversableResolver 
(assert (not (= var1588 null-var617)))
(declare-const var596 var3842) ; Statement: r3 := @parameter0: javax.validation.Path$Node 
(assert (not (= var596 null-var3842)))
(declare-const var540 var2506) ; Statement: r1 := @parameter1: javax.validation.Path 
(assert (not (= var540 null-var2506)))
(define-const var1533 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1533)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1533!1 String)
(assert (= var1533!1 ""))
(define-const var1032 Iterator (var2506_iterator/-1089954711 var540)) ; Statement: r2 = interfaceinvoke r1.<javax.validation.Path: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1335 Bool (Iterator_hasNext/-1669924200 var1032)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
(assert (= (ite var1335 1 0) 0)) ; Cond: $z0 == 0 
(define-const var662 String (var3842_getName/942764273 var596)) ; Statement: $r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
 ; Statement: if $r4 != null goto $r5 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
(assert (not (not (= var662 null-String)))) ; Negate: Cond: $r4 != null  
(define-const var3667 var3771 var3771-init) ; Statement: $r7 = new org.hibernate.AssertionFailure 
(define-const var653 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var653)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var653!1 String)
(assert (= var653!1 ""))
(assert true)
(define-const var1862 String (append/672562846 var653!1 "TraversableResolver being passed a traversableProperty with null name. pathToTraversableObject: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TraversableResolver being passed a traversableProperty with null name. pathToTraversableObject: ") 
(declare-const var653!2 String)
(assert (= var653!2 (str.++ var653!1 "TraversableResolver being passed a traversableProperty with null name. pathToTraversableObject: ")))
(assert true)
(define-const var1614 String (toString/-2075883882 var1533!1)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3839 String (append/672562846 var1862 var1614)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1862!1 String)
(assert (= var1862!1 (str.++ var1862 var1614)))
(assert true)
(define-const var1484 String (toString/-2075883882 var3839)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3667 var1484)) ; Statement: specialinvoke $r7.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r12) 

(declare-const var3667!1 var3771)
(declare-const var1484!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2506_iterator/-1089954711=([javax.validation.Path], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3842_getName/942764273=([javax.validation.Path$Node], java.lang.String), var3771-init=([], org.hibernate.AssertionFailure), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var617=org.hibernate.cfg.beanvalidation.HibernateTraversableResolver, var1588=r18, var3842=javax.validation.Path$Node, var596=r3, var2506=javax.validation.Path, var540=r1, var1533=$r0, var1032=r2, var1335=$z0, var662=$r4, var3488=null_type, var3771=org.hibernate.AssertionFailure, var3667=$r7, var653=$r8, var1862=$r10, var1614=$r9, var3839=$r11, var1484=$r12}
; {org.hibernate.cfg.beanvalidation.HibernateTraversableResolver=var617, r18=var1588, javax.validation.Path$Node=var3842, r3=var596, javax.validation.Path=var2506, r1=var540, $r0=var1533, r2=var1032, $z0=var1335, $r4=var662, null_type=var3488, org.hibernate.AssertionFailure=var3771, $r7=var3667, $r8=var653, $r10=var1862, $r9=var1614, $r11=var3839, $r12=var1484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r18 := @this: org.hibernate.cfg.beanvalidation.HibernateTraversableResolver;	r3 := @parameter0: javax.validation.Path$Node;	r1 := @parameter1: javax.validation.Path;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<javax.validation.Path: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	$r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	if $r4 != null goto $r5 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	$r7 = new org.hibernate.AssertionFailure;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TraversableResolver being passed a traversableProperty with null name. pathToTraversableObject: ");	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 4