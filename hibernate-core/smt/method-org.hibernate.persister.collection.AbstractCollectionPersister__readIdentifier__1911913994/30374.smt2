(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1862 0)
(declare-sort var813 0)
(declare-sort var3399 0)
(declare-sort var1515 0)
(declare-sort var627 0)
(declare-sort var930 0)
(declare-sort var696 0)
(declare-sort var1477 0)
(declare-sort var3740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierType/550188002 (var1862) var627)
(declare-fun var627_nullSafeGet/-169754434 (var627 var813 String var1515 var930) var930)
(declare-fun var696-init () var696)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun navigableRole/835828228 (var1862) var1477)
(declare-fun getFullPath/1660193712 (var1477) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var696 String) void)
(declare-fun cast-from-var696-to-var3740 (var696) var3740)
(declare-const null-var1862 var1862)
(declare-const null-var813 var813)
(declare-const null-String String)
(declare-const null-var1515 var1515)
(declare-const null-var930 var930)
(declare-const var1016 var1862) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1016 null-var1862)))
(declare-const var3510 var813) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var3510 null-var813)))
(declare-const var2466 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2466 null-String)))
(declare-const var1145 var1515) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1145 null-var1515)))
(assert true)
(define-const var3802 var627 (getIdentifierType/550188002 var1016)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIdentifierType()>() 
(define-const var2228 var930 (var627_nullSafeGet/-169754434 var3802 var3510 var2466 var1145 null-var930)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String,org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null) 
 ; Statement: if r5 != null goto return r5 
(assert (not (not (= var2228 null-var930)))) ; Negate: Cond: r5 != null  
(define-const var3937 var696 var696-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var1752 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1752)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1752!1 String)
(assert (= var1752!1 ""))
(assert true)
(define-const var3103 String (append/672562846 var1752!1 "null identifier column for collection: ")) ; Statement: $r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null identifier column for collection: ") 
(declare-const var1752!2 String)
(assert (= var1752!2 (str.++ var1752!1 "null identifier column for collection: ")))
(define-const var2314 var1477 (navigableRole/835828228 var1016)) ; Statement: $r8 = r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole> 
(assert true)
(define-const var2709 String (getFullPath/1660193712 var2314)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var557 String (append/672562846 var3103 var2709)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3103!1 String)
(assert (= var3103!1 (str.++ var3103 var2709)))
(assert true)
(define-const var1239 String (toString/-2075883882 var557)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3937 var1239)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var3937!1 var696)
(declare-const var1239!1 String)
(define-const var333 var3740 (cast-from-var696-to-var3740 var3937!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierType/550188002=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.type.Type), var627_nullSafeGet/-169754434=([org.hibernate.type.Type, java.sql.ResultSet, java.lang.String, org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.Object), var696-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), navigableRole/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.metamodel.model.domain.NavigableRole), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var696-to-var3740=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1862=org.hibernate.persister.collection.AbstractCollectionPersister, var1016=r0, var813=java.sql.ResultSet, var3510=r1, var2466=r2, var3399=null_type, var1515=org.hibernate.engine.spi.SharedSessionContractImplementor, var1145=r3, var627=org.hibernate.type.Type, var3802=$r4, var930=java.lang.Object, var2228=r5, var696=org.hibernate.HibernateException, var3937=$r14, var1752=$r13, var3103=$r10, var1477=org.hibernate.metamodel.model.domain.NavigableRole, var2314=$r8, var2709=$r9, var557=$r11, var1239=$r12, var3740=java.lang.Throwable, var333=$r15}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1862, r0=var1016, java.sql.ResultSet=var813, r1=var3510, r2=var2466, null_type=var3399, org.hibernate.engine.spi.SharedSessionContractImplementor=var1515, r3=var1145, org.hibernate.type.Type=var627, $r4=var3802, java.lang.Object=var930, r5=var2228, org.hibernate.HibernateException=var696, $r14=var3937, $r13=var1752, $r10=var3103, org.hibernate.metamodel.model.domain.NavigableRole=var1477, $r8=var2314, $r9=var2709, $r11=var557, $r12=var1239, java.lang.Throwable=var3740, $r15=var333}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r1 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r4 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getIdentifierType()>();	r5 = interfaceinvoke $r4.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String,org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, null);	if r5 != null goto return r5;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null identifier column for collection: ");	$r8 = r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole>;	$r9 = virtualinvoke $r8.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2