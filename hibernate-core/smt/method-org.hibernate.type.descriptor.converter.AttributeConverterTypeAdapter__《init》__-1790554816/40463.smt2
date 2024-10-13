(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1632 0)
(declare-sort var1854 0)
(declare-sort var2339 0)
(declare-sort var1439 0)
(declare-sort var401 0)
(declare-sort var87 0)
(declare-sort var2995 0)
(declare-sort var3095 0)
(declare-sort var1562 0)
(declare-sort var805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1184982036 (var87 var1439 var401) void)
(declare-fun cast-from-var1632-to-var87 (var1632) var87)
(declare-fun name/-1670324398 (var1632) String)
(declare-fun description/-1670324398 (var1632) String)
(declare-fun modelType/-1670324398 (var1632) ClassObject)
(declare-fun jdbcType/-1670324398 (var1632) ClassObject)
(declare-fun attributeConverter/-1670324398 (var1632) var2339)
(declare-fun var401_getMutabilityPlan/-1694386226 (var401) var2995)
(declare-fun var2995_isMutable/2045870021 (var2995) Bool)
(declare-fun var3095-init () var3095)
(declare-fun cast-from-var3095-to-var2995 (var3095) var2995)
(declare-fun <init>/-1058720724 (var3095 var2339) void)
(declare-fun mutabilityPlan/-1670324398 (var1632) var2995)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var1562 var805) void)
(declare-fun cast-from-String-to-var805 (String) var805)
(declare-const null-var1632 var1632)
(declare-const null-String String)
(declare-const null-var2339 var2339)
(declare-const null-var1439 var1439)
(declare-const null-ClassObject ClassObject)
(declare-const null-var401 var401)
(declare-const var1632-log var1562)
(declare-const var3303 var1632) ; Statement: r0 := @this: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter 
(assert (not (= var3303 null-var1632)))
(declare-const var3720 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3720 null-String)))
(declare-const var361 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var361 null-String)))
(declare-const var1065 var2339) ; Statement: r7 := @parameter2: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter 
(assert (not (= var1065 null-var2339)))
(declare-const var2197 var1439) ; Statement: r1 := @parameter3: org.hibernate.type.descriptor.sql.SqlTypeDescriptor 
(assert (not (= var2197 null-var1439)))
(declare-const var572 ClassObject) ; Statement: r5 := @parameter4: java.lang.Class 
(assert (not (= var572 null-ClassObject)))
(declare-const var1811 ClassObject) ; Statement: r6 := @parameter5: java.lang.Class 
(assert (not (= var1811 null-ClassObject)))
(declare-const var107 var401) ; Statement: r2 := @parameter6: org.hibernate.type.descriptor.java.JavaTypeDescriptor 
(assert (not (= var107 null-var401)))
(assert true)
;(assert (<init>/-1184982036 (cast-from-var1632-to-var87 var3303) var2197 var107)) ; Statement: specialinvoke r0.<org.hibernate.type.AbstractSingleColumnStandardBasicType: void <init>(org.hibernate.type.descriptor.sql.SqlTypeDescriptor,org.hibernate.type.descriptor.java.JavaTypeDescriptor)>(r1, r2) 

