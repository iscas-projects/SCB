(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var967 0)
(declare-sort var2396 0)
(declare-sort var1358 0)
(declare-sort var3321 0)
(declare-sort var2303 0)
(declare-sort var299 0)
(declare-sort var3782 0)
(declare-sort var1545 0)
(declare-sort var1840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1184982036 (var2303 var1358 var3321) void)
(declare-fun cast-from-var2517-to-var2303 (var2517) var2303)
(declare-fun name/-1670324398 (var2517) String)
(declare-fun description/-1670324398 (var2517) String)
(declare-fun modelType/-1670324398 (var2517) ClassObject)
(declare-fun jdbcType/-1670324398 (var2517) ClassObject)
(declare-fun attributeConverter/-1670324398 (var2517) var2396)
(declare-fun var3321_getMutabilityPlan/-1694386226 (var3321) var299)
(declare-fun var299_isMutable/2045870021 (var299) Bool)
(declare-fun cast-from-var3782-to-var299 (var3782) var299)
(declare-fun mutabilityPlan/-1670324398 (var2517) var299)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var1545 var1840) void)
(declare-fun cast-from-String-to-var1840 (String) var1840)
(declare-const null-var2517 var2517)
(declare-const null-String String)
(declare-const null-var2396 var2396)
(declare-const null-var1358 var1358)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3321 var3321)
(declare-const var3782-INSTANCE var3782)
(declare-const var2517-log var1545)
(declare-const var1797 var2517) ; Statement: r0 := @this: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter 
(assert (not (= var1797 null-var2517)))
(declare-const var2443 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2443 null-String)))
(declare-const var2142 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2142 null-String)))
(declare-const var2433 var2396) ; Statement: r7 := @parameter2: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter 
(assert (not (= var2433 null-var2396)))
(declare-const var3870 var1358) ; Statement: r1 := @parameter3: org.hibernate.type.descriptor.sql.SqlTypeDescriptor 
(assert (not (= var3870 null-var1358)))
(declare-const var1314 ClassObject) ; Statement: r5 := @parameter4: java.lang.Class 
(assert (not (= var1314 null-ClassObject)))
(declare-const var30 ClassObject) ; Statement: r6 := @parameter5: java.lang.Class 
(assert (not (= var30 null-ClassObject)))
(declare-const var2906 var3321) ; Statement: r2 := @parameter6: org.hibernate.type.descriptor.java.JavaTypeDescriptor 
(assert (not (= var2906 null-var3321)))
(assert true)
;(assert (<init>/-1184982036 (cast-from-var2517-to-var2303 var1797) var3870 var2906)) ; Statement: specialinvoke r0.<org.hibernate.type.AbstractSingleColumnStandardBasicType: void <init>(org.hibernate.type.descriptor.sql.SqlTypeDescriptor,org.hibernate.type.descriptor.java.JavaTypeDescriptor)>(r1, r2) 

