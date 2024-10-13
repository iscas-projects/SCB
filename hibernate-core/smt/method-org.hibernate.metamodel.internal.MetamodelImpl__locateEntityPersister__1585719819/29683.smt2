(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var3559 0)
(declare-sort var2254 0)
(declare-sort var8 0)
(declare-sort var2603 0)
(declare-sort var1473 0)
(declare-sort var860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityPersisterMap/-1379989693 (var793) var2254)
(declare-fun var2254_get/1088891777 (var2254 var8) var8)
(declare-fun cast-from-String-to-var8 (String) var8)
(declare-fun cast-from-var8-to-var2603 (var8) var2603)
(declare-fun var1473-init () var1473)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1344233324 (var1473 String) void)
(declare-fun cast-from-var1473-to-var860 (var1473) var860)
(declare-const null-var793 var793)
(declare-const null-String String)
(declare-const null-var2603 var2603)
(declare-const var231 var793) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var231 null-var793)))
(declare-const var2714 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2714 null-String)))
(define-const var3900 var2254 (entityPersisterMap/-1379989693 var231)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap> 
(define-const var808 var8 (var2254_get/1088891777 var3900 (cast-from-String-to-var8 var2714))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2476 var2603 (cast-from-var8-to-var2603 var808)) ; Statement: r4 = (org.hibernate.persister.entity.EntityPersister) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2476 null-var2603)))) ; Negate: Cond: r4 != null  
(define-const var138 var1473 var1473-init) ; Statement: $r11 = new org.hibernate.UnknownEntityTypeException 
(define-const var3847 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3847)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3847!1 String)
(assert (= var3847!1 ""))
(assert true)
(define-const var1858 String (append/672562846 var3847!1 "Unable to locate persister: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate persister: ") 
(declare-const var3847!2 String)
(assert (= var3847!2 (str.++ var3847!1 "Unable to locate persister: ")))
(assert true)
(define-const var1343 String (append/672562846 var1858 var2714)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1858!1 String)
(assert (= var1858!1 (str.++ var1858 var2714)))
(assert true)
(define-const var1887 String (toString/-2075883882 var1343)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1344233324 var138 var1887)) ; Statement: specialinvoke $r11.<org.hibernate.UnknownEntityTypeException: void <init>(java.lang.String)>($r9) 

(declare-const var138!1 var1473)
(declare-const var1887!1 String)
(define-const var456 var860 (cast-from-var1473-to-var860 var138!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {entityPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var2254_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var8=([java.lang.String], java.lang.Object), cast-from-var8-to-var2603=([java.lang.Object], org.hibernate.persister.entity.EntityPersister), var1473-init=([], org.hibernate.UnknownEntityTypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1344233324=([org.hibernate.UnknownEntityTypeException, java.lang.String], void), cast-from-var1473-to-var860=([org.hibernate.UnknownEntityTypeException], java.lang.Throwable)}
; {var793=org.hibernate.metamodel.internal.MetamodelImpl, var231=r0, var2714=r1, var3559=null_type, var2254=java.util.Map, var3900=$r2, var8=java.lang.Object, var808=$r3, var2603=org.hibernate.persister.entity.EntityPersister, var2476=r4, var1473=org.hibernate.UnknownEntityTypeException, var138=$r11, var3847=$r10, var1858=$r7, var1343=$r8, var1887=$r9, var860=java.lang.Throwable, var456=$r12}
; {org.hibernate.metamodel.internal.MetamodelImpl=var793, r0=var231, r1=var2714, null_type=var3559, java.util.Map=var2254, $r2=var3900, java.lang.Object=var8, $r3=var808, org.hibernate.persister.entity.EntityPersister=var2603, r4=var2476, org.hibernate.UnknownEntityTypeException=var1473, $r11=var138, $r10=var3847, $r7=var1858, $r8=var1343, $r9=var1887, java.lang.Throwable=var860, $r12=var456}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.persister.entity.EntityPersister) $r3;	if r4 != null goto return r4;	$r11 = new org.hibernate.UnknownEntityTypeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate persister: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.UnknownEntityTypeException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2