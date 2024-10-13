(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2198 0)
(declare-sort var2410 0)
(declare-sort var867 0)
(declare-sort var545 0)
(declare-sort var1681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun persistenceException/1821617216 (var2198 String) var545)
(declare-fun cast-from-var545-to-var1681 (var545) var1681)
(declare-const null-var2198 var2198)
(declare-const null-String String)
(declare-const null-var867 var867)
(declare-const var2642 var2198) ; Statement: r7 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var2642 null-var2198)))
(declare-const var1507 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1507 null-String)))
(declare-const var3969 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3969 null-String)))
(define-const var2579 String "hibernate.jacc") ; Statement: $r0 = "hibernate.jacc" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1329 var867) ; Statement: $r6 := @caughtexception 
(assert (not (= var1329 null-var867)))
(define-const var3926 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3926)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3926!1 String)
(assert (= var3926!1 ""))
(assert true)
(define-const var3404 String (append/672562846 var3926!1 "Illegal usage of hibernate.jacc: ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal usage of hibernate.jacc: ") 
(declare-const var3926!2 String)
(assert (= var3926!2 (str.++ var3926!1 "Illegal usage of hibernate.jacc: ")))
(assert true)
(define-const var1984 String (append/672562846 var3404 var1507)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3404!1 String)
(assert (= var3404!1 (str.++ var3404 var1507)))
(assert true)
(define-const var617 String (toString/-2075883882 var1984)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3131 var545 (persistenceException/1821617216 var2642 var617)) ; Statement: $r12 = specialinvoke r7.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: javax.persistence.PersistenceException persistenceException(java.lang.String)>($r11) 
(define-const var3141 var1681 (cast-from-var545-to-var1681 var3131)) ; Statement: $r15 = (java.lang.Throwable) $r12 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), persistenceException/1821617216=([org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, java.lang.String], javax.persistence.PersistenceException), cast-from-var545-to-var1681=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var2198=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var2642=r7, var1507=r1, var2410=null_type, var3969=r5, var2579=$r0, var867=java.lang.IndexOutOfBoundsException, var1329=$r6, var3926=$r14, var3404=$r9, var1984=$r10, var617=$r11, var545=javax.persistence.PersistenceException, var3131=$r12, var1681=java.lang.Throwable, var3141=$r15}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var2198, r7=var2642, r1=var1507, null_type=var2410, r5=var3969, $r0=var2579, java.lang.IndexOutOfBoundsException=var867, $r6=var1329, $r14=var3926, $r9=var3404, $r10=var1984, $r11=var617, javax.persistence.PersistenceException=var545, $r12=var3131, java.lang.Throwable=var1681, $r15=var3141}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = "hibernate.jacc";	$r6 := @caughtexception;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal usage of hibernate.jacc: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = specialinvoke r7.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: javax.persistence.PersistenceException persistenceException(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r12;	throw $r15
;block_num 2