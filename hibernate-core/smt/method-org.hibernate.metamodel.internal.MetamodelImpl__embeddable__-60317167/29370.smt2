(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2409 0)
(declare-sort var1866 0)
(declare-sort var3378 0)
(declare-sort var2175 0)
(declare-sort var2019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jpaEmbeddableTypeMap/-1379989693 (var2409) var1866)
(declare-fun var1866_get/1088891777 (var1866 var3378) var3378)
(declare-fun cast-from-ClassObject-to-var3378 (ClassObject) var3378)
(declare-fun cast-from-var3378-to-var2175 (var3378) var2175)
(declare-fun var2019-init () var2019)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3378) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2019 String) void)
(declare-const null-var2409 var2409)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2175 var2175)
(declare-const var2321 var2409) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var2321 null-var2409)))
(declare-const var2547 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2547 null-ClassObject)))
(define-const var2722 var1866 (jpaEmbeddableTypeMap/-1379989693 var2321)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEmbeddableTypeMap> 
(define-const var86 var3378 (var1866_get/1088891777 var2722 (cast-from-ClassObject-to-var3378 var2547))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1087 var2175 (cast-from-var3378-to-var2175 var86)) ; Statement: r4 = (org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1087 null-var2175)))) ; Negate: Cond: r4 != null  
(define-const var1837 var2019 var2019-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1833 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1833)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1833!1 String)
(assert (= var1833!1 ""))
(assert true)
(define-const var996 String (append/672562846 var1833!1 "Not an embeddable: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an embeddable: ") 
(declare-const var1833!2 String)
(assert (= var1833!2 (str.++ var1833!1 "Not an embeddable: ")))
(assert true)
(define-const var2006 String (append/-1031950772 var996 (cast-from-ClassObject-to-var3378 var2547))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var996!1 String)
(assert (str.prefixof var996 var996!1))
(assert true)
(define-const var2258 String (toString/-2075883882 var2006)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1837 var2258)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var1837!1 var2019)
(declare-const var2258!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaEmbeddableTypeMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var1866_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3378=([java.lang.Class], java.lang.Object), cast-from-var3378-to-var2175=([java.lang.Object], org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor), var2019-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2409=org.hibernate.metamodel.internal.MetamodelImpl, var2321=r0, var2547=r1, var1866=java.util.Map, var2722=$r2, var3378=java.lang.Object, var86=$r3, var2175=org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor, var1087=r4, var2019=java.lang.IllegalArgumentException, var1837=$r5, var1833=$r6, var996=$r7, var2006=$r8, var2258=$r9}
; {org.hibernate.metamodel.internal.MetamodelImpl=var2409, r0=var2321, r1=var2547, java.util.Map=var1866, $r2=var2722, java.lang.Object=var3378, $r3=var86, org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor=var2175, r4=var1087, java.lang.IllegalArgumentException=var2019, $r5=var1837, $r6=var1833, $r7=var996, $r8=var2006, $r9=var2258}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEmbeddableTypeMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an embeddable: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2