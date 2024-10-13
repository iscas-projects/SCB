(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3776 0)
(declare-sort var722 0)
(declare-sort var2905 0)
(declare-sort var3535 0)
(declare-sort var235 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var235-init () var235)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun navigableRole/835828228 (var3776) var1080)
(declare-fun getFullPath/1660193712 (var1080) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var235 String) void)
(declare-const null-var3776 var3776)
(declare-const null-var722 var722)
(declare-const null-var2905 var2905)
(declare-const null-Int Int)
(declare-const null-var3535 var3535)
(declare-const var1056 var3776) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1056 null-var3776)))
(declare-const var109 var722) ; Statement: r2 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var109 null-var722)))
(declare-const var3766 var2905) ; Statement: r0 := @parameter1: java.io.Serializable 
(assert (not (= var3766 null-var2905)))
(declare-const var2898 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2898 null-Int)))
(declare-const var1376 var3535) ; Statement: r3 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1376 null-var3535)))
 ; Statement: if r0 != null goto $r4 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getKeyType()>() 
(assert (not (not (= var3766 null-var2905)))) ; Negate: Cond: r0 != null  
(define-const var309 var235 var235-init) ; Statement: $r6 = new java.lang.NullPointerException 
(define-const var3743 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3743)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3743!1 String)
(assert (= var3743!1 ""))
(assert true)
(define-const var3219 String (append/672562846 var3743!1 "null key for collection: ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null key for collection: ") 
(declare-const var3743!2 String)
(assert (= var3743!2 (str.++ var3743!1 "null key for collection: ")))
(define-const var3826 var1080 (navigableRole/835828228 var1056)) ; Statement: $r8 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole> 
(assert true)
(define-const var3277 String (getFullPath/1660193712 var3826)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var2223 String (append/672562846 var3219 var3277)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3219!1 String)
(assert (= var3219!1 (str.++ var3219 var3277)))
(assert true)
(define-const var94 String (toString/-2075883882 var2223)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var309 var94)) ; Statement: specialinvoke $r6.<java.lang.NullPointerException: void <init>(java.lang.String)>($r12) 

(declare-const var309!1 var235)
(declare-const var94!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var235-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), navigableRole/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.metamodel.model.domain.NavigableRole), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var3776=org.hibernate.persister.collection.AbstractCollectionPersister, var1056=r1, var722=java.sql.PreparedStatement, var109=r2, var2905=java.io.Serializable, var3766=r0, var2898=i0, var3535=org.hibernate.engine.spi.SharedSessionContractImplementor, var1376=r3, var235=java.lang.NullPointerException, var309=$r6, var3743=$r7, var3219=$r10, var1080=org.hibernate.metamodel.model.domain.NavigableRole, var3826=$r8, var3277=$r9, var2223=$r11, var94=$r12}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3776, r1=var1056, java.sql.PreparedStatement=var722, r2=var109, java.io.Serializable=var2905, r0=var3766, i0=var2898, org.hibernate.engine.spi.SharedSessionContractImplementor=var3535, r3=var1376, java.lang.NullPointerException=var235, $r6=var309, $r7=var3743, $r10=var3219, org.hibernate.metamodel.model.domain.NavigableRole=var1080, $r8=var3826, $r9=var3277, $r11=var2223, $r12=var94}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.sql.PreparedStatement;	r0 := @parameter1: java.io.Serializable;	i0 := @parameter2: int;	r3 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor;	if r0 != null goto $r4 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getKeyType()>();	$r6 = new java.lang.NullPointerException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null key for collection: ");	$r8 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.metamodel.model.domain.NavigableRole navigableRole>;	$r9 = virtualinvoke $r8.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.NullPointerException: void <init>(java.lang.String)>($r12);	throw $r6
;block_num 2