(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1079 0)
(declare-sort var3872 0)
(declare-sort var1113 0)
(declare-sort var1640 0)
(declare-sort var1806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1113) void)
(declare-fun cast-from-var1079-to-var1113 (var1079) var1113)
(declare-fun attributeConverter/-1672506457 (var1079) var3872)
(declare-fun autoApply/-1672506457 (var1079) Bool)
(declare-fun getClass/1258963082 (var1113) ClassObject)
(declare-fun cast-from-var3872-to-var1113 (var3872) var1113)
(declare-fun extractAttributeConverterParameterizedType/1362574963 (var1079 ClassObject) var1640)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var1806-init () var1806)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var1806 String) void)
(declare-const null-var1079 var1079)
(declare-const null-var3872 var3872)
(declare-const null-Bool Bool)
(declare-const null-var1640 var1640)
(declare-const var1089 var1079) ; Statement: r0 := @this: org.hibernate.cfg.AttributeConverterDefinition 
(assert (not (= var1089 null-var1079)))
(declare-const var492 var3872) ; Statement: r1 := @parameter0: javax.persistence.AttributeConverter 
(assert (not (= var492 null-var3872)))
(declare-const var1853 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1853 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1079-to-var1113 var1089))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1089!1 var1079)
(declare-const var1089!2 var1079)
(assert (not (= var1089!2 null-var1079)))
(assert (= (attributeConverter/-1672506457 var1089!2) var492)) ; Statement: r0.<org.hibernate.cfg.AttributeConverterDefinition: javax.persistence.AttributeConverter attributeConverter> = r1 
(declare-const var1089!3 var1079)
(assert (not (= var1089!3 null-var1079)))
(assert (= (autoApply/-1672506457 var1089!3) var1853)) ; Statement: r0.<org.hibernate.cfg.AttributeConverterDefinition: boolean autoApply> = z0 
(assert true)
(define-const var3946 ClassObject (getClass/1258963082 (cast-from-var3872-to-var1113 var492))) ; Statement: r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2476 var1640 (extractAttributeConverterParameterizedType/1362574963 var1089!3 (cast-from-ClassObject-to-ClassObject var3946))) ; Statement: r3 = specialinvoke r0.<org.hibernate.cfg.AttributeConverterDefinition: java.lang.reflect.ParameterizedType extractAttributeConverterParameterizedType(java.lang.reflect.Type)>(r2) 
 ; Statement: if r3 != null goto $r4 = interfaceinvoke r3.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>() 
(assert (not (not (= var2476 null-var1640)))) ; Negate: Cond: r3 != null  
(define-const var2849 var1806 var1806-init) ; Statement: $r50 = new org.hibernate.AssertionFailure 
(define-const var3365 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3365)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3365!1 String)
(assert (= var3365!1 ""))
(assert true)
(define-const var2189 String (append/672562846 var3365!1 "Could not extract ParameterizedType representation of AttributeConverter definition from AttributeConverter implementation class [")) ; Statement: $r45 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not extract ParameterizedType representation of AttributeConverter definition from AttributeConverter implementation class [") 
(declare-const var3365!2 String)
(assert (= var3365!2 (str.++ var3365!1 "Could not extract ParameterizedType representation of AttributeConverter definition from AttributeConverter implementation class [")))
(assert true)
(define-const var2760 String (getName/-1958580599 var3946)) ; Statement: $r44 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1427 String (append/672562846 var2189 var2760)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44) 
(declare-const var2189!1 String)
(assert (= var2189!1 (str.++ var2189 var2760)))
(assert true)
(define-const var2787 String (append/672562846 var1427 "]")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1427!1 String)
(assert (= var1427!1 (str.++ var1427 "]")))
(assert true)
(define-const var3859 String (toString/-2075883882 var2787)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2849 var3859)) ; Statement: specialinvoke $r50.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r48) 

(declare-const var2849!1 var1806)
(declare-const var3859!1 String)
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1079-to-var1113=([org.hibernate.cfg.AttributeConverterDefinition], java.lang.Object), attributeConverter/-1672506457=([org.hibernate.cfg.AttributeConverterDefinition], javax.persistence.AttributeConverter), autoApply/-1672506457=([org.hibernate.cfg.AttributeConverterDefinition], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3872-to-var1113=([javax.persistence.AttributeConverter], java.lang.Object), extractAttributeConverterParameterizedType/1362574963=([org.hibernate.cfg.AttributeConverterDefinition, java.lang.reflect.Type], java.lang.reflect.ParameterizedType), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var1806-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1079=org.hibernate.cfg.AttributeConverterDefinition, var1089=r0, var3872=javax.persistence.AttributeConverter, var492=r1, var1853=z0, var1113=java.lang.Object, var3946=r2, var1640=java.lang.reflect.ParameterizedType, var2476=r3, var1806=org.hibernate.AssertionFailure, var2849=$r50, var3365=$r49, var2189=$r45, var2760=$r44, var1427=$r46, var2787=$r47, var3859=$r48}
; {org.hibernate.cfg.AttributeConverterDefinition=var1079, r0=var1089, javax.persistence.AttributeConverter=var3872, r1=var492, z0=var1853, java.lang.Object=var1113, r2=var3946, java.lang.reflect.ParameterizedType=var1640, r3=var2476, org.hibernate.AssertionFailure=var1806, $r50=var2849, $r49=var3365, $r45=var2189, $r44=var2760, $r46=var1427, $r47=var2787, $r48=var3859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.AttributeConverterDefinition;	r1 := @parameter0: javax.persistence.AttributeConverter;	z0 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.cfg.AttributeConverterDefinition: javax.persistence.AttributeConverter attributeConverter> = r1;	r0.<org.hibernate.cfg.AttributeConverterDefinition: boolean autoApply> = z0;	r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	r3 = specialinvoke r0.<org.hibernate.cfg.AttributeConverterDefinition: java.lang.reflect.ParameterizedType extractAttributeConverterParameterizedType(java.lang.reflect.Type)>(r2);	if r3 != null goto $r4 = interfaceinvoke r3.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>();	$r50 = new org.hibernate.AssertionFailure;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not extract ParameterizedType representation of AttributeConverter definition from AttributeConverter implementation class [");	$r44 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r50.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r48);	throw $r50
;block_num 2