(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var988 0)
(declare-sort var1289 0)
(declare-sort var2344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enterDefault/634307654 (var988 var2344) Bool)
(declare-fun cast-from-var1289-to-var2344 (var1289) var2344)
(declare-fun getName/-1684945865 (var1289) String)
(declare-fun type/1442118288 (var988 String) void)
(declare-fun leave/292685394 (var988) Bool)
(declare-const null-var988 var988)
(declare-const null-var1289 var1289)
(declare-const var2196 var988) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var2196 null-var988)))
(declare-const var1756 var1289) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var1756 null-var1289)))
(assert true)
;(assert (enterDefault/634307654 var2196 (cast-from-var1289-to-var2344 var1756))) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean enterDefault(jdk.nashorn.internal.ir.Node)>(r1) 

(declare-const var2196!1 var988)
(declare-const var1756!1 var1289)
(assert true)
(define-const var3655 String (getName/-1684945865 var1756!1)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(define-const var2107 String "this") ; Statement: $r3 = "this" 
(assert true)
(define-const var2281 Bool (= var2107 var3655)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("Identifier") 
(assert (not (= (ite var2281 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (type/1442118288 var2196!1 "ThisExpression")) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("ThisExpression") 

(declare-const var2196!2 var988)
(declare-const var3903 String)
 ; Statement: goto [?= $z1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean leave()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1503 Bool (leave/292685394 var2196!2)) ; Statement: $z1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean leave()>() 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {enterDefault/634307654=([jdk.nashorn.internal.ir.debug.JSONWriter, jdk.nashorn.internal.ir.Node], boolean), cast-from-var1289-to-var2344=([jdk.nashorn.internal.ir.IdentNode], jdk.nashorn.internal.ir.Node), getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), type/1442118288=([jdk.nashorn.internal.ir.debug.JSONWriter, java.lang.String], void), leave/292685394=([jdk.nashorn.internal.ir.debug.JSONWriter], boolean)}
; {var988=jdk.nashorn.internal.ir.debug.JSONWriter, var2196=r0, var1289=jdk.nashorn.internal.ir.IdentNode, var1756=r1, var2344=jdk.nashorn.internal.ir.Node, var3655=r2, var2107=$r3, var2281=$z0, var3903="ThisExpression", var1503=$z1}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var988, r0=var2196, jdk.nashorn.internal.ir.IdentNode=var1289, r1=var1756, jdk.nashorn.internal.ir.Node=var2344, r2=var3655, $r3=var2107, $z0=var2281, "ThisExpression"=var3903, $z1=var1503}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	r1 := @parameter0: jdk.nashorn.internal.ir.IdentNode;	virtualinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean enterDefault(jdk.nashorn.internal.ir.Node)>(r1);	r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r3 = "this";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("Identifier");	specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("ThisExpression");	goto [?= $z1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean leave()>()];	$z1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean leave()>();	return $z1
;block_num 3