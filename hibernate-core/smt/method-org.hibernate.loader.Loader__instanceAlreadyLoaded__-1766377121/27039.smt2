(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3626 0)
(declare-sort var2244 0)
(declare-sort var2724 0)
(declare-sort var2208 0)
(declare-sort var3325 0)
(declare-sort var1396 0)
(declare-sort var565 0)
(declare-sort var2865 0)
(declare-sort var1189 0)
(declare-sort var2358 0)
(declare-sort var2189 0)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1189_isInstance/679547889 (var1189 var3325) Bool)
(declare-fun cast-from-var2724-to-var1189 (var2724) var1189)
(declare-fun var2358-init () var2358)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3325) ClassObject)
(declare-fun append/-1031950772 (String var3325) String)
(declare-fun cast-from-ClassObject-to-var3325 (ClassObject) var3325)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIdentifier/1096977613 (var2208) var2189)
(declare-fun var1189_getEntityName/-1914780628 (var1189) String)
(declare-fun <init>/1069880086 (var2358 String var2189 String) void)
(declare-fun cast-from-var2358-to-var1002 (var2358) var1002)
(declare-const null-var3626 var3626)
(declare-const null-var2244 var2244)
(declare-const null-Int Int)
(declare-const null-var2724 var2724)
(declare-const null-var2208 var2208)
(declare-const null-var3325 var3325)
(declare-const null-var1396 var1396)
(declare-const null-var565 var565)
(declare-const null-var2865 var2865)
(declare-const var479 var3626) ; Statement: r5 := @this: org.hibernate.loader.Loader 
(assert (not (= var479 null-var3626)))
(declare-const var3852 var2244) ; Statement: r10 := @parameter0: java.sql.ResultSet 
(assert (not (= var3852 null-var2244)))
(declare-const var3577 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3577 null-Int)))
(declare-const var2314 var2724) ; Statement: r0 := @parameter2: org.hibernate.persister.entity.Loadable 
(assert (not (= var2314 null-var2724)))
(declare-const var955 var2208) ; Statement: r9 := @parameter3: org.hibernate.engine.spi.EntityKey 
(assert (not (= var955 null-var2208)))
(declare-const var120 var3325) ; Statement: r1 := @parameter4: java.lang.Object 
(assert (not (= var120 null-var3325)))
(declare-const var2118 var1396) ; Statement: r3 := @parameter5: org.hibernate.LockMode 
(assert (not (= var2118 null-var1396)))
(declare-const var3806 var565) ; Statement: r19 := @parameter6: java.util.List 
(assert (not (= var3806 null-var565)))
(declare-const var699 var2865) ; Statement: r6 := @parameter7: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var699 null-var2865)))
(define-const var1953 Bool (var1189_isInstance/679547889 (cast-from-var2724-to-var1189 var2314) var120)) ; Statement: $z0 = interfaceinvoke r0.<org.hibernate.persister.entity.Loadable: boolean isInstance(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r2 = interfaceinvoke r0.<org.hibernate.persister.entity.Loadable: org.hibernate.bytecode.spi.BytecodeEnhancementMetadata getBytecodeEnhancementMetadata()>() 
(assert (not (not (= (ite var1953 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3737 var2358 var2358-init) ; Statement: $r34 = new org.hibernate.WrongClassException 
(define-const var3917 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3917)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3917!1 String)
(assert (= var3917!1 ""))
(assert true)
(define-const var1936 String (append/672562846 var3917!1 "loaded object was of wrong class ")) ; Statement: $r26 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("loaded object was of wrong class ") 
(declare-const var3917!2 String)
(assert (= var3917!2 (str.++ var3917!1 "loaded object was of wrong class ")))
(assert true)
(define-const var168 ClassObject (getClass/1258963082 var120)) ; Statement: $r25 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var676 String (append/-1031950772 var1936 (cast-from-ClassObject-to-var3325 var168))) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var1936!1 String)
(assert (str.prefixof var1936 var1936!1))
(assert true)
(define-const var1134 String (toString/-2075883882 var676)) ; Statement: $r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3591 var2189 (getIdentifier/1096977613 var955)) ; Statement: $r29 = virtualinvoke r9.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>() 
(define-const var881 String (var1189_getEntityName/-1914780628 (cast-from-var2724-to-var1189 var2314))) ; Statement: $r28 = interfaceinvoke r0.<org.hibernate.persister.entity.Loadable: java.lang.String getEntityName()>() 
(assert true)
;(assert (<init>/1069880086 var3737 var1134 var3591 var881)) ; Statement: specialinvoke $r34.<org.hibernate.WrongClassException: void <init>(java.lang.String,java.io.Serializable,java.lang.String)>($r30, $r29, $r28) 

(declare-const var3737!1 var2358)
(declare-const var1134!1 String)
(declare-const var3591!1 var2189)
(declare-const var881!1 String)
(define-const var1532 var1002 (cast-from-var2358-to-var1002 var3737!1)) ; Statement: $r35 = (java.lang.Throwable) $r34 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var1189_isInstance/679547889=([org.hibernate.persister.entity.EntityPersister, java.lang.Object], boolean), cast-from-var2724-to-var1189=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), var2358-init=([], org.hibernate.WrongClassException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3325=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIdentifier/1096977613=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var1189_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), <init>/1069880086=([org.hibernate.WrongClassException, java.lang.String, java.io.Serializable, java.lang.String], void), cast-from-var2358-to-var1002=([org.hibernate.WrongClassException], java.lang.Throwable)}
; {var3626=org.hibernate.loader.Loader, var479=r5, var2244=java.sql.ResultSet, var3852=r10, var3577=i0, var2724=org.hibernate.persister.entity.Loadable, var2314=r0, var2208=org.hibernate.engine.spi.EntityKey, var955=r9, var3325=java.lang.Object, var120=r1, var1396=org.hibernate.LockMode, var2118=r3, var565=java.util.List, var3806=r19, var2865=org.hibernate.engine.spi.SharedSessionContractImplementor, var699=r6, var1189=org.hibernate.persister.entity.EntityPersister, var1953=$z0, var2358=org.hibernate.WrongClassException, var3737=$r34, var3917=$r33, var1936=$r26, var168=$r25, var676=$r27, var1134=$r30, var2189=java.io.Serializable, var3591=$r29, var881=$r28, var1002=java.lang.Throwable, var1532=$r35}
; {org.hibernate.loader.Loader=var3626, r5=var479, java.sql.ResultSet=var2244, r10=var3852, i0=var3577, org.hibernate.persister.entity.Loadable=var2724, r0=var2314, org.hibernate.engine.spi.EntityKey=var2208, r9=var955, java.lang.Object=var3325, r1=var120, org.hibernate.LockMode=var1396, r3=var2118, java.util.List=var565, r19=var3806, org.hibernate.engine.spi.SharedSessionContractImplementor=var2865, r6=var699, org.hibernate.persister.entity.EntityPersister=var1189, $z0=var1953, org.hibernate.WrongClassException=var2358, $r34=var3737, $r33=var3917, $r26=var1936, $r25=var168, $r27=var676, $r30=var1134, java.io.Serializable=var2189, $r29=var3591, $r28=var881, java.lang.Throwable=var1002, $r35=var1532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.loader.Loader;	r10 := @parameter0: java.sql.ResultSet;	i0 := @parameter1: int;	r0 := @parameter2: org.hibernate.persister.entity.Loadable;	r9 := @parameter3: org.hibernate.engine.spi.EntityKey;	r1 := @parameter4: java.lang.Object;	r3 := @parameter5: org.hibernate.LockMode;	r19 := @parameter6: java.util.List;	r6 := @parameter7: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = interfaceinvoke r0.<org.hibernate.persister.entity.Loadable: boolean isInstance(java.lang.Object)>(r1);	if $z0 != 0 goto $r2 = interfaceinvoke r0.<org.hibernate.persister.entity.Loadable: org.hibernate.bytecode.spi.BytecodeEnhancementMetadata getBytecodeEnhancementMetadata()>();	$r34 = new org.hibernate.WrongClassException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("loaded object was of wrong class ");	$r25 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = virtualinvoke r9.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>();	$r28 = interfaceinvoke r0.<org.hibernate.persister.entity.Loadable: java.lang.String getEntityName()>();	specialinvoke $r34.<org.hibernate.WrongClassException: void <init>(java.lang.String,java.io.Serializable,java.lang.String)>($r30, $r29, $r28);	$r35 = (java.lang.Throwable) $r34;	throw $r35
;block_num 2