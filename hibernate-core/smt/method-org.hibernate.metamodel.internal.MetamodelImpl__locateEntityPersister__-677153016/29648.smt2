(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3090 0)
(declare-sort var805 0)
(declare-sort var2057 0)
(declare-sort var3287 0)
(declare-sort var2947 0)
(declare-sort var2050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityPersisterMap/-1379989693 (var3090) var805)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var805_get/1088891777 (var805 var2057) var2057)
(declare-fun cast-from-String-to-var2057 (String) var2057)
(declare-fun cast-from-var2057-to-var3287 (var2057) var3287)
(declare-fun var2947-init () var2947)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1344233324 (var2947 String) void)
(declare-fun cast-from-var2947-to-var2050 (var2947) var2050)
(declare-const null-var3090 var3090)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3287 var3287)
(declare-const var3254 var3090) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var3254 null-var3090)))
(declare-const var3956 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3956 null-ClassObject)))
(define-const var3571 var805 (entityPersisterMap/-1379989693 var3254)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap> 
(assert true)
(define-const var56 String (getName/-1958580599 var3956)) ; Statement: $r3 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var2912 var2057 (var805_get/1088891777 var3571 (cast-from-String-to-var2057 var56))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var2944 var3287 (cast-from-var2057-to-var3287 var2912)) ; Statement: r16 = (org.hibernate.persister.entity.EntityPersister) $r4 
 ; Statement: if r16 != null goto (branch) 
(assert (not (= var2944 null-var3287))) ; Cond: r16 != null 
 ; Statement: if r16 != null goto return r16 
(assert (not (not (= var2944 null-var3287)))) ; Negate: Cond: r16 != null  
(define-const var386 var2947 var2947-init) ; Statement: $r18 = new org.hibernate.UnknownEntityTypeException 
(define-const var2634 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2634)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2634!1 String)
(assert (= var2634!1 ""))
(assert true)
(define-const var3616 String (append/672562846 var2634!1 "Unable to locate persister: ")) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate persister: ") 
(declare-const var2634!2 String)
(assert (= var2634!2 (str.++ var2634!1 "Unable to locate persister: ")))
(assert true)
(define-const var3860 String (getName/-1958580599 var3956)) ; Statement: $r7 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3821 String (append/672562846 var3616 var3860)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3616!1 String)
(assert (= var3616!1 (str.++ var3616 var3860)))
(assert true)
(define-const var1703 String (toString/-2075883882 var3821)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1344233324 var386 var1703)) ; Statement: specialinvoke $r18.<org.hibernate.UnknownEntityTypeException: void <init>(java.lang.String)>($r10) 

(declare-const var386!1 var2947)
(declare-const var1703!1 String)
(define-const var198 var2050 (cast-from-var2947-to-var2050 var386!1)) ; Statement: $r19 = (java.lang.Throwable) $r18 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {entityPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), getName/-1958580599=([java.lang.Class], java.lang.String), var805_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2057=([java.lang.String], java.lang.Object), cast-from-var2057-to-var3287=([java.lang.Object], org.hibernate.persister.entity.EntityPersister), var2947-init=([], org.hibernate.UnknownEntityTypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1344233324=([org.hibernate.UnknownEntityTypeException, java.lang.String], void), cast-from-var2947-to-var2050=([org.hibernate.UnknownEntityTypeException], java.lang.Throwable)}
; {var3090=org.hibernate.metamodel.internal.MetamodelImpl, var3254=r0, var3956=r1, var805=java.util.Map, var3571=$r2, var56=$r3, var2057=java.lang.Object, var2912=$r4, var3287=org.hibernate.persister.entity.EntityPersister, var2944=r16, var2947=org.hibernate.UnknownEntityTypeException, var386=$r18, var2634=$r17, var3616=$r8, var3860=$r7, var3821=$r9, var1703=$r10, var2050=java.lang.Throwable, var198=$r19}
; {org.hibernate.metamodel.internal.MetamodelImpl=var3090, r0=var3254, r1=var3956, java.util.Map=var805, $r2=var3571, $r3=var56, java.lang.Object=var2057, $r4=var2912, org.hibernate.persister.entity.EntityPersister=var3287, r16=var2944, org.hibernate.UnknownEntityTypeException=var2947, $r18=var386, $r17=var2634, $r8=var3616, $r7=var3860, $r9=var3821, $r10=var1703, java.lang.Throwable=var2050, $r19=var198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap>;	$r3 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r16 = (org.hibernate.persister.entity.EntityPersister) $r4;	if r16 != null goto (branch);	if r16 != null goto return r16;	$r18 = new org.hibernate.UnknownEntityTypeException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate persister: ");	$r7 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.hibernate.UnknownEntityTypeException: void <init>(java.lang.String)>($r10);	$r19 = (java.lang.Throwable) $r18;	throw $r19
;block_num 3