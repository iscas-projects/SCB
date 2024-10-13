(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3611 0)
(declare-sort var1167 0)
(declare-sort var799 0)
(declare-sort var66 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1167_getExportIdentifier/1141844361 (var1167) String)
(declare-fun var799_contains/1636690605 (var799 var66) Bool)
(declare-fun cast-from-String-to-var66 (String) var66)
(declare-fun var799_add/-1142548109 (var799 var66) Bool)
(declare-const null-var3611 var3611)
(declare-const null-var1167 var1167)
(declare-const null-var799 var799)
(declare-const var1984 var3611) ; Statement: r6 := @this: org.hibernate.tool.schema.internal.AbstractSchemaMigrator 
(assert (not (= var1984 null-var3611)))
(declare-const var126 var1167) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.Exportable 
(assert (not (= var126 null-var1167)))
(declare-const var1075 var799) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var1075 null-var799)))
(define-const var2172 String (var1167_getExportIdentifier/1141844361 var126)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>() 
(define-const var3080 Bool (var799_contains/1636690605 var1075 (cast-from-String-to-var66 var2172))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
(assert (= (ite var3080 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var799_add/-1142548109 var1075 (cast-from-String-to-var66 var2172))) ; Statement: interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 

(declare-const var1075!1 var799)
(declare-const var2172!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1167_getExportIdentifier/1141844361=([org.hibernate.boot.model.relational.Exportable], java.lang.String), var799_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var66=([java.lang.String], java.lang.Object), var799_add/-1142548109=([java.util.Set, java.lang.Object], boolean)}
; {var3611=org.hibernate.tool.schema.internal.AbstractSchemaMigrator, var1984=r6, var1167=org.hibernate.boot.model.relational.Exportable, var126=r0, var799=java.util.Set, var1075=r2, var2172=r1, var66=java.lang.Object, var3080=$z0}
; {org.hibernate.tool.schema.internal.AbstractSchemaMigrator=var3611, r6=var1984, org.hibernate.boot.model.relational.Exportable=var1167, r0=var126, java.util.Set=var799, r2=var1075, r1=var2172, java.lang.Object=var66, $z0=var3080}
;seq 
;cnt {}
;stmts r6 := @this: org.hibernate.tool.schema.internal.AbstractSchemaMigrator;	r0 := @parameter0: org.hibernate.boot.model.relational.Exportable;	r2 := @parameter1: java.util.Set;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.Exportable: java.lang.String getExportIdentifier()>();	$z0 = interfaceinvoke r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	interfaceinvoke r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	return
;block_num 2