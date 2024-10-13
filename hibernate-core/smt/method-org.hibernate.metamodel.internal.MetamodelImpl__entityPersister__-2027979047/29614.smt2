(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1249 0)
(declare-sort var2993 0)
(declare-sort var3936 0)
(declare-sort var3333 0)
(declare-sort var2169 0)
(declare-sort var1820 0)
(declare-sort var3346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityPersisterMap/-1379989693 (var1249) var3936)
(declare-fun var3936_get/1088891777 (var3936 var3333) var3333)
(declare-fun cast-from-String-to-var3333 (String) var3333)
(declare-fun cast-from-var3333-to-var2169 (var3333) var2169)
(declare-fun var1820-init () var1820)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1820 String) void)
(declare-fun cast-from-var1820-to-var3346 (var1820) var3346)
(declare-const null-var1249 var1249)
(declare-const null-String String)
(declare-const null-var2169 var2169)
(declare-const var438 var1249) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var438 null-var1249)))
(declare-const var204 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var204 null-String)))
(define-const var2121 var3936 (entityPersisterMap/-1379989693 var438)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap> 
(define-const var2222 var3333 (var3936_get/1088891777 var2121 (cast-from-String-to-var3333 var204))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2674 var2169 (cast-from-var3333-to-var2169 var2222)) ; Statement: r4 = (org.hibernate.persister.entity.EntityPersister) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2674 null-var2169)))) ; Negate: Cond: r4 != null  
(define-const var2870 var1820 var1820-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var1185 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1185)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1185!1 String)
(assert (= var1185!1 ""))
(assert true)
(define-const var758 String (append/672562846 var1185!1 "Unknown entity: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity: ") 
(declare-const var1185!2 String)
(assert (= var1185!2 (str.++ var1185!1 "Unknown entity: ")))
(assert true)
(define-const var976 String (append/672562846 var758 var204)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var758!1 String)
(assert (= var758!1 (str.++ var758 var204)))
(assert true)
(define-const var3952 String (toString/-2075883882 var976)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2870 var3952)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var2870!1 var1820)
(declare-const var3952!1 String)
(define-const var1335 var3346 (cast-from-var1820-to-var3346 var2870!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {entityPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var3936_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3333=([java.lang.String], java.lang.Object), cast-from-var3333-to-var2169=([java.lang.Object], org.hibernate.persister.entity.EntityPersister), var1820-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1820-to-var3346=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1249=org.hibernate.metamodel.internal.MetamodelImpl, var438=r0, var204=r1, var2993=null_type, var3936=java.util.Map, var2121=$r2, var3333=java.lang.Object, var2222=$r3, var2169=org.hibernate.persister.entity.EntityPersister, var2674=r4, var1820=org.hibernate.MappingException, var2870=$r11, var1185=$r10, var758=$r7, var976=$r8, var3952=$r9, var3346=java.lang.Throwable, var1335=$r12}
; {org.hibernate.metamodel.internal.MetamodelImpl=var1249, r0=var438, r1=var204, null_type=var2993, java.util.Map=var3936, $r2=var2121, java.lang.Object=var3333, $r3=var2222, org.hibernate.persister.entity.EntityPersister=var2169, r4=var2674, org.hibernate.MappingException=var1820, $r11=var2870, $r10=var1185, $r7=var758, $r8=var976, $r9=var3952, java.lang.Throwable=var3346, $r12=var1335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.persister.entity.EntityPersister) $r3;	if r4 != null goto return r4;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2