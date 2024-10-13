(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1425 0)
(declare-sort var3003 0)
(declare-sort var2805 0)
(declare-sort var137 0)
(declare-sort var1030 0)
(declare-sort var3573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeConverterDescriptorsByClass/1794729582 (var1425) var2805)
(declare-fun var3003_getAttributeConverterClass/-1535487190 (var3003) ClassObject)
(declare-fun var2805_put/1464166817 (var2805 var137 var137) var137)
(declare-fun cast-from-ClassObject-to-var137 (ClassObject) var137)
(declare-fun cast-from-var3003-to-var137 (var3003) var137)
(declare-fun var1030-init () var1030)
(declare-fun arr-var137-init () (Array Int var137))
(declare-fun String_format/-647569892 (var3573 String (Array Int var137)) String)
(declare-fun <init>/1590914260 (var1030 String) void)
(declare-const null-var1425 var1425)
(declare-const null-var3003 var3003)
(declare-const null-var2805 var2805)
(declare-const null-var137 var137)
(declare-const var3573-ENGLISH var3573)
(declare-const null-__Array__Int__var137__ (Array Int var137))
(declare-const var166 var1425) ; Statement: r0 := @this: org.hibernate.boot.model.convert.internal.AttributeConverterManager 
(assert (not (= var166 null-var1425)))
(declare-const var3502 var3003) ; Statement: r2 := @parameter0: org.hibernate.boot.model.convert.spi.ConverterDescriptor 
(assert (not (= var3502 null-var3003)))
(define-const var3550 var2805 (attributeConverterDescriptorsByClass/1794729582 var166)) ; Statement: $r1 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass> 
(assert (not (= var3550 null-var2805))) ; Cond: $r1 != null 
(define-const var870 var2805 (attributeConverterDescriptorsByClass/1794729582 var166)) ; Statement: $r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass> 
(define-const var1513 ClassObject (var3003_getAttributeConverterClass/-1535487190 var3502)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.boot.model.convert.spi.ConverterDescriptor: java.lang.Class getAttributeConverterClass()>() 
(define-const var919 var137 (var2805_put/1464166817 var870 (cast-from-ClassObject-to-var137 var1513) (cast-from-var3003-to-var137 var3502))) ; Statement: $r11 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2) 
 ; Statement: if $r11 == null goto return 
(assert (not (= var919 null-var137))) ; Negate: Cond: $r11 == null  
(define-const var3825 var1030 var1030-init) ; Statement: $r5 = new org.hibernate.AssertionFailure 
(define-const var1066 var3573 var3573-ENGLISH) ; Statement: $r7 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var83 (Array Int var137) arr-var137-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(define-const var820 ClassObject (var3003_getAttributeConverterClass/-1535487190 var3502)) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.boot.model.convert.spi.ConverterDescriptor: java.lang.Class getAttributeConverterClass()>() 
(declare-const var83!1 (Array Int var137))
(assert (not (= var83!1 null-__Array__Int__var137__)))
(assert (= (select var83!1 0) (cast-from-ClassObject-to-var137 var820))) ; Statement: $r6[0] = $r8 
(define-const var1241 String (String_format/-647569892 var1066 "AttributeConverter class [%s] registered multiple times" var83!1)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "AttributeConverter class [%s] registered multiple times", $r6) 
(assert true)
;(assert (<init>/1590914260 var3825 var1241)) ; Statement: specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r9) 

(declare-const var3825!1 var1030)
(declare-const var1241!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeConverterDescriptorsByClass/1794729582=([org.hibernate.boot.model.convert.internal.AttributeConverterManager], java.util.Map), var3003_getAttributeConverterClass/-1535487190=([org.hibernate.boot.model.convert.spi.ConverterDescriptor], java.lang.Class), var2805_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var137=([java.lang.Class], java.lang.Object), cast-from-var3003-to-var137=([org.hibernate.boot.model.convert.spi.ConverterDescriptor], java.lang.Object), var1030-init=([], org.hibernate.AssertionFailure), arr-var137-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1425=org.hibernate.boot.model.convert.internal.AttributeConverterManager, var166=r0, var3003=org.hibernate.boot.model.convert.spi.ConverterDescriptor, var3502=r2, var2805=java.util.Map, var3550=$r1, var870=$r3, var1513=$r4, var137=java.lang.Object, var919=$r11, var1030=org.hibernate.AssertionFailure, var3825=$r5, var3573=java.util.Locale, var1066=$r7, var83=$r6, var820=$r8, var1241=$r9}
; {org.hibernate.boot.model.convert.internal.AttributeConverterManager=var1425, r0=var166, org.hibernate.boot.model.convert.spi.ConverterDescriptor=var3003, r2=var3502, java.util.Map=var2805, $r1=var3550, $r3=var870, $r4=var1513, java.lang.Object=var137, $r11=var919, org.hibernate.AssertionFailure=var1030, $r5=var3825, java.util.Locale=var3573, $r7=var1066, $r6=var83, $r8=var820, $r9=var1241}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.convert.internal.AttributeConverterManager;	r2 := @parameter0: org.hibernate.boot.model.convert.spi.ConverterDescriptor;	$r1 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass>;	$r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass>;	$r4 = interfaceinvoke r2.<org.hibernate.boot.model.convert.spi.ConverterDescriptor: java.lang.Class getAttributeConverterClass()>();	$r11 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2);	if $r11 == null goto return;	$r5 = new org.hibernate.AssertionFailure;	$r7 = <java.util.Locale: java.util.Locale ENGLISH>;	$r6 = newarray (java.lang.Object)[1];	$r8 = interfaceinvoke r2.<org.hibernate.boot.model.convert.spi.ConverterDescriptor: java.lang.Class getAttributeConverterClass()>();	$r6[0] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "AttributeConverter class [%s] registered multiple times", $r6);	specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 3