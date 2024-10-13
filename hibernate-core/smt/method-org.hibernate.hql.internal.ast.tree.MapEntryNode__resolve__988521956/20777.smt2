(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var2291 0)
(declare-sort var2059 0)
(declare-sort var322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolve/1287137207 (var322 Bool Bool String var2059 var2059) void)
(declare-fun cast-from-var3000-to-var322 (var3000) var322)
(declare-const null-var3000 var3000)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var2059 var2059)
(declare-const var1504 var3000) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.MapEntryNode 
(assert (not (= var1504 null-var3000)))
(declare-const var609 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var609 null-Bool)))
(declare-const var2760 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2760 null-Bool)))
(declare-const var3377 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3377 null-String)))
(declare-const var1526 var2059) ; Statement: r0 := @parameter3: antlr.collections.AST 
(assert (not (= var1526 null-var2059)))
(declare-const var3049 var2059) ; Statement: r3 := @parameter4: antlr.collections.AST 
(assert (not (= var3049 null-var2059)))
 ; Statement: if r0 == null goto specialinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void resolve(boolean,boolean,java.lang.String,antlr.collections.AST,antlr.collections.AST)>(z0, z1, r2, r0, r3) 
(assert (= var1526 null-var2059)) ; Cond: r0 == null 
(assert true)
;(assert (resolve/1287137207 (cast-from-var3000-to-var322 var1504) var609 var2760 var3377 var1526 var3049)) ; Statement: specialinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void resolve(boolean,boolean,java.lang.String,antlr.collections.AST,antlr.collections.AST)>(z0, z1, r2, r0, r3) 

(declare-const var1504!1 var3000)
(declare-const var609!1 Bool)
(declare-const var2760!1 Bool)
(declare-const var3377!1 String)
(declare-const var1526!1 var2059)
(declare-const var3049!1 var2059)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {resolve/1287137207=([org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode, boolean, boolean, java.lang.String, antlr.collections.AST, antlr.collections.AST], void), cast-from-var3000-to-var322=([org.hibernate.hql.internal.ast.tree.MapEntryNode], org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode)}
; {var3000=org.hibernate.hql.internal.ast.tree.MapEntryNode, var1504=r1, var609=z0, var2760=z1, var3377=r2, var2291=null_type, var2059=antlr.collections.AST, var1526=r0, var3049=r3, var322=org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode}
; {org.hibernate.hql.internal.ast.tree.MapEntryNode=var3000, r1=var1504, z0=var609, z1=var2760, r2=var3377, null_type=var2291, antlr.collections.AST=var2059, r0=var1526, r3=var3049, org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode=var322}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.MapEntryNode;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r0 := @parameter3: antlr.collections.AST;	r3 := @parameter4: antlr.collections.AST;	if r0 == null goto specialinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void resolve(boolean,boolean,java.lang.String,antlr.collections.AST,antlr.collections.AST)>(z0, z1, r2, r0, r3);	specialinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void resolve(boolean,boolean,java.lang.String,antlr.collections.AST,antlr.collections.AST)>(z0, z1, r2, r0, r3);	return
;block_num 2