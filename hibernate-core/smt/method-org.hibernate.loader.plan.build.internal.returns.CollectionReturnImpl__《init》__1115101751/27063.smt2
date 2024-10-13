(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort var2938 0)
(declare-sort var329 0)
(declare-sort var2160 0)
(declare-sort var860 0)
(declare-sort var389 0)
(declare-sort var469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var329_generateImplicitUid/-1855681535 (var329) String)
(declare-fun var2938_getCollectionPersister/152087219 (var2938) var2160)
(declare-fun var329_makeRootCollectionQuerySpace/347979189 (var329 String var2160) var860)
(declare-fun var389-init () var389)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2160_getRole/758162468 (var2160) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-806655555 (var389 String) void)
(declare-fun <init>/-1988358373 (var469 var860 var389 Bool) void)
(declare-fun cast-from-var1505-to-var469 (var1505) var469)
(declare-const null-var1505 var1505)
(declare-const null-var2938 var2938)
(declare-const null-var329 var329)
(declare-const var926 var1505) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.returns.CollectionReturnImpl 
(assert (not (= var926 null-var1505)))
(declare-const var2657 var2938) ; Statement: r2 := @parameter0: org.hibernate.persister.walking.spi.CollectionDefinition 
(assert (not (= var2657 null-var2938)))
(declare-const var907 var329) ; Statement: r1 := @parameter1: org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces 
(assert (not (= var907 null-var329)))
(define-const var3781 String (var329_generateImplicitUid/-1855681535 var907)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces: java.lang.String generateImplicitUid()>() 
(define-const var3283 var2160 (var2938_getCollectionPersister/152087219 var2657)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var385 var860 (var329_makeRootCollectionQuerySpace/347979189 var907 var3781 var3283)) ; Statement: $r13 = interfaceinvoke r1.<org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces: org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace makeRootCollectionQuerySpace(java.lang.String,org.hibernate.persister.collection.CollectionPersister)>($r4, $r3) 
(define-const var136 var389 var389-init) ; Statement: $r5 = new org.hibernate.loader.PropertyPath 
(define-const var884 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var884)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var884!1 String)
(assert (= var884!1 ""))
(assert true)
(define-const var3308 String (append/672562846 var884!1 "[")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var884!2 String)
(assert (= var884!2 (str.++ var884!1 "[")))
(define-const var2842 var2160 (var2938_getCollectionPersister/152087219 var2657)) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var2576 String (var2160_getRole/758162468 var2842)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
(define-const var3186 String (append/672562846 var3308 var2576)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3308!1 String)
(assert (= var3308!1 (str.++ var3308 var2576)))
(assert true)
(define-const var595 String (append/672562846 var3186 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3186!1 String)
(assert (= var3186!1 (str.++ var3186 "]")))
(assert true)
(define-const var3008 String (toString/-2075883882 var595)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-806655555 var136 var3008)) ; Statement: specialinvoke $r5.<org.hibernate.loader.PropertyPath: void <init>(java.lang.String)>($r12) 

(declare-const var136!1 var389)
(declare-const var3008!1 String)
(assert true)
;(assert (<init>/-1988358373 (cast-from-var1505-to-var469 var926) var385 var136!1 (ite (= 1 1) true false))) ; Statement: specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCollectionReference: void <init>(org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace,org.hibernate.loader.PropertyPath,boolean)>($r13, $r5, 1) 

(declare-const var926!1 var1505)
(declare-const var385!1 var860)
(declare-const var136!2 var389)
(declare-const var1555 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var329_generateImplicitUid/-1855681535=([org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces], java.lang.String), var2938_getCollectionPersister/152087219=([org.hibernate.persister.walking.spi.CollectionDefinition], org.hibernate.persister.collection.CollectionPersister), var329_makeRootCollectionQuerySpace/347979189=([org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces, java.lang.String, org.hibernate.persister.collection.CollectionPersister], org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace), var389-init=([], org.hibernate.loader.PropertyPath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2160_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-806655555=([org.hibernate.loader.PropertyPath, java.lang.String], void), <init>/-1988358373=([org.hibernate.loader.plan.build.internal.returns.AbstractCollectionReference, org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace, org.hibernate.loader.PropertyPath, boolean], void), cast-from-var1505-to-var469=([org.hibernate.loader.plan.build.internal.returns.CollectionReturnImpl], org.hibernate.loader.plan.build.internal.returns.AbstractCollectionReference)}
; {var1505=org.hibernate.loader.plan.build.internal.returns.CollectionReturnImpl, var926=r0, var2938=org.hibernate.persister.walking.spi.CollectionDefinition, var2657=r2, var329=org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces, var907=r1, var3781=$r4, var2160=org.hibernate.persister.collection.CollectionPersister, var3283=$r3, var860=org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace, var385=$r13, var389=org.hibernate.loader.PropertyPath, var136=$r5, var884=$r6, var3308=$r9, var2842=$r7, var2576=$r8, var3186=$r10, var595=$r11, var3008=$r12, var469=org.hibernate.loader.plan.build.internal.returns.AbstractCollectionReference, var1555=1}
; {org.hibernate.loader.plan.build.internal.returns.CollectionReturnImpl=var1505, r0=var926, org.hibernate.persister.walking.spi.CollectionDefinition=var2938, r2=var2657, org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces=var329, r1=var907, $r4=var3781, org.hibernate.persister.collection.CollectionPersister=var2160, $r3=var3283, org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace=var860, $r13=var385, org.hibernate.loader.PropertyPath=var389, $r5=var136, $r6=var884, $r9=var3308, $r7=var2842, $r8=var2576, $r10=var3186, $r11=var595, $r12=var3008, org.hibernate.loader.plan.build.internal.returns.AbstractCollectionReference=var469, 1=var1555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.returns.CollectionReturnImpl;	r2 := @parameter0: org.hibernate.persister.walking.spi.CollectionDefinition;	r1 := @parameter1: org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces;	$r4 = interfaceinvoke r1.<org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces: java.lang.String generateImplicitUid()>();	$r3 = interfaceinvoke r2.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r13 = interfaceinvoke r1.<org.hibernate.loader.plan.build.spi.ExpandingQuerySpaces: org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace makeRootCollectionQuerySpace(java.lang.String,org.hibernate.persister.collection.CollectionPersister)>($r4, $r3);	$r5 = new org.hibernate.loader.PropertyPath;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = interfaceinvoke r2.<org.hibernate.persister.walking.spi.CollectionDefinition: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r8 = interfaceinvoke $r7.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.hibernate.loader.PropertyPath: void <init>(java.lang.String)>($r12);	specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCollectionReference: void <init>(org.hibernate.loader.plan.build.spi.ExpandingCollectionQuerySpace,org.hibernate.loader.PropertyPath,boolean)>($r13, $r5, 1);	return
;block_num 1