(declare-const var1797!1 var2517)
(declare-const var3870!1 var1358)
(declare-const var2906!1 var3321)
(declare-const var1797!2 var2517)
(assert (not (= var1797!2 null-var2517)))
(assert (= (name/-1670324398 var1797!2) var2443)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String name> = r3 
(declare-const var1797!3 var2517)
(assert (not (= var1797!3 null-var2517)))
(assert (= (description/-1670324398 var1797!3) var2142)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String description> = r4 
(declare-const var1797!4 var2517)
(assert (not (= var1797!4 null-var2517)))
(assert (= (modelType/-1670324398 var1797!4) var1314)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class modelType> = r5 
(declare-const var1797!5 var2517)
(assert (not (= var1797!5 null-var2517)))
(assert (= (jdbcType/-1670324398 var1797!5) var30)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class jdbcType> = r6 
(declare-const var1797!6 var2517)
(assert (not (= var1797!6 null-var2517)))
(assert (= (attributeConverter/-1670324398 var1797!6) var2433)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter attributeConverter> = r7 
(define-const var1117 var299 (var3321_getMutabilityPlan/-1694386226 var2906!1)) ; Statement: $r8 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: org.hibernate.type.descriptor.java.MutabilityPlan getMutabilityPlan()>() 
(define-const var291 Bool (var299_isMutable/2045870021 var1117)) ; Statement: $z0 = interfaceinvoke $r8.<org.hibernate.type.descriptor.java.MutabilityPlan: boolean isMutable()>() 
 ; Statement: if $z0 == 0 goto $r14 = <org.hibernate.type.descriptor.java.ImmutableMutabilityPlan: org.hibernate.type.descriptor.java.ImmutableMutabilityPlan INSTANCE> 
(assert (= (ite var291 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3372 var299 (cast-from-var3782-to-var299 var3782-INSTANCE)) ; Statement: $r14 = <org.hibernate.type.descriptor.java.ImmutableMutabilityPlan: org.hibernate.type.descriptor.java.ImmutableMutabilityPlan INSTANCE> 
(assert true) ; Non Conditional
(declare-const var1797!7 var2517)
(assert (not (= var1797!7 null-var2517)))
(assert (= (mutabilityPlan/-1670324398 var1797!7) var3372)) ; Statement: r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.type.descriptor.java.MutabilityPlan mutabilityPlan> = $r14 
(define-const var656 var1545 var2517-log) ; Statement: $r10 = <org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.jboss.logging.Logger log> 
(define-const var74 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var74)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var74!1 String)
(assert (= var74!1 ""))
(assert true)
(define-const var3802 String (append/672562846 var74!1 "Created AttributeConverterTypeAdapter -> ")) ; Statement: $r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created AttributeConverterTypeAdapter -> ") 
(declare-const var74!2 String)
(assert (= var74!2 (str.++ var74!1 "Created AttributeConverterTypeAdapter -> ")))
(assert true)
(define-const var2891 String (append/672562846 var3802 var2443)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3802!1 String)
(assert (= var3802!1 (str.++ var3802 var2443)))
(assert true)
(define-const var2013 String (toString/-2075883882 var2891)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var656 (cast-from-String-to-var1840 var2013))) ; Statement: virtualinvoke $r10.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r13) 

(declare-const var656!1 var1545)
(declare-const var2013!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1184982036=([org.hibernate.type.AbstractSingleColumnStandardBasicType, org.hibernate.type.descriptor.sql.SqlTypeDescriptor, org.hibernate.type.descriptor.java.JavaTypeDescriptor], void), cast-from-var2517-to-var2303=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.type.AbstractSingleColumnStandardBasicType), name/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.String), description/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.String), modelType/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), jdbcType/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), attributeConverter/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter), var3321_getMutabilityPlan/-1694386226=([org.hibernate.type.descriptor.java.JavaTypeDescriptor], org.hibernate.type.descriptor.java.MutabilityPlan), var299_isMutable/2045870021=([org.hibernate.type.descriptor.java.MutabilityPlan], boolean), cast-from-var3782-to-var299=([org.hibernate.type.descriptor.java.ImmutableMutabilityPlan], org.hibernate.type.descriptor.java.MutabilityPlan), mutabilityPlan/-1670324398=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.type.descriptor.java.MutabilityPlan), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1840=([java.lang.String], java.lang.Object)}
; {var2517=org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter, var1797=r0, var2443=r3, var967=null_type, var2142=r4, var2396=org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter, var2433=r7, var1358=org.hibernate.type.descriptor.sql.SqlTypeDescriptor, var3870=r1, var1314=r5, var30=r6, var3321=org.hibernate.type.descriptor.java.JavaTypeDescriptor, var2906=r2, var2303=org.hibernate.type.AbstractSingleColumnStandardBasicType, var299=org.hibernate.type.descriptor.java.MutabilityPlan, var1117=$r8, var291=$z0, var3782=org.hibernate.type.descriptor.java.ImmutableMutabilityPlan, var3372=$r14, var1545=org.jboss.logging.Logger, var656=$r10, var74=$r16, var3802=$r11, var2891=$r12, var2013=$r13, var1840=java.lang.Object}
; {org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter=var2517, r0=var1797, r3=var2443, null_type=var967, r4=var2142, org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter=var2396, r7=var2433, org.hibernate.type.descriptor.sql.SqlTypeDescriptor=var1358, r1=var3870, r5=var1314, r6=var30, org.hibernate.type.descriptor.java.JavaTypeDescriptor=var3321, r2=var2906, org.hibernate.type.AbstractSingleColumnStandardBasicType=var2303, org.hibernate.type.descriptor.java.MutabilityPlan=var299, $r8=var1117, $z0=var291, org.hibernate.type.descriptor.java.ImmutableMutabilityPlan=var3782, $r14=var3372, org.jboss.logging.Logger=var1545, $r10=var656, $r16=var74, $r11=var3802, $r12=var2891, $r13=var2013, java.lang.Object=var1840}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r7 := @parameter2: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter;	r1 := @parameter3: org.hibernate.type.descriptor.sql.SqlTypeDescriptor;	r5 := @parameter4: java.lang.Class;	r6 := @parameter5: java.lang.Class;	r2 := @parameter6: org.hibernate.type.descriptor.java.JavaTypeDescriptor;	specialinvoke r0.<org.hibernate.type.AbstractSingleColumnStandardBasicType: void <init>(org.hibernate.type.descriptor.sql.SqlTypeDescriptor,org.hibernate.type.descriptor.java.JavaTypeDescriptor)>(r1, r2);	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String name> = r3;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.String description> = r4;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class modelType> = r5;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class jdbcType> = r6;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter attributeConverter> = r7;	$r8 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: org.hibernate.type.descriptor.java.MutabilityPlan getMutabilityPlan()>();	$z0 = interfaceinvoke $r8.<org.hibernate.type.descriptor.java.MutabilityPlan: boolean isMutable()>();	if $z0 == 0 goto $r14 = <org.hibernate.type.descriptor.java.ImmutableMutabilityPlan: org.hibernate.type.descriptor.java.ImmutableMutabilityPlan INSTANCE>;	$r14 = <org.hibernate.type.descriptor.java.ImmutableMutabilityPlan: org.hibernate.type.descriptor.java.ImmutableMutabilityPlan INSTANCE>;	r0.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.type.descriptor.java.MutabilityPlan mutabilityPlan> = $r14;	$r10 = <org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.jboss.logging.Logger log>;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Created AttributeConverterTypeAdapter -> ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r13);	return
;block_num 3