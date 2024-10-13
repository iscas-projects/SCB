(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var177 0)
(declare-sort var3207 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKeyName/-2008842301 (var3207) String)
(declare-fun enterPropertyNode/-1284188877 (var3394 var3207) Bool)
(declare-fun cast-from-var177-to-var3394 (var177) var3394)
(declare-const null-var177 var177)
(declare-const null-var3207 var3207)
(declare-const var3807 var177) ; Statement: r2 := @this: jdk.nashorn.internal.codegen.OptimisticTypesCalculator 
(assert (not (= var3807 null-var177)))
(declare-const var3878 var3207) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.PropertyNode 
(assert (not (= var3878 null-var3207)))
(assert true)
(define-const var3391 String (getKeyName/-2008842301 var3878)) ; Statement: $r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.PropertyNode: java.lang.String getKeyName()>() 
(assert true)
(define-const var587 Bool (= var3391 "__proto__")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("__proto__") 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r2.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: boolean enterPropertyNode(jdk.nashorn.internal.ir.PropertyNode)>(r0) 
(assert (= (ite var587 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3351 Bool (enterPropertyNode/-1284188877 (cast-from-var177-to-var3394 var3807) var3878)) ; Statement: $z1 = specialinvoke r2.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: boolean enterPropertyNode(jdk.nashorn.internal.ir.PropertyNode)>(r0) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getKeyName/-2008842301=([jdk.nashorn.internal.ir.PropertyNode], java.lang.String), enterPropertyNode/-1284188877=([jdk.nashorn.internal.ir.visitor.NodeVisitor, jdk.nashorn.internal.ir.PropertyNode], boolean), cast-from-var177-to-var3394=([jdk.nashorn.internal.codegen.OptimisticTypesCalculator], jdk.nashorn.internal.ir.visitor.NodeVisitor)}
; {var177=jdk.nashorn.internal.codegen.OptimisticTypesCalculator, var3807=r2, var3207=jdk.nashorn.internal.ir.PropertyNode, var3878=r0, var3391=$r1, var587=$z0, var3394=jdk.nashorn.internal.ir.visitor.NodeVisitor, var3351=$z1}
; {jdk.nashorn.internal.codegen.OptimisticTypesCalculator=var177, r2=var3807, jdk.nashorn.internal.ir.PropertyNode=var3207, r0=var3878, $r1=var3391, $z0=var587, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3394, $z1=var3351}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.codegen.OptimisticTypesCalculator;	r0 := @parameter0: jdk.nashorn.internal.ir.PropertyNode;	$r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.PropertyNode: java.lang.String getKeyName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("__proto__");	if $z0 == 0 goto $z1 = specialinvoke r2.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: boolean enterPropertyNode(jdk.nashorn.internal.ir.PropertyNode)>(r0);	$z1 = specialinvoke r2.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: boolean enterPropertyNode(jdk.nashorn.internal.ir.PropertyNode)>(r0);	return $z1
;block_num 2