(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1964_getName/1835464264 (var1964) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1964 var1964)
(declare-const var3913 var1964) ; Statement: r1 := @parameter0: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor 
(assert (not (= var3913 null-var1964)))
(define-const var2015 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2015)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2015!1 String)
(assert (= var2015!1 ""))
(assert true)
(define-const var825 String (append/672562846 var2015!1 "[PersistenceUnit: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[PersistenceUnit: ") 
(declare-const var2015!2 String)
(assert (= var2015!2 (str.++ var2015!1 "[PersistenceUnit: ")))
(define-const var270 String (var1964_getName/1835464264 var3913)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var1103 String (append/672562846 var825 var270)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var825!1 String)
(assert (= var825!1 (str.++ var825 var270)))
(assert true)
(define-const var1274 String (append/672562846 var1103 "] ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1103!1 String)
(assert (= var1103!1 (str.++ var1103 "] ")))
(assert true)
(define-const var73 String (toString/-2075883882 var1274)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1964_getName/1835464264=([org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1964=org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor, var3913=r1, var2015=$r0, var825=$r3, var270=$r2, var1103=$r4, var1274=$r5, var73=$r6}
; {org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor=var1964, r1=var3913, $r0=var2015, $r3=var825, $r2=var270, $r4=var1103, $r5=var1274, $r6=var73}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[PersistenceUnit: ");	$r2 = interfaceinvoke r1.<org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1