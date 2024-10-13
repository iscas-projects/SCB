(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var105 0)
(declare-sort var1713 0)
(declare-sort var3059 0)
(declare-sort var3898 0)
(declare-sort var942 0)
(declare-sort var1828 0)
(declare-sort var1638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3898-init () var3898)
(declare-fun arr-var942-init () (Array Int var942))
(declare-fun getName/1748535791 (var1713) var1828)
(declare-fun cast-from-var1828-to-var942 (var1828) var942)
(declare-fun String_format/1339386452 (String (Array Int var942)) String)
(declare-fun <init>/2079914650 (var3898 String) void)
(declare-fun cast-from-var3898-to-var1638 (var3898) var1638)
(declare-const null-var105 var105)
(declare-const null-var1713 var1713)
(declare-const null-var3059 var3059)
(declare-const null-__Array__Int__var942__ (Array Int var942))
(declare-const var1958 var105) ; Statement: r12 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator 
(assert (not (= var1958 null-var105)))
(declare-const var2840 var1713) ; Statement: r1 := @parameter0: org.hibernate.boot.model.relational.Sequence 
(assert (not (= var2840 null-var1713)))
(declare-const var3960 var3059) ; Statement: r0 := @parameter1: org.hibernate.tool.schema.extract.spi.SequenceInformation 
(assert (not (= var3960 null-var3059)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: int getIncrementSize()>() 
(assert (not (not (= var3960 null-var3059)))) ; Negate: Cond: r0 != null  
(define-const var3384 var3898 var3898-init) ; Statement: $r13 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var2308 (Array Int var942) arr-var942-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1456 var1828 (getName/1748535791 var2840)) ; Statement: $r10 = virtualinvoke r1.<org.hibernate.boot.model.relational.Sequence: org.hibernate.boot.model.relational.QualifiedSequenceName getName()>() 
(declare-const var2308!1 (Array Int var942))
(assert (not (= var2308!1 null-__Array__Int__var942__)))
(assert (= (select var2308!1 0) (cast-from-var1828-to-var942 var1456))) ; Statement: $r9[0] = $r10 
(define-const var262 String (String_format/1339386452 "Schema-validation: missing sequence [%s]" var2308!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Schema-validation: missing sequence [%s]", $r9) 
(assert true)
;(assert (<init>/2079914650 var3384 var262)) ; Statement: specialinvoke $r13.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r11) 

(declare-const var3384!1 var3898)
(declare-const var262!1 String)
(define-const var507 var1638 (cast-from-var3898-to-var1638 var3384!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3898-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), arr-var942-init=([], java.lang.Object[]), getName/1748535791=([org.hibernate.boot.model.relational.Sequence], org.hibernate.boot.model.relational.QualifiedSequenceName), cast-from-var1828-to-var942=([org.hibernate.boot.model.relational.QualifiedSequenceName], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var3898-to-var1638=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var105=org.hibernate.tool.schema.internal.AbstractSchemaValidator, var1958=r12, var1713=org.hibernate.boot.model.relational.Sequence, var2840=r1, var3059=org.hibernate.tool.schema.extract.spi.SequenceInformation, var3960=r0, var3898=org.hibernate.tool.schema.spi.SchemaManagementException, var3384=$r13, var942=java.lang.Object, var2308=$r9, var1828=org.hibernate.boot.model.relational.QualifiedSequenceName, var1456=$r10, var262=$r11, var1638=java.lang.Throwable, var507=$r15}
; {org.hibernate.tool.schema.internal.AbstractSchemaValidator=var105, r12=var1958, org.hibernate.boot.model.relational.Sequence=var1713, r1=var2840, org.hibernate.tool.schema.extract.spi.SequenceInformation=var3059, r0=var3960, org.hibernate.tool.schema.spi.SchemaManagementException=var3898, $r13=var3384, java.lang.Object=var942, $r9=var2308, org.hibernate.boot.model.relational.QualifiedSequenceName=var1828, $r10=var1456, $r11=var262, java.lang.Throwable=var1638, $r15=var507}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator;	r1 := @parameter0: org.hibernate.boot.model.relational.Sequence;	r0 := @parameter1: org.hibernate.tool.schema.extract.spi.SequenceInformation;	if r0 != null goto $i0 = interfaceinvoke r0.<org.hibernate.tool.schema.extract.spi.SequenceInformation: int getIncrementSize()>();	$r13 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r9 = newarray (java.lang.Object)[1];	$r10 = virtualinvoke r1.<org.hibernate.boot.model.relational.Sequence: org.hibernate.boot.model.relational.QualifiedSequenceName getName()>();	$r9[0] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Schema-validation: missing sequence [%s]", $r9);	specialinvoke $r13.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2