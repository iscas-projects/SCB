(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3828 0)
(declare-sort var3068 0)
(declare-sort var1221 0)
(declare-sort var287 0)
(declare-sort var3745 0)
(declare-sort var3562 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionPersisterMap/-1379989693 (var3828) var1221)
(declare-fun var1221_get/1088891777 (var1221 var287) var287)
(declare-fun cast-from-String-to-var287 (String) var287)
(declare-fun cast-from-var287-to-var3745 (var287) var3745)
(declare-fun var3562-init () var3562)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3562 String) void)
(declare-fun cast-from-var3562-to-var3279 (var3562) var3279)
(declare-const null-var3828 var3828)
(declare-const null-String String)
(declare-const null-var3745 var3745)
(declare-const var1889 var3828) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var1889 null-var3828)))
(declare-const var2889 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2889 null-String)))
(define-const var792 var1221 (collectionPersisterMap/-1379989693 var1889)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map collectionPersisterMap> 
(define-const var371 var287 (var1221_get/1088891777 var792 (cast-from-String-to-var287 var2889))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var804 var3745 (cast-from-var287-to-var3745 var371)) ; Statement: r4 = (org.hibernate.persister.collection.CollectionPersister) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var804 null-var3745)))) ; Negate: Cond: r4 != null  
(define-const var37 var3562 var3562-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var3671 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3671)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3671!1 String)
(assert (= var3671!1 ""))
(assert true)
(define-const var2799 String (append/672562846 var3671!1 "Could not locate CollectionPersister for role : ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate CollectionPersister for role : ") 
(declare-const var3671!2 String)
(assert (= var3671!2 (str.++ var3671!1 "Could not locate CollectionPersister for role : ")))
(assert true)
(define-const var2371 String (append/672562846 var2799 var2889)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2799!1 String)
(assert (= var2799!1 (str.++ var2799 var2889)))
(assert true)
(define-const var2016 String (toString/-2075883882 var2371)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var37 var2016)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var37!1 var3562)
(declare-const var2016!1 String)
(define-const var1857 var3279 (cast-from-var3562-to-var3279 var37!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var1221_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var287=([java.lang.String], java.lang.Object), cast-from-var287-to-var3745=([java.lang.Object], org.hibernate.persister.collection.CollectionPersister), var3562-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3562-to-var3279=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3828=org.hibernate.metamodel.internal.MetamodelImpl, var1889=r0, var2889=r1, var3068=null_type, var1221=java.util.Map, var792=$r2, var287=java.lang.Object, var371=$r3, var3745=org.hibernate.persister.collection.CollectionPersister, var804=r4, var3562=org.hibernate.MappingException, var37=$r11, var3671=$r10, var2799=$r7, var2371=$r8, var2016=$r9, var3279=java.lang.Throwable, var1857=$r12}
; {org.hibernate.metamodel.internal.MetamodelImpl=var3828, r0=var1889, r1=var2889, null_type=var3068, java.util.Map=var1221, $r2=var792, java.lang.Object=var287, $r3=var371, org.hibernate.persister.collection.CollectionPersister=var3745, r4=var804, org.hibernate.MappingException=var3562, $r11=var37, $r10=var3671, $r7=var2799, $r8=var2371, $r9=var2016, java.lang.Throwable=var3279, $r12=var1857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map collectionPersisterMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.persister.collection.CollectionPersister) $r3;	if r4 != null goto return r4;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate CollectionPersister for role : ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2