(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var333 0)
(declare-sort var3611 0)
(declare-sort var526 0)
(declare-sort var3036 0)
(declare-sort var3748 0)
(declare-sort var2808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyIndexes/744999620 (var333) var526)
(declare-fun var526_get/1088891777 (var526 var3036) var3036)
(declare-fun cast-from-String-to-var3036 (String) var3036)
(declare-fun cast-from-var3036-to-Int (var3036) Int)
(declare-fun var3748-init () var3748)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3748 String) void)
(declare-fun cast-from-var3748-to-var2808 (var3748) var2808)
(declare-const null-var333 var333)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3255 var333) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentMetamodel 
(assert (not (= var3255 null-var333)))
(declare-const var416 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var416 null-String)))
(define-const var454 var526 (propertyIndexes/744999620 var3255)) ; Statement: $r2 = r0.<org.hibernate.tuple.component.ComponentMetamodel: java.util.Map propertyIndexes> 
(define-const var1994 var3036 (var526_get/1088891777 var454 (cast-from-String-to-var3036 var416))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var490 Int (cast-from-var3036-to-Int var1994)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var490 null-Int)))) ; Negate: Cond: r4 != null  
(define-const var280 var3748 var3748-init) ; Statement: $r12 = new org.hibernate.HibernateException 
(define-const var1808 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1808)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1808!1 String)
(assert (= var1808!1 ""))
(assert true)
(define-const var761 String (append/672562846 var1808!1 "component does not contain such a property [")) ; Statement: $r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component does not contain such a property [") 
(declare-const var1808!2 String)
(assert (= var1808!2 (str.++ var1808!1 "component does not contain such a property [")))
(assert true)
(define-const var152 String (append/672562846 var761 var416)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var761!1 String)
(assert (= var761!1 (str.++ var761 var416)))
(assert true)
(define-const var2532 String (append/672562846 var152 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var152!1 String)
(assert (= var152!1 (str.++ var152 "]")))
(assert true)
(define-const var1135 String (toString/-2075883882 var2532)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var280 var1135)) ; Statement: specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var280!1 var3748)
(declare-const var1135!1 String)
(define-const var1012 var2808 (cast-from-var3748-to-var2808 var280!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyIndexes/744999620=([org.hibernate.tuple.component.ComponentMetamodel], java.util.Map), var526_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3036=([java.lang.String], java.lang.Object), cast-from-var3036-to-Int=([java.lang.Object], java.lang.Integer), var3748-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3748-to-var2808=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var333=org.hibernate.tuple.component.ComponentMetamodel, var3255=r0, var416=r1, var3611=null_type, var526=java.util.Map, var454=$r2, var3036=java.lang.Object, var1994=$r3, var490=r4, var3748=org.hibernate.HibernateException, var280=$r12, var1808=$r11, var761=$r7, var152=$r8, var2532=$r9, var1135=$r10, var2808=java.lang.Throwable, var1012=$r13}
; {org.hibernate.tuple.component.ComponentMetamodel=var333, r0=var3255, r1=var416, null_type=var3611, java.util.Map=var526, $r2=var454, java.lang.Object=var3036, $r3=var1994, r4=var490, org.hibernate.HibernateException=var3748, $r12=var280, $r11=var1808, $r7=var761, $r8=var152, $r9=var2532, $r10=var1135, java.lang.Throwable=var2808, $r13=var1012}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentMetamodel;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.tuple.component.ComponentMetamodel: java.util.Map propertyIndexes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r12 = new org.hibernate.HibernateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component does not contain such a property [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2