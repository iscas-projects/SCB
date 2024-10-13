(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1685 0)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persistenceUnit/-273342067 (var1685) var814)
(declare-fun var814_getName/1835464264 (var814) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1685 var1685)
(declare-const var3905 var1685) ; Statement: r1 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var3905 null-var1685)))
(define-const var824 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var824)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var824!1 String)
(assert (= var824!1 ""))
(assert true)
(define-const var477 String (append/672562846 var824!1 "[PersistenceUnit: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[PersistenceUnit: ") 
(declare-const var824!2 String)
(assert (= var824!2 (str.++ var824!1 "[PersistenceUnit: ")))
(define-const var473 var814 (persistenceUnit/-273342067 var3905)) ; Statement: $r2 = r1.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor persistenceUnit> 
(define-const var178 String (var814_getName/1835464264 var473)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2326 String (append/672562846 var477 var178)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var477!1 String)
(assert (= var477!1 (str.++ var477 var178)))
(assert true)
(define-const var3062 String (append/672562846 var2326 "] ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 "] ")))
(assert true)
(define-const var1706 String (toString/-2075883882 var3062)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persistenceUnit/-273342067=([org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl], org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor), var814_getName/1835464264=([org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1685=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var3905=r1, var824=$r0, var477=$r4, var814=org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor, var473=$r2, var178=$r3, var2326=$r5, var3062=$r6, var1706=$r7}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var1685, r1=var3905, $r0=var824, $r4=var477, org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor=var814, $r2=var473, $r3=var178, $r5=var2326, $r6=var3062, $r7=var1706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[PersistenceUnit: ");	$r2 = r1.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor persistenceUnit>;	$r3 = interfaceinvoke $r2.<org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1