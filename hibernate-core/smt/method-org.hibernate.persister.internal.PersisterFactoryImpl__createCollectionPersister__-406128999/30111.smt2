(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2034 0)
(declare-sort var3299 0)
(declare-sort var1869 0)
(declare-sort var918 0)
(declare-sort var1821 0)
(declare-sort var601 0)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var601-init () var601)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var601 String var590) void)
(declare-fun cast-from-var1821-to-var590 (var1821) var590)
(declare-fun cast-from-var601-to-var590 (var601) var590)
(declare-const null-var2034 var2034)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3299 var3299)
(declare-const null-var1869 var1869)
(declare-const null-var918 var918)
(declare-const var2034-COLLECTION_PERSISTER_CONSTRUCTOR_ARGS (Array Int ClassObject))
(declare-const null-var1821 var1821)
(declare-const var725 var2034) ; Statement: r31 := @this: org.hibernate.persister.internal.PersisterFactoryImpl 
(assert (not (= var725 null-var2034)))
(declare-const var167 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var167 null-ClassObject)))
(declare-const var3156 var3299) ; Statement: r3 := @parameter1: org.hibernate.mapping.Collection 
(assert (not (= var3156 null-var3299)))
(declare-const var1548 var1869) ; Statement: r4 := @parameter2: org.hibernate.cache.spi.access.CollectionDataAccess 
(assert (not (= var1548 null-var1869)))
(declare-const var2061 var918) ; Statement: r5 := @parameter3: org.hibernate.persister.spi.PersisterCreationContext 
(assert (not (= var2061 null-var918)))
(define-const var572 (Array Int ClassObject) var2034-COLLECTION_PERSISTER_CONSTRUCTOR_ARGS) ; Statement: $r1 = <org.hibernate.persister.internal.PersisterFactoryImpl: java.lang.Class[] COLLECTION_PERSISTER_CONSTRUCTOR_ARGS> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2202 var1821) ; Statement: $r8 := @caughtexception 
(assert (not (= var2202 null-var1821)))
(define-const var3619 var601 var601-init) ; Statement: $r38 = new org.hibernate.MappingException 
(define-const var1267 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1267)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1267!1 String)
(assert (= var1267!1 ""))
(assert true)
(define-const var3567 String (append/672562846 var1267!1 "Could not get constructor for ")) ; Statement: $r12 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get constructor for ") 
(declare-const var1267!2 String)
(assert (= var1267!2 (str.++ var1267!1 "Could not get constructor for ")))
(assert true)
(define-const var2014 String (getName/-1958580599 var167)) ; Statement: $r11 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1478 String (append/672562846 var3567 var2014)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3567!1 String)
(assert (= var3567!1 (str.++ var3567 var2014)))
(assert true)
(define-const var1431 String (toString/-2075883882 var1478)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var3619 var1431 (cast-from-var1821-to-var590 var2202))) ; Statement: specialinvoke $r38.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8) 

(declare-const var3619!1 var601)
(declare-const var1431!1 String)
(declare-const var2202!1 var1821)
(define-const var3345 var590 (cast-from-var601-to-var590 var3619!1)) ; Statement: $r42 = (java.lang.Throwable) $r38 
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {var601-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var1821-to-var590=([java.lang.Exception], java.lang.Throwable), cast-from-var601-to-var590=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2034=org.hibernate.persister.internal.PersisterFactoryImpl, var725=r31, var167=r0, var3299=org.hibernate.mapping.Collection, var3156=r3, var1869=org.hibernate.cache.spi.access.CollectionDataAccess, var1548=r4, var918=org.hibernate.persister.spi.PersisterCreationContext, var2061=r5, var572=$r1, var1821=java.lang.Exception, var2202=$r8, var601=org.hibernate.MappingException, var3619=$r38, var1267=$r37, var3567=$r12, var2014=$r11, var1478=$r13, var1431=$r14, var590=java.lang.Throwable, var3345=$r42}
; {org.hibernate.persister.internal.PersisterFactoryImpl=var2034, r31=var725, r0=var167, org.hibernate.mapping.Collection=var3299, r3=var3156, org.hibernate.cache.spi.access.CollectionDataAccess=var1869, r4=var1548, org.hibernate.persister.spi.PersisterCreationContext=var918, r5=var2061, $r1=var572, java.lang.Exception=var1821, $r8=var2202, org.hibernate.MappingException=var601, $r38=var3619, $r37=var1267, $r12=var3567, $r11=var2014, $r13=var1478, $r14=var1431, java.lang.Throwable=var590, $r42=var3345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r31 := @this: org.hibernate.persister.internal.PersisterFactoryImpl;	r0 := @parameter0: java.lang.Class;	r3 := @parameter1: org.hibernate.mapping.Collection;	r4 := @parameter2: org.hibernate.cache.spi.access.CollectionDataAccess;	r5 := @parameter3: org.hibernate.persister.spi.PersisterCreationContext;	$r1 = <org.hibernate.persister.internal.PersisterFactoryImpl: java.lang.Class[] COLLECTION_PERSISTER_CONSTRUCTOR_ARGS>;	$r8 := @caughtexception;	$r38 = new org.hibernate.MappingException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get constructor for ");	$r11 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8);	$r42 = (java.lang.Throwable) $r38;	throw $r42
;block_num 2