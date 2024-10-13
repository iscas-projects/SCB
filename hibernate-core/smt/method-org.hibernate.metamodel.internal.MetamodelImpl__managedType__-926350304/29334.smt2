(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2817 0)
(declare-sort var382 0)
(declare-sort var2910 0)
(declare-sort var2241 0)
(declare-sort var3474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jpaEntityTypeMap/-1379989693 (var2817) var382)
(declare-fun var382_get/1088891777 (var382 var2910) var2910)
(declare-fun cast-from-ClassObject-to-var2910 (ClassObject) var2910)
(declare-fun cast-from-var2910-to-var2241 (var2910) var2241)
(declare-fun var3474-init () var3474)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2910) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3474 String) void)
(declare-const null-var2817 var2817)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2241 var2241)
(declare-const var83 var2817) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var83 null-var2817)))
(declare-const var3755 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3755 null-ClassObject)))
(define-const var3421 var382 (jpaEntityTypeMap/-1379989693 var83)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap> 
(define-const var3543 var2910 (var382_get/1088891777 var3421 (cast-from-ClassObject-to-var2910 var3755))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1384 var2241 (cast-from-var2910-to-var2241 var3543)) ; Statement: r14 = (javax.persistence.metamodel.ManagedType) $r3 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var1384 null-var2241))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var1384 null-var2241))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto $r4 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r14 
(assert (not (not (= var1384 null-var2241)))) ; Negate: Cond: r14 != null  
(define-const var1474 var3474 var3474-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3496 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3496)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3496!1 String)
(assert (= var3496!1 ""))
(assert true)
(define-const var1036 String (append/672562846 var3496!1 "Not a managed type: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a managed type: ") 
(declare-const var3496!2 String)
(assert (= var3496!2 (str.++ var3496!1 "Not a managed type: ")))
(assert true)
(define-const var1205 String (append/-1031950772 var1036 (cast-from-ClassObject-to-var2910 var3755))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1036!1 String)
(assert (str.prefixof var1036 var1036!1))
(assert true)
(define-const var3401 String (toString/-2075883882 var1205)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1474 var3401)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var1474!1 var3474)
(declare-const var3401!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaEntityTypeMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var382_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var2910=([java.lang.Class], java.lang.Object), cast-from-var2910-to-var2241=([java.lang.Object], javax.persistence.metamodel.ManagedType), var3474-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2817=org.hibernate.metamodel.internal.MetamodelImpl, var83=r0, var3755=r1, var382=java.util.Map, var3421=$r2, var2910=java.lang.Object, var3543=$r3, var2241=javax.persistence.metamodel.ManagedType, var1384=r14, var3474=java.lang.IllegalArgumentException, var1474=$r5, var3496=$r6, var1036=$r7, var1205=$r8, var3401=$r9}
; {org.hibernate.metamodel.internal.MetamodelImpl=var2817, r0=var83, r1=var3755, java.util.Map=var382, $r2=var3421, java.lang.Object=var2910, $r3=var3543, javax.persistence.metamodel.ManagedType=var2241, r14=var1384, java.lang.IllegalArgumentException=var3474, $r5=var1474, $r6=var3496, $r7=var1036, $r8=var1205, $r9=var3401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r14 = (javax.persistence.metamodel.ManagedType) $r3;	if r14 != null goto (branch);	if r14 != null goto (branch);	if r14 != null goto $r4 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r14;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a managed type: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 4