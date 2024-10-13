(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var183 0)
(declare-sort var760 0)
(declare-sort var3184 0)
(declare-sort var3958 0)
(declare-sort var2099 0)
(declare-sort var1291 0)
(declare-sort var3 0)
(declare-sort var501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun underlyingType/-2110547906 (var2845) var2099)
(declare-fun var2099_nullSafeGet/-169754434 (var2099 var183 String var3184 var3958) var3958)
(declare-fun persister/-2110547906 (var2845) var1291)
(declare-fun var1291_getSubclassForDiscriminatorValue/-289440633 (var1291 var3958) String)
(declare-fun var3-init () var3)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3958) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3 String) void)
(declare-fun cast-from-var3-to-var501 (var3) var501)
(declare-const null-var2845 var2845)
(declare-const null-var183 var183)
(declare-const null-String String)
(declare-const null-var3184 var3184)
(declare-const null-var3958 var3958)
(declare-const var3966 var2845) ; Statement: r0 := @this: org.hibernate.persister.entity.DiscriminatorType 
(assert (not (= var3966 null-var2845)))
(declare-const var3130 var183) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var3130 null-var183)))
(declare-const var2769 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2769 null-String)))
(declare-const var1079 var3184) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1079 null-var3184)))
(declare-const var671 var3958) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var671 null-var3958)))
(define-const var230 var2099 (underlyingType/-2110547906 var3966)) ; Statement: $r5 = r0.<org.hibernate.persister.entity.DiscriminatorType: org.hibernate.type.Type underlyingType> 
(define-const var3656 var3958 (var2099_nullSafeGet/-169754434 var230 var3130 var2769 var1079 var671)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String,org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, r4) 
(define-const var2275 var1291 (persister/-2110547906 var3966)) ; Statement: $r7 = r0.<org.hibernate.persister.entity.DiscriminatorType: org.hibernate.persister.entity.Loadable persister> 
(define-const var3689 String (var1291_getSubclassForDiscriminatorValue/-289440633 var2275 var3656)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.persister.entity.Loadable: java.lang.String getSubclassForDiscriminatorValue(java.lang.Object)>(r6) 
 ; Statement: if r8 != null goto r9 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r8, null) 
(assert (not (not (= var3689 null-String)))) ; Negate: Cond: r8 != null  
(define-const var3550 var3 var3-init) ; Statement: $r20 = new org.hibernate.HibernateException 
(define-const var2649 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2649)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2649!1 String)
(assert (= var2649!1 ""))
(assert true)
(define-const var691 String (append/672562846 var2649!1 "Unable to resolve discriminator value [")) ; Statement: $r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve discriminator value [") 
(declare-const var2649!2 String)
(assert (= var2649!2 (str.++ var2649!1 "Unable to resolve discriminator value [")))
(assert true)
(define-const var3686 String (append/-1031950772 var691 var3656)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var691!1 String)
(assert (str.prefixof var691 var691!1))
(assert true)
(define-const var817 String (append/672562846 var3686 "] to entity name")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to entity name") 
(declare-const var3686!1 String)
(assert (= var3686!1 (str.++ var3686 "] to entity name")))
(assert true)
(define-const var1069 String (toString/-2075883882 var817)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3550 var1069)) ; Statement: specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r17) 

(declare-const var3550!1 var3)
(declare-const var1069!1 String)
(define-const var2343 var501 (cast-from-var3-to-var501 var3550!1)) ; Statement: $r21 = (java.lang.Throwable) $r20 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {underlyingType/-2110547906=([org.hibernate.persister.entity.DiscriminatorType], org.hibernate.type.Type), var2099_nullSafeGet/-169754434=([org.hibernate.type.Type, java.sql.ResultSet, java.lang.String, org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.Object), persister/-2110547906=([org.hibernate.persister.entity.DiscriminatorType], org.hibernate.persister.entity.Loadable), var1291_getSubclassForDiscriminatorValue/-289440633=([org.hibernate.persister.entity.Loadable, java.lang.Object], java.lang.String), var3-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3-to-var501=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2845=org.hibernate.persister.entity.DiscriminatorType, var3966=r0, var183=java.sql.ResultSet, var3130=r1, var2769=r2, var760=null_type, var3184=org.hibernate.engine.spi.SharedSessionContractImplementor, var1079=r3, var3958=java.lang.Object, var671=r4, var2099=org.hibernate.type.Type, var230=$r5, var3656=r6, var1291=org.hibernate.persister.entity.Loadable, var2275=$r7, var3689=r8, var3=org.hibernate.HibernateException, var3550=$r20, var2649=$r19, var691=$r14, var3686=$r15, var817=$r16, var1069=$r17, var501=java.lang.Throwable, var2343=$r21}
; {org.hibernate.persister.entity.DiscriminatorType=var2845, r0=var3966, java.sql.ResultSet=var183, r1=var3130, r2=var2769, null_type=var760, org.hibernate.engine.spi.SharedSessionContractImplementor=var3184, r3=var1079, java.lang.Object=var3958, r4=var671, org.hibernate.type.Type=var2099, $r5=var230, r6=var3656, org.hibernate.persister.entity.Loadable=var1291, $r7=var2275, r8=var3689, org.hibernate.HibernateException=var3, $r20=var3550, $r19=var2649, $r14=var691, $r15=var3686, $r16=var817, $r17=var1069, java.lang.Throwable=var501, $r21=var2343}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.DiscriminatorType;	r1 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	r4 := @parameter3: java.lang.Object;	$r5 = r0.<org.hibernate.persister.entity.DiscriminatorType: org.hibernate.type.Type underlyingType>;	r6 = interfaceinvoke $r5.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String,org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r1, r2, r3, r4);	$r7 = r0.<org.hibernate.persister.entity.DiscriminatorType: org.hibernate.persister.entity.Loadable persister>;	r8 = interfaceinvoke $r7.<org.hibernate.persister.entity.Loadable: java.lang.String getSubclassForDiscriminatorValue(java.lang.Object)>(r6);	if r8 != null goto r9 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r8, null);	$r20 = new org.hibernate.HibernateException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve discriminator value [");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to entity name");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r17);	$r21 = (java.lang.Throwable) $r20;	throw $r21
;block_num 2