(declare-const var3303!1 var1632)
(declare-const var2197!1 var1439)
(declare-const var107!1 var401)
(declare-const var3303!2 var1632)
(assert (not (= var3303!2 null-var1632)))
(assert (= (name/-1670324398 var3303!2) var3720)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String name> = r3 
(declare-const var3303!3 var1632)
(assert (not (= var3303!3 null-var1632)))
(assert (= (description/-1670324398 var3303!3) var361)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String description> = r4 
(declare-const var3303!4 var1632)
(assert (not (= var3303!4 null-var1632)))
(assert (= (modelType/-1670324398 var3303!4) var572)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class modelType> = r5 
(declare-const var3303!5 var1632)
(assert (not (= var3303!5 null-var1632)))
(assert (= (jdbcType/-1670324398 var3303!5) var1811)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class jdbcType> = r6 
(declare-const var3303!6 var1632)
(assert (not (= var3303!6 null-var1632)))
(assert (= (attributeConverter/-1670324398 var3303!6) var1065)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter attributeConverter> = r7 
(define-const var182 var2995 (var401_getMutabilityPlan/-1694386226 var107!1)) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: org.hibernate.type.descriptor.java.MutabilityPlan getMutabilityPlan()>() 
(define-const var3102 Bool (var2995_isMutable/2045870021 var182)) ; Statement: $z0 = interfaceinvoke $r8.<org.hibernate.type.descriptor.java.MutabilityPlan: boolean isMutable()>() 
 ; Statement: if $z0 == 0 goto $r14 = <org.hibernate.type.descriptor.java.ImmutableMutabilityPlan: org.hibernate.type.descriptor.java.ImmutableMutabilityPlan INSTANCE> 
(assert (not (= (ite var3102 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3450 var3095 var3095-init) ; Statement: $r15 = new org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl 
(define-const var3200 var2995 (cast-from-var3095-to-var2995 var3450)) ; Statement: $r14 = $r15 
(assert true)
;(assert (<init>/-1058720724 var3450 var1065)) ; Statement: specialinvoke $r15.<org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl: void <init>(org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter)>(r7) 

(declare-const var3450!1 var3095)
(declare-const var1065!1 var2339)
 ; Statement: goto [?= r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.type.descriptor.java.MutabilityPlan mutabilityPlan> = $r14] 
(assert true) ; Non Conditional
(declare-const var3303!7 var1632)
(assert (not (= var3303!7 null-var1632)))
(assert (= (mutabilityPlan/-1670324398 var3303!7) var3200)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.type.descriptor.java.MutabilityPlan mutabilityPlan> = $r14 
(define-const var3164 var1562 var1632-log) ; Statement: $r10 = <org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.jboss.logging.Logger log> 
(define-const var988 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var988)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var988!1 String)
(assert (= var988!1 ""))
(assert true)
(define-const var1145 String (append/672562846 var988!1 "Created AttributeConverterTypeAdapter -> ")) ; Statement: $r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created AttributeConverterTypeAdapter -> ") 
(declare-const var988!2 String)
(assert (= var988!2 (str.++ var988!1 "Created AttributeConverterTypeAdapter -> ")))
(assert true)
(define-const var2403 String (append/672562846 var1145 var3720)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1145!1 String)
(assert (= var1145!1 (str.++ var1145 var3720)))
(assert true)
(define-const var3198 String (toString/-2075883882 var2403)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var3164 (cast-from-String-to-var805 var3198))) ; Statement: virtualinvoke $r10.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r13) 

(declare-const var3164!1 var1562)
(declare-const var3198!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1184982036=([org.hibernate.type.AbstractSingleColumnStandardBasicType, org.hibernate.type.descriptor.sql.SqlTypeDescriptor, org.hibernate.type.descriptor.java.JavaTypeDescriptor], void), cast-from-var1632-to-var87=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.type.AbstractSingleColumnStandardBasicType), name/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.String), description/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.String), modelType/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), jdbcType/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), attributeConverter/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter), var401_getMutabilityPlan/-1694386226=([org.hibernate.type.descriptor.java.JavaTypeDescriptor], org.hibernate.type.descriptor.java.MutabilityPlan), var2995_isMutable/2045870021=([org.hibernate.type.descriptor.java.MutabilityPlan], boolean), var3095-init=([], org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl), cast-from-var3095-to-var2995=([org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl], org.hibernate.type.descriptor.java.MutabilityPlan), <init>/-1058720724=([org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl, org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter], void), mutabilityPlan/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.type.descriptor.java.MutabilityPlan), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var805=([java.lang.String], java.lang.Object)}
; {var1632=org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter, var3303=r0, var3720=r3, var1854=null_type, var361=r4, var2339=org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter, var1065=r7, var1439=org.hibernate.type.descriptor.sql.SqlTypeDescriptor, var2197=r1, var572=r5, var1811=r6, var401=org.hibernate.type.descriptor.java.JavaTypeDescriptor, var107=r2, var87=org.hibernate.type.AbstractSingleColumnStandardBasicType, var2995=org.hibernate.type.descriptor.java.MutabilityPlan, var182=$r8, var3102=$z0, var3095=org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl, var3450=$r15, var3200=$r14, var1562=org.jboss.logging.Logger, var3164=$r10, var988=$r16, var1145=$r11, var2403=$r12, var3198=$r13, var805=java.lang.Object}
; {org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter=var1632, r0=var3303, r3=var3720, null_type=var1854, r4=var361, org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter=var2339, r7=var1065, org.hibernate.type.descriptor.sql.SqlTypeDescriptor=var1439, r1=var2197, r5=var572, r6=var1811, org.hibernate.type.descriptor.java.JavaTypeDescriptor=var401, r2=var107, org.hibernate.type.AbstractSingleColumnStandardBasicType=var87, org.hibernate.type.descriptor.java.MutabilityPlan=var2995, $r8=var182, $z0=var3102, org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl=var3095, $r15=var3450, $r14=var3200, org.jboss.logging.Logger=var1562, $r10=var3164, $r16=var988, $r11=var1145, $r12=var2403, $r13=var3198, java.lang.Object=var805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r7 := @parameter2: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter;	r1 := @parameter3: org.hibernate.type.descriptor.sql.SqlTypeDescriptor;	r5 := @parameter4: java.lang.Class;	r6 := @parameter5: java.lang.Class;	r2 := @parameter6: org.hibernate.type.descriptor.java.JavaTypeDescriptor;	specialinvoke r0.<org.hibernate.type.AbstractSingleColumnStandardBasicType: void <init>(org.hibernate.type.descriptor.sql.SqlTypeDescriptor,org.hibernate.type.descriptor.java.JavaTypeDescriptor)>(r1, r2);	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String name> = r3;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String description> = r4;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class modelType> = r5;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class jdbcType> = r6;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter attributeConverter> = r7;	$r8 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: org.hibernate.type.descriptor.java.MutabilityPlan getMutabilityPlan()>();	$z0 = interfaceinvoke $r8.<org.hibernate.type.descriptor.java.MutabilityPlan: boolean isMutable()>();	if $z0 == 0 goto $r14 = <org.hibernate.type.descriptor.java.ImmutableMutabilityPlan: org.hibernate.type.descriptor.java.ImmutableMutabilityPlan INSTANCE>;	$r15 = new org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl;	$r14 = $r15;	specialinvoke $r15.<org.hibernate.type.descriptor.converter.AttributeConverterMutabilityPlanImpl: void <init>(org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter)>(r7);	goto [?= r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.type.descriptor.java.MutabilityPlan mutabilityPlan> = $r14];	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.type.descriptor.java.MutabilityPlan mutabilityPlan> = $r14;	$r10 = <org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.jboss.logging.Logger log>;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created AttributeConverterTypeAdapter -> ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r13);	return
;block_num 3