(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3901 0)
(declare-sort var2037 0)
(declare-sort var2011 0)
(declare-sort var895 0)
(declare-sort var849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var849-init () var849)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2037) ClassObject)
(declare-fun cast-from-var3901-to-var2037 (var3901) var2037)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var849 String) void)
(declare-const null-var3901 var3901)
(declare-const null-var2037 var2037)
(declare-const null-String String)
(declare-const null-var895 var895)
(declare-const var2385 var3901) ; Statement: r2 := @this: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2385 null-var3901)))
(declare-const var3140 var2037) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var3140 null-var2037)))
(declare-const var708 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var708 null-String)))
(declare-const var1237 var895) ; Statement: r10 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1237 null-var895)))
(define-const var423 var849 var849-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var3133 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3133)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3133!1 String)
(assert (= var3133!1 ""))
(assert true)
(define-const var832 String (append/672562846 var3133!1 "Initialization of entity enhancement used to act like a proxy is not supported by this EntityPersister : ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Initialization of entity enhancement used to act like a proxy is not supported by this EntityPersister : ") 
(declare-const var3133!2 String)
(assert (= var3133!2 (str.++ var3133!1 "Initialization of entity enhancement used to act like a proxy is not supported by this EntityPersister : ")))
(assert true)
(define-const var3010 ClassObject (getClass/1258963082 (cast-from-var3901-to-var2037 var2385))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1014 String (getName/-1958580599 var3010)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3417 String (append/672562846 var832 var1014)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var832!1 String)
(assert (= var832!1 (str.++ var832 var1014)))
(assert true)
(define-const var2560 String (toString/-2075883882 var3417)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var423 var2560)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var423!1 var849)
(declare-const var2560!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var849-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3901-to-var2037=([org.hibernate.persister.entity.EntityPersister], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3901=org.hibernate.persister.entity.EntityPersister, var2385=r2, var2037=java.lang.Object, var3140=r8, var708=r9, var2011=null_type, var895=org.hibernate.engine.spi.SharedSessionContractImplementor, var1237=r10, var849=java.lang.UnsupportedOperationException, var423=$r0, var3133=$r1, var832=$r5, var3010=$r3, var1014=$r4, var3417=$r6, var2560=$r7}
; {org.hibernate.persister.entity.EntityPersister=var3901, r2=var2385, java.lang.Object=var2037, r8=var3140, r9=var708, null_type=var2011, org.hibernate.engine.spi.SharedSessionContractImplementor=var895, r10=var1237, java.lang.UnsupportedOperationException=var849, $r0=var423, $r1=var3133, $r5=var832, $r3=var3010, $r4=var1014, $r6=var3417, $r7=var2560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.EntityPersister;	r8 := @parameter0: java.lang.Object;	r9 := @parameter1: java.lang.String;	r10 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Initialization of entity enhancement used to act like a proxy is not supported by this EntityPersister : ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1