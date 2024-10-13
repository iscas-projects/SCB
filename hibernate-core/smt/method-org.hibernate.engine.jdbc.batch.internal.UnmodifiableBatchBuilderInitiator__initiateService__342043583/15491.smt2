(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2683 0)
(declare-sort var2799 0)
(declare-sort var3119 0)
(declare-sort var2219 0)
(declare-sort var1425 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2799_get/1088891777 (var2799 var2219) var2219)
(declare-fun cast-from-String-to-var2219 (String) var2219)
(declare-fun var1425-init () var1425)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2219) ClassObject)
(declare-fun cast-from-var2683-to-var2219 (var2683) var2219)
(declare-fun append/-1031950772 (String var2219) String)
(declare-fun cast-from-ClassObject-to-var2219 (ClassObject) var2219)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/45648993 (var1425 String) void)
(declare-fun cast-from-var1425-to-var3850 (var1425) var3850)
(declare-const null-var2683 var2683)
(declare-const null-var2799 var2799)
(declare-const null-var3119 var3119)
(declare-const null-var2219 var2219)
(declare-const var3671 var2683) ; Statement: r4 := @this: org.hibernate.engine.jdbc.batch.internal.UnmodifiableBatchBuilderInitiator 
(assert (not (= var3671 null-var2683)))
(declare-const var2215 var2799) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var2215 null-var2799)))
(declare-const var1453 var3119) ; Statement: r13 := @parameter1: org.hibernate.service.spi.ServiceRegistryImplementor 
(assert (not (= var1453 null-var3119)))
(define-const var2299 var2219 (var2799_get/1088891777 var2215 (cast-from-String-to-var2219 "hibernate.jdbc.batch.builder"))) ; Statement: r1 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.jdbc.batch.builder") 
 ; Statement: if r1 != null goto $r16 = new org.hibernate.service.spi.ServiceException 
(assert (not (= var2299 null-var2219))) ; Cond: r1 != null 
(define-const var258 var1425 var1425-init) ; Statement: $r16 = new org.hibernate.service.spi.ServiceException 
(define-const var3359 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3359)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3359!1 String)
(assert (= var3359!1 ""))
(assert true)
(define-const var2637 String (append/672562846 var3359!1 "This Hibernate ORM serviceregistry has been configured explicitly to use ")) ; Statement: $r6 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("This Hibernate ORM serviceregistry has been configured explicitly to use ") 
(declare-const var3359!2 String)
(assert (= var3359!2 (str.++ var3359!1 "This Hibernate ORM serviceregistry has been configured explicitly to use ")))
(assert true)
(define-const var3400 ClassObject (getClass/1258963082 (cast-from-var2683-to-var2219 var3671))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1743 String (append/-1031950772 var2637 (cast-from-ClassObject-to-var2219 var3400))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2637!1 String)
(assert (str.prefixof var2637 var2637!1))
(assert true)
(define-const var731 String (append/672562846 var1743 " to create BatchBuilder instances; the property \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to create BatchBuilder instances; the property \'") 
(declare-const var1743!1 String)
(assert (= var1743!1 (str.++ var1743 " to create BatchBuilder instances; the property \u0027")))
(assert true)
(define-const var1876 String (append/672562846 var731 "hibernate.jdbc.batch.builder")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.jdbc.batch.builder") 
(declare-const var731!1 String)
(assert (= var731!1 (str.++ var731 "hibernate.jdbc.batch.builder")))
(assert true)
(define-const var1985 String (append/672562846 var1876 "\u0027 is not supported.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not supported.") 
(declare-const var1876!1 String)
(assert (= var1876!1 (str.++ var1876 "\u0027 is not supported.")))
(assert true)
(define-const var412 String (toString/-2075883882 var1985)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/45648993 var258 var412)) ; Statement: specialinvoke $r16.<org.hibernate.service.spi.ServiceException: void <init>(java.lang.String)>($r11) 

(declare-const var258!1 var1425)
(declare-const var412!1 String)
(define-const var3629 var3850 (cast-from-var1425-to-var3850 var258!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2799_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2219=([java.lang.String], java.lang.Object), var1425-init=([], org.hibernate.service.spi.ServiceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2683-to-var2219=([org.hibernate.engine.jdbc.batch.internal.UnmodifiableBatchBuilderInitiator], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2219=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/45648993=([org.hibernate.service.spi.ServiceException, java.lang.String], void), cast-from-var1425-to-var3850=([org.hibernate.service.spi.ServiceException], java.lang.Throwable)}
; {var2683=org.hibernate.engine.jdbc.batch.internal.UnmodifiableBatchBuilderInitiator, var3671=r4, var2799=java.util.Map, var2215=r0, var3119=org.hibernate.service.spi.ServiceRegistryImplementor, var1453=r13, var2219=java.lang.Object, var2299=r1, var1425=org.hibernate.service.spi.ServiceException, var258=$r16, var3359=$r15, var2637=$r6, var3400=$r5, var1743=$r7, var731=$r8, var1876=$r9, var1985=$r10, var412=$r11, var3850=java.lang.Throwable, var3629=$r17}
; {org.hibernate.engine.jdbc.batch.internal.UnmodifiableBatchBuilderInitiator=var2683, r4=var3671, java.util.Map=var2799, r0=var2215, org.hibernate.service.spi.ServiceRegistryImplementor=var3119, r13=var1453, java.lang.Object=var2219, r1=var2299, org.hibernate.service.spi.ServiceException=var1425, $r16=var258, $r15=var3359, $r6=var2637, $r5=var3400, $r7=var1743, $r8=var731, $r9=var1876, $r10=var1985, $r11=var412, java.lang.Throwable=var3850, $r17=var3629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.engine.jdbc.batch.internal.UnmodifiableBatchBuilderInitiator;	r0 := @parameter0: java.util.Map;	r13 := @parameter1: org.hibernate.service.spi.ServiceRegistryImplementor;	r1 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.jdbc.batch.builder");	if r1 != null goto $r16 = new org.hibernate.service.spi.ServiceException;	$r16 = new org.hibernate.service.spi.ServiceException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("This Hibernate ORM serviceregistry has been configured explicitly to use ");	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to create BatchBuilder instances; the property \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.jdbc.batch.builder");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not supported.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.service.spi.ServiceException: void <init>(java.lang.String)>($r11);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2