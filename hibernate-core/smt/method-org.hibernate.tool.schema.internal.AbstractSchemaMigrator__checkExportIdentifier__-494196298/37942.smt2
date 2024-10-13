(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2494 0)
(declare-sort var393 0)
(declare-sort var1171 0)
(declare-sort var1065 0)
(declare-sort var2487 0)
(declare-sort var56 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var393_getExportIdentifier/1141844361 (var393) String)
(declare-fun var1171_contains/1636690605 (var1171 var1065) Bool)
(declare-fun cast-from-String-to-var1065 (String) var1065)
(declare-fun var2487-init () var2487)
(declare-fun arr-var1065-init () (Array Int var1065))
(declare-fun String_format/1339386452 (String (Array Int var1065)) String)
(declare-fun <init>/2079914650 (var2487 String) void)
(declare-fun cast-from-var2487-to-var56 (var2487) var56)
(declare-const null-var2494 var2494)
(declare-const null-var393 var393)
(declare-const null-var1171 var1171)
(declare-const null-__Array__Int__var1065__ (Array Int var1065))
(declare-const var1580 var2494) ; Statement: r6 := @this: org.hibernate.tool.schema.internal.AbstractSchemaMigrator 
(assert (not (= var1580 null-var2494)))
(declare-const var1732 var393) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.Exportable 
(assert (not (= var1732 null-var393)))
(declare-const var199 var1171) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var199 null-var1171)))
(define-const var694 String (var393_getExportIdentifier/1141844361 var1732)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>() 
(define-const var3675 Bool (var1171_contains/1636690605 var199 (cast-from-String-to-var1065 var694))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (not (= (ite var3675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1591 var2487 var2487-init) ; Statement: $r7 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var2391 (Array Int var1065) arr-var1065-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var2391!1 (Array Int var1065))
(assert (not (= var2391!1 null-__Array__Int__var1065__)))
(assert (= (select var2391!1 0) (cast-from-String-to-var1065 var694))) ; Statement: $r4[0] = r1 
(define-const var151 String (String_format/1339386452 "Export identifier [%s] encountered more than once" var2391!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Export identifier [%s] encountered more than once", $r4) 
(assert true)
;(assert (<init>/2079914650 var1591 var151)) ; Statement: specialinvoke $r7.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r5) 

(declare-const var1591!1 var2487)
(declare-const var151!1 String)
(define-const var1886 var56 (cast-from-var2487-to-var56 var1591!1)) ; Statement: $r8 = (java.lang.Throwable) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var393_getExportIdentifier/1141844361=([org.hibernate.boot.model.relational.Exportable], java.lang.String), var1171_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var1065=([java.lang.String], java.lang.Object), var2487-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), arr-var1065-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var2487-to-var56=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var2494=org.hibernate.tool.schema.internal.AbstractSchemaMigrator, var1580=r6, var393=org.hibernate.boot.model.relational.Exportable, var1732=r0, var1171=java.util.Set, var199=r2, var694=r1, var1065=java.lang.Object, var3675=$z0, var2487=org.hibernate.tool.schema.spi.SchemaManagementException, var1591=$r7, var2391=$r4, var151=$r5, var56=java.lang.Throwable, var1886=$r8}
; {org.hibernate.tool.schema.internal.AbstractSchemaMigrator=var2494, r6=var1580, org.hibernate.boot.model.relational.Exportable=var393, r0=var1732, java.util.Set=var1171, r2=var199, r1=var694, java.lang.Object=var1065, $z0=var3675, org.hibernate.tool.schema.spi.SchemaManagementException=var2487, $r7=var1591, $r4=var2391, $r5=var151, java.lang.Throwable=var56, $r8=var1886}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.hibernate.tool.schema.internal.AbstractSchemaMigrator;	r0 := @parameter0: org.hibernate.boot.model.relational.Exportable;	r2 := @parameter1: java.util.Set;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>();	$z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	$r7 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r4 = newarray (java.lang.Object)[1];	$r4[0] = r1;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Export identifier [%s] encountered more than once", $r4);	specialinvoke $r7.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r5);	$r8 = (java.lang.Throwable) $r7;	throw $r8
;block_num 2