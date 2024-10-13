(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var876 0)
(declare-sort var3370 0)
(declare-sort var3190 0)
(declare-sort var2375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeConverterDescriptorsByClass/1794729582 (var876) var3190)
(declare-fun var3370_getAttributeConverterClass/-1535487190 (var3370) ClassObject)
(declare-fun var3190_put/1464166817 (var3190 var2375 var2375) var2375)
(declare-fun cast-from-ClassObject-to-var2375 (ClassObject) var2375)
(declare-fun cast-from-var3370-to-var2375 (var3370) var2375)
(declare-const null-var876 var876)
(declare-const null-var3370 var3370)
(declare-const null-var3190 var3190)
(declare-const null-var2375 var2375)
(declare-const var974 var876) ; Statement: r0 := @this: org.hibernate.boot.model.convert.internal.AttributeConverterManager 
(assert (not (= var974 null-var876)))
(declare-const var3909 var3370) ; Statement: r2 := @parameter0: org.hibernate.boot.model.convert.spi.ConverterDescriptor 
(assert (not (= var3909 null-var3370)))
(define-const var2027 var3190 (attributeConverterDescriptorsByClass/1794729582 var974)) ; Statement: $r1 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass> 
(assert (not (= var2027 null-var3190))) ; Cond: $r1 != null 
(define-const var1354 var3190 (attributeConverterDescriptorsByClass/1794729582 var974)) ; Statement: $r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass> 
(define-const var3515 ClassObject (var3370_getAttributeConverterClass/-1535487190 var3909)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.boot.model.convert.spi.ConverterDescriptor: java.lang.Class getAttributeConverterClass()>() 
(define-const var1529 var2375 (var3190_put/1464166817 var1354 (cast-from-ClassObject-to-var2375 var3515) (cast-from-var3370-to-var2375 var3909))) ; Statement: $r11 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2) 
 ; Statement: if $r11 == null goto return 
(assert (= var1529 null-var2375)) ; Cond: $r11 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeConverterDescriptorsByClass/1794729582=([org.hibernate.boot.model.convert.internal.AttributeConverterManager], java.util.Map), var3370_getAttributeConverterClass/-1535487190=([org.hibernate.boot.model.convert.spi.ConverterDescriptor], java.lang.Class), var3190_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var2375=([java.lang.Class], java.lang.Object), cast-from-var3370-to-var2375=([org.hibernate.boot.model.convert.spi.ConverterDescriptor], java.lang.Object)}
; {var876=org.hibernate.boot.model.convert.internal.AttributeConverterManager, var974=r0, var3370=org.hibernate.boot.model.convert.spi.ConverterDescriptor, var3909=r2, var3190=java.util.Map, var2027=$r1, var1354=$r3, var3515=$r4, var2375=java.lang.Object, var1529=$r11}
; {org.hibernate.boot.model.convert.internal.AttributeConverterManager=var876, r0=var974, org.hibernate.boot.model.convert.spi.ConverterDescriptor=var3370, r2=var3909, java.util.Map=var3190, $r1=var2027, $r3=var1354, $r4=var3515, java.lang.Object=var2375, $r11=var1529}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.convert.internal.AttributeConverterManager;	r2 := @parameter0: org.hibernate.boot.model.convert.spi.ConverterDescriptor;	$r1 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass>;	$r3 = r0.<org.hibernate.boot.model.convert.internal.AttributeConverterManager: java.util.Map attributeConverterDescriptorsByClass>;	$r4 = interfaceinvoke r2.<org.hibernate.boot.model.convert.spi.ConverterDescriptor: java.lang.Class getAttributeConverterClass()>();	$r11 = interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2);	if $r11 == null goto return;	return
;block_num 3