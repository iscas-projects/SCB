(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3603 0)
(declare-sort var941 0)
(declare-sort var1704 0)
(declare-sort var3805 0)
(declare-sort var1064 0)
(declare-sort var1548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityManager/-1218835167 (var3603) var1704)
(declare-fun var1704_checkOpen/1415919888 (var1704 Bool) void)
(declare-fun locateParameterByName/-93840006 (var3603 String) var3805)
(declare-fun var1064_getParameterType/1299142376 (var1064) ClassObject)
(declare-fun cast-from-var3805-to-var1064 (var3805) var1064)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1548-init () var1548)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1548 String) void)
(declare-const null-var3603 var3603)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1354 var3603) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter 
(assert (not (= var1354 null-var3603)))
(declare-const var1802 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1802 null-String)))
(declare-const var2865 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var2865 null-ClassObject)))
(define-const var3119 var1704 (entityManager/-1218835167 var1354)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: org.hibernate.engine.spi.SharedSessionContractImplementor entityManager> 
;(assert (var1704_checkOpen/1415919888 var3119 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0) 

(declare-const var3119!1 var1704)
(declare-const var695 Int)
(assert true)
(define-const var271 var3805 (locateParameterByName/-93840006 var1354 var1802)) ; Statement: r3 = specialinvoke r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo locateParameterByName(java.lang.String)>(r2) 
(define-const var2221 ClassObject (var1064_getParameterType/1299142376 (cast-from-var3805-to-var1064 var271))) ; Statement: $r5 = interfaceinvoke r3.<javax.persistence.Parameter: java.lang.Class getParameterType()>() 
(assert true)
(define-const var1241 Bool (isAssignableFrom/-1028998700 var2865 var2221)) ; Statement: $z0 = virtualinvoke r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (= (ite var1241 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3099 var1548 var1548-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var549 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var549)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var549!1 String)
(assert (= var549!1 ""))
(assert true)
(define-const var1448 String (append/672562846 var549!1 "Named parameter [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter [") 
(declare-const var549!2 String)
(assert (= var549!2 (str.++ var549!1 "Named parameter [")))
(assert true)
(define-const var1062 String (append/672562846 var1448 var1802)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1448!1 String)
(assert (= var1448!1 (str.++ var1448 var1802)))
(assert true)
(define-const var1174 String (append/672562846 var1062 "] type is not assignanle to request type [")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] type is not assignanle to request type [") 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 "] type is not assignanle to request type [")))
(assert true)
(define-const var3944 String (getName/-1958580599 var2865)) ; Statement: $r10 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2587 String (append/672562846 var1174 var3944)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1174!1 String)
(assert (= var1174!1 (str.++ var1174 var3944)))
(assert true)
(define-const var1735 String (append/672562846 var2587 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2587!1 String)
(assert (= var2587!1 (str.++ var2587 "]")))
(assert true)
(define-const var3854 String (toString/-2075883882 var1735)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3099 var3854)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var3099!1 var1548)
(declare-const var3854!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {entityManager/-1218835167=([org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter], org.hibernate.engine.spi.SharedSessionContractImplementor), var1704_checkOpen/1415919888=([org.hibernate.engine.spi.SharedSessionContractImplementor, boolean], void), locateParameterByName/-93840006=([org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter, java.lang.String], org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo), var1064_getParameterType/1299142376=([javax.persistence.Parameter], java.lang.Class), cast-from-var3805-to-var1064=([org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo], javax.persistence.Parameter), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1548-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3603=org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter, var1354=r0, var1802=r2, var941=null_type, var2865=r4, var1704=org.hibernate.engine.spi.SharedSessionContractImplementor, var3119=$r1, var695=0, var3805=org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo, var271=r3, var1064=javax.persistence.Parameter, var2221=$r5, var1241=$z0, var1548=java.lang.IllegalArgumentException, var3099=$r6, var549=$r7, var1448=$r8, var1062=$r9, var1174=$r11, var3944=$r10, var2587=$r12, var1735=$r13, var3854=$r14}
; {org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter=var3603, r0=var1354, r2=var1802, null_type=var941, r4=var2865, org.hibernate.engine.spi.SharedSessionContractImplementor=var1704, $r1=var3119, 0=var695, org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo=var3805, r3=var271, javax.persistence.Parameter=var1064, $r5=var2221, $z0=var1241, java.lang.IllegalArgumentException=var1548, $r6=var3099, $r7=var549, $r8=var1448, $r9=var1062, $r11=var1174, $r10=var3944, $r12=var2587, $r13=var1735, $r14=var3854}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: org.hibernate.engine.spi.SharedSessionContractImplementor entityManager>;	interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: void checkOpen(boolean)>(0);	r3 = specialinvoke r0.<org.hibernate.query.criteria.internal.compile.CriteriaQueryTypeQueryAdapter: org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo locateParameterByName(java.lang.String)>(r2);	$r5 = interfaceinvoke r3.<javax.persistence.Parameter: java.lang.Class getParameterType()>();	$z0 = virtualinvoke r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r5);	if $z0 == 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] type is not assignanle to request type [");	$r10 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r6
;block_num 2