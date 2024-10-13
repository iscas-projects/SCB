(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort var3222 0)
(declare-sort var3361 0)
(declare-sort var2902 0)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jpaEntityTypeMap/-1379989693 (var1163) var3222)
(declare-fun var3222_get/1088891777 (var3222 var3361) var3361)
(declare-fun cast-from-ClassObject-to-var3361 (ClassObject) var3361)
(declare-fun cast-from-var3361-to-var2902 (var3361) var2902)
(declare-fun var2765-init () var2765)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3361) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2765 String) void)
(declare-const null-var1163 var1163)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2902 var2902)
(declare-const var3574 var1163) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var3574 null-var1163)))
(declare-const var2540 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2540 null-ClassObject)))
(define-const var1295 var3222 (jpaEntityTypeMap/-1379989693 var3574)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap> 
(define-const var1992 var3361 (var3222_get/1088891777 var1295 (cast-from-ClassObject-to-var3361 var2540))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3303 var2902 (cast-from-var3361-to-var2902 var1992)) ; Statement: r4 = (javax.persistence.metamodel.EntityType) $r3 
 ; Statement: if r4 != null goto $r5 = (org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor) r4 
(assert (not (not (= var3303 null-var2902)))) ; Negate: Cond: r4 != null  
(define-const var1893 var2765 var2765-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var3260 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3260)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3260!1 String)
(assert (= var3260!1 ""))
(assert true)
(define-const var1909 String (append/672562846 var3260!1 "Not an entity: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an entity: ") 
(declare-const var3260!2 String)
(assert (= var3260!2 (str.++ var3260!1 "Not an entity: ")))
(assert true)
(define-const var2413 String (append/-1031950772 var1909 (cast-from-ClassObject-to-var3361 var2540))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1909!1 String)
(assert (str.prefixof var1909 var1909!1))
(assert true)
(define-const var1167 String (toString/-2075883882 var2413)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1893 var1167)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1893!1 var2765)
(declare-const var1167!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaEntityTypeMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var3222_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3361=([java.lang.Class], java.lang.Object), cast-from-var3361-to-var2902=([java.lang.Object], javax.persistence.metamodel.EntityType), var2765-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1163=org.hibernate.metamodel.internal.MetamodelImpl, var3574=r0, var2540=r1, var3222=java.util.Map, var1295=$r2, var3361=java.lang.Object, var1992=$r3, var2902=javax.persistence.metamodel.EntityType, var3303=r4, var2765=java.lang.IllegalArgumentException, var1893=$r6, var3260=$r7, var1909=$r8, var2413=$r9, var1167=$r10}
; {org.hibernate.metamodel.internal.MetamodelImpl=var1163, r0=var3574, r1=var2540, java.util.Map=var3222, $r2=var1295, java.lang.Object=var3361, $r3=var1992, javax.persistence.metamodel.EntityType=var2902, r4=var3303, java.lang.IllegalArgumentException=var2765, $r6=var1893, $r7=var3260, $r8=var1909, $r9=var2413, $r10=var1167}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (javax.persistence.metamodel.EntityType) $r3;	if r4 != null goto $r5 = (org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor) r4;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an entity: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2