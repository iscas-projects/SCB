(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3710 0)
(declare-sort var3204 0)
(declare-sort var1734 0)
(declare-sort var3682 0)
(declare-sort var3031 0)
(declare-sort var882 0)
(declare-sort var3611 0)
(declare-sort var2132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndexType/543652041 (var3710) var3682)
(declare-fun var3682_nullSafeGet/1991669340 (var3682 var3204 (Array Int String) var1734 var3031) var3031)
(declare-fun var882-init () var882)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun navigableRole/835828228 (var3710) var3611)
(declare-fun getFullPath/1660193712 (var3611) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var882 String) void)
(declare-fun cast-from-var882-to-var2132 (var882) var2132)
(declare-const null-var3710 var3710)
(declare-const null-var3204 var3204)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1734 var1734)
(declare-const null-var3031 var3031)
(declare-const var2828 var3710) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var2828 null-var3710)))
(declare-const var1062 var3204) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var1062 null-var3204)))
(declare-const var3213 (Array Int String)) ; Statement: r2 := @parameter1: java.lang.String[] 
(assert (not (= var3213 null-__Array__Int__String__)))
(declare-const var375 var1734) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var375 null-var1734)))
(assert true)
(define-const var62 var3682 (getIndexType/543652041 var2828)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIndexType()>() 
(define-const var1056 var3031 (var3682_nullSafeGet/1991669340 var62 var1062 var3213 var375 null-var3031)) ; Statement: r12 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String[],org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null) 
 ; Statement: if r12 != null goto r13 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.Object decrementIndexByBase(java.lang.Object)>(r12) 
(assert (not (not (= var1056 null-var3031)))) ; Negate: Cond: r12 != null  
(define-const var3639 var882 var882-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var1288 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1288)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1288!1 String)
(assert (= var1288!1 ""))
(assert true)
(define-const var1321 String (append/672562846 var1288!1 "null index column for collection: ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null index column for collection: ") 
(declare-const var1288!2 String)
(assert (= var1288!2 (str.++ var1288!1 "null index column for collection: ")))
(define-const var1987 var3611 (navigableRole/835828228 var2828)) ; Statement: $r7 = r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole> 
(assert true)
(define-const var2775 String (getFullPath/1660193712 var1987)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var1979 String (append/672562846 var1321 var2775)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1321!1 String)
(assert (= var1321!1 (str.++ var1321 var2775)))
(assert true)
(define-const var2856 String (toString/-2075883882 var1979)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3639 var2856)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var3639!1 var882)
(declare-const var2856!1 String)
(define-const var739 var2132 (cast-from-var882-to-var2132 var3639!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndexType/543652041=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.type.Type), var3682_nullSafeGet/1991669340=([org.hibernate.type.Type, java.sql.ResultSet, java.lang.String[], org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.Object), var882-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), navigableRole/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.metamodel.model.domain.NavigableRole), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var882-to-var2132=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3710=org.hibernate.persister.collection.AbstractCollectionPersister, var2828=r0, var3204=java.sql.ResultSet, var1062=r1, var3213=r2, var1734=org.hibernate.engine.spi.SharedSessionContractImplementor, var375=r3, var3682=org.hibernate.type.Type, var62=$r4, var3031=java.lang.Object, var1056=r12, var882=org.hibernate.HibernateException, var3639=$r15, var1288=$r14, var1321=$r9, var3611=org.hibernate.metamodel.model.domain.NavigableRole, var1987=$r7, var2775=$r8, var1979=$r10, var2856=$r11, var2132=java.lang.Throwable, var739=$r16}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3710, r0=var2828, java.sql.ResultSet=var3204, r1=var1062, r2=var3213, org.hibernate.engine.spi.SharedSessionContractImplementor=var1734, r3=var375, org.hibernate.type.Type=var3682, $r4=var62, java.lang.Object=var3031, r12=var1056, org.hibernate.HibernateException=var882, $r15=var3639, $r14=var1288, $r9=var1321, org.hibernate.metamodel.model.domain.NavigableRole=var3611, $r7=var1987, $r8=var2775, $r10=var1979, $r11=var2856, java.lang.Throwable=var2132, $r16=var739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r1 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: java.lang.String[];	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIndexType()>();	r12 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String[],org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null);	if r12 != null goto r13 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.Object decrementIndexByBase(java.lang.Object)>(r12);	$r15 = new org.hibernate.HibernateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null index column for collection: ");	$r7 = r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole>;	$r8 = virtualinvoke $r7.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2