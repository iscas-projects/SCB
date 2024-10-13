(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3660 0)
(declare-sort var695 0)
(declare-sort var1446 0)
(declare-sort var1177 0)
(declare-sort var3035 0)
(declare-sort var1863 0)
(declare-sort var2827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultImplClassByMode/854309807 (var3660) var1177)
(declare-fun var1177_get/1088891777 (var1177 var3035) var3035)
(declare-fun cast-from-var695-to-var3035 (var695) var3035)
(declare-fun cast-from-var3035-to-ClassObject (var3035) ClassObject)
(declare-fun var1863-init () var1863)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3035) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1863 String) void)
(declare-fun cast-from-var1863-to-var2827 (var1863) var2827)
(declare-const null-var3660 var3660)
(declare-const null-var695 var695)
(declare-const null-var1446 var1446)
(declare-const null-ClassObject ClassObject)
(declare-const var1373 var3660) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory 
(assert (not (= var1373 null-var3660)))
(declare-const var39 var695) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var39 null-var695)))
(declare-const var2442 var1446) ; Statement: r5 := @parameter1: org.hibernate.mapping.Component 
(assert (not (= var2442 null-var1446)))
(define-const var3015 var1177 (defaultImplClassByMode/854309807 var1373)) ; Statement: $r2 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode> 
(define-const var3590 var3035 (var1177_get/1088891777 var3015 (cast-from-var695-to-var3035 var39))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1523 ClassObject (cast-from-var3035-to-ClassObject var3590)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto $r6 = virtualinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: org.hibernate.tuple.component.ComponentTuplizer constructTuplizer(java.lang.Class,org.hibernate.mapping.Component)>(r4, r5) 
(assert (not (not (= var1523 null-ClassObject)))) ; Negate: Cond: r4 != null  
(define-const var1702 var1863 var1863-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var1818 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1818)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1818!1 String)
(assert (= var1818!1 ""))
(assert true)
(define-const var3182 String (append/672562846 var1818!1 "could not determine default tuplizer class to use [")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not determine default tuplizer class to use [") 
(declare-const var1818!2 String)
(assert (= var1818!2 (str.++ var1818!1 "could not determine default tuplizer class to use [")))
(assert true)
(define-const var94 String (append/-1031950772 var3182 (cast-from-var695-to-var3035 var39))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3182!1 String)
(assert (str.prefixof var3182 var3182!1))
(assert true)
(define-const var1949 String (append/672562846 var94 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var94!1 String)
(assert (= var94!1 (str.++ var94 "]")))
(assert true)
(define-const var1384 String (toString/-2075883882 var1949)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1702 var1384)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var1702!1 var1863)
(declare-const var1384!1 String)
(define-const var777 var2827 (cast-from-var1863-to-var2827 var1702!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultImplClassByMode/854309807=([org.hibernate.tuple.component.ComponentTuplizerFactory], java.util.Map), var1177_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var695-to-var3035=([org.hibernate.EntityMode], java.lang.Object), cast-from-var3035-to-ClassObject=([java.lang.Object], java.lang.Class), var1863-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1863-to-var2827=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3660=org.hibernate.tuple.component.ComponentTuplizerFactory, var1373=r0, var695=org.hibernate.EntityMode, var39=r1, var1446=org.hibernate.mapping.Component, var2442=r5, var1177=java.util.Map, var3015=$r2, var3035=java.lang.Object, var3590=$r3, var1523=r4, var1863=org.hibernate.HibernateException, var1702=$r14, var1818=$r13, var3182=$r9, var94=$r10, var1949=$r11, var1384=$r12, var2827=java.lang.Throwable, var777=$r15}
; {org.hibernate.tuple.component.ComponentTuplizerFactory=var3660, r0=var1373, org.hibernate.EntityMode=var695, r1=var39, org.hibernate.mapping.Component=var1446, r5=var2442, java.util.Map=var1177, $r2=var3015, java.lang.Object=var3035, $r3=var3590, r4=var1523, org.hibernate.HibernateException=var1863, $r14=var1702, $r13=var1818, $r9=var3182, $r10=var94, $r11=var1949, $r12=var1384, java.lang.Throwable=var2827, $r15=var777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r5 := @parameter1: org.hibernate.mapping.Component;	$r2 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto $r6 = virtualinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: org.hibernate.tuple.component.ComponentTuplizer constructTuplizer(java.lang.Class,org.hibernate.mapping.Component)>(r4, r5);	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not determine default tuplizer class to use [");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2