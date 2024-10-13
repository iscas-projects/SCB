(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3555 0)
(declare-sort var804 0)
(declare-sort var3454 0)
(declare-sort var743 0)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3555_getMetamodel/-448631894 (var3555) var3454)
(declare-fun var3454_getEntityTypeByName/-1119869897 (var3454 String) var743)
(declare-fun var280-init () var280)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var280 String) void)
(declare-const null-var3555 var3555)
(declare-const null-String String)
(declare-const null-var743 var743)
(declare-const var1135 var3555) ; Statement: r0 := @this: org.hibernate.jpa.HibernateEntityManagerFactory 
(assert (not (= var1135 null-var3555)))
(declare-const var1677 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1677 null-String)))
(define-const var2043 var3454 (var3555_getMetamodel/-448631894 var1135)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.jpa.HibernateEntityManagerFactory: org.hibernate.Metamodel getMetamodel()>() 
(define-const var3746 var743 (var3454_getEntityTypeByName/-1119869897 var2043 var1677)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.Metamodel: javax.persistence.metamodel.EntityType getEntityTypeByName(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var3746 null-var743)))) ; Negate: Cond: r3 != null  
(define-const var2967 var280 var280-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1959 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1959)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1959!1 String)
(assert (= var1959!1 ""))
(assert true)
(define-const var2388 String (append/672562846 var1959!1 "[")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1959!2 String)
(assert (= var1959!2 (str.++ var1959!1 "[")))
(assert true)
(define-const var3159 String (append/672562846 var2388 var1677)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2388!1 String)
(assert (= var2388!1 (str.++ var2388 var1677)))
(assert true)
(define-const var1208 String (append/672562846 var3159 "] did not refer to EntityType")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not refer to EntityType") 
(declare-const var3159!1 String)
(assert (= var3159!1 (str.++ var3159 "] did not refer to EntityType")))
(assert true)
(define-const var2036 String (toString/-2075883882 var1208)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2967 var2036)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2967!1 var280)
(declare-const var2036!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3555_getMetamodel/-448631894=([org.hibernate.jpa.HibernateEntityManagerFactory], org.hibernate.Metamodel), var3454_getEntityTypeByName/-1119869897=([org.hibernate.Metamodel, java.lang.String], javax.persistence.metamodel.EntityType), var280-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3555=org.hibernate.jpa.HibernateEntityManagerFactory, var1135=r0, var1677=r1, var804=null_type, var3454=org.hibernate.Metamodel, var2043=$r2, var743=javax.persistence.metamodel.EntityType, var3746=r3, var280=java.lang.IllegalArgumentException, var2967=$r4, var1959=$r5, var2388=$r6, var3159=$r7, var1208=$r8, var2036=$r9}
; {org.hibernate.jpa.HibernateEntityManagerFactory=var3555, r0=var1135, r1=var1677, null_type=var804, org.hibernate.Metamodel=var3454, $r2=var2043, javax.persistence.metamodel.EntityType=var743, r3=var3746, java.lang.IllegalArgumentException=var280, $r4=var2967, $r5=var1959, $r6=var2388, $r7=var3159, $r8=var1208, $r9=var2036}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.HibernateEntityManagerFactory;	r1 := @parameter0: java.lang.String;	$r2 = interfaceinvoke r0.<org.hibernate.jpa.HibernateEntityManagerFactory: org.hibernate.Metamodel getMetamodel()>();	r3 = interfaceinvoke $r2.<org.hibernate.Metamodel: javax.persistence.metamodel.EntityType getEntityTypeByName(java.lang.String)>(r1);	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not refer to EntityType");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2