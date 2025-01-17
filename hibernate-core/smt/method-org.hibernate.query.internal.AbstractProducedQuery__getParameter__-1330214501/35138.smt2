(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3345 0)
(declare-sort var2918 0)
(declare-sort var2138 0)
(declare-sort var2300 0)
(declare-sort var1753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var3345) var2918)
(declare-fun var2918_checkOpen/1415919888 (var2918 Bool) void)
(declare-fun getParameterMetadata/-437200728 (var3345) var2138)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2138_getQueryParameter/969910513 (var2138 Int) var2300)
(declare-fun var2300_getParameterType/1551337797 (var2300) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1753-init () var1753)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1753 String) void)
(declare-const null-var3345 var3345)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var584 var3345) ; Statement: r0 := @this: org.hibernate.query.internal.AbstractProducedQuery 
(assert (not (= var584 null-var3345)))
(declare-const var798 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var798 null-Int)))
(declare-const var3810 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var3810 null-ClassObject)))
(assert true)
(define-const var641 var2918 (getProducer/-1443624759 var584)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
;(assert (var2918_checkOpen/1415919888 var641 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0) 

(declare-const var641!1 var2918)
(declare-const var2291 Int)
(assert true)
(define-const var227 var2138 (getParameterMetadata/-437200728 var584)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.query.ParameterMetadata getParameterMetadata()>() 
(define-const var3664 Int (Int_valueOf/-1371140006 var798)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3909 var2300 (var2138_getQueryParameter/969910513 var227 var3664)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2) 
(define-const var1180 ClassObject (var2300_getParameterType/1551337797 var3909)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>() 
(assert true)
(define-const var3784 Bool (isAssignableFrom/-1028998700 var1180 var3810)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r5) 
 ; Statement: if $z0 != 0 goto return r4 
(assert (not (not (= (ite var3784 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2159 var1753 var1753-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1800 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1800)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1800!1 String)
(assert (= var1800!1 ""))
(assert true)
(define-const var2701 String (append/672562846 var1800!1 "The type [")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The type [") 
(declare-const var1800!2 String)
(assert (= var1800!2 (str.++ var1800!1 "The type [")))
(define-const var3867 ClassObject (var2300_getParameterType/1551337797 var3909)) ; Statement: $r9 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>() 
(assert true)
(define-const var2996 String (getName/-1958580599 var3867)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var48 String (append/672562846 var2701 var2996)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 var2996)))
(assert true)
(define-const var80 String (append/672562846 var48 "] associated with the parameter corresponding to position [")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] associated with the parameter corresponding to position [") 
(declare-const var48!1 String)
(assert (= var48!1 (str.++ var48 "] associated with the parameter corresponding to position [")))
(assert true)
(define-const var2469 String (append/-1001720160 var80 var798)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var80!1 String)
(assert (str.prefixof var80 var80!1))
(assert true)
(define-const var1727 String (append/672562846 var2469 "] is not assignable to requested Java type [")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not assignable to requested Java type [") 
(declare-const var2469!1 String)
(assert (= var2469!1 (str.++ var2469 "] is not assignable to requested Java type [")))
(assert true)
(define-const var30 String (getName/-1958580599 var3810)) ; Statement: $r15 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3889 String (append/672562846 var1727 var30)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1727!1 String)
(assert (= var1727!1 (str.++ var1727 var30)))
(assert true)
(define-const var1885 String (append/672562846 var3889 "]")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3889!1 String)
(assert (= var3889!1 (str.++ var3889 "]")))
(assert true)
(define-const var3029 String (toString/-2075883882 var1885)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2159 var3029)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var2159!1 var1753)
(declare-const var3029!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), var2918_checkOpen/1415919888=([org.hibernate.engine.spi.SharedSessionContractImplementor, boolean], void), getParameterMetadata/-437200728=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.query.ParameterMetadata), Int_valueOf/-1371140006=([int], java.lang.Integer), var2138_getQueryParameter/969910513=([org.hibernate.query.ParameterMetadata, java.lang.Integer], org.hibernate.query.QueryParameter), var2300_getParameterType/1551337797=([org.hibernate.query.QueryParameter], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1753-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3345=org.hibernate.query.internal.AbstractProducedQuery, var584=r0, var798=i0, var3810=r5, var2918=org.hibernate.engine.spi.SharedSessionContractImplementor, var641=$r1, var2291=0, var2138=org.hibernate.query.ParameterMetadata, var227=$r3, var3664=$r2, var2300=org.hibernate.query.QueryParameter, var3909=r4, var1180=$r6, var3784=$z0, var1753=java.lang.IllegalArgumentException, var2159=$r7, var1800=$r8, var2701=$r11, var3867=$r9, var2996=$r10, var48=$r12, var80=$r13, var2469=$r14, var1727=$r16, var30=$r15, var3889=$r17, var1885=$r18, var3029=$r19}
; {org.hibernate.query.internal.AbstractProducedQuery=var3345, r0=var584, i0=var798, r5=var3810, org.hibernate.engine.spi.SharedSessionContractImplementor=var2918, $r1=var641, 0=var2291, org.hibernate.query.ParameterMetadata=var2138, $r3=var227, $r2=var3664, org.hibernate.query.QueryParameter=var2300, r4=var3909, $r6=var1180, $z0=var3784, java.lang.IllegalArgumentException=var1753, $r7=var2159, $r8=var1800, $r11=var2701, $r9=var3867, $r10=var2996, $r12=var48, $r13=var80, $r14=var2469, $r16=var1727, $r15=var30, $r17=var3889, $r18=var1885, $r19=var3029}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.AbstractProducedQuery;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.Class;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0);	$r3 = virtualinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: org.hibernate.query.ParameterMetadata getParameterMetadata()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	r4 = interfaceinvoke $r3.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2);	$r6 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>();	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r5);	if $z0 != 0 goto return r4;	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The type [");	$r9 = interfaceinvoke r4.<org.hibernate.query.QueryParameter: java.lang.Class getParameterType()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] associated with the parameter corresponding to position [");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not assignable to requested Java type [");	$r15 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r7
;block_num 2