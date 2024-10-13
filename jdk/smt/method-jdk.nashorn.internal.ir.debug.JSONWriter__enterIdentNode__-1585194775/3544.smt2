(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2095 0)
(declare-sort var3184 0)
(declare-sort var3113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enterDefault/634307654 (var2095 var3113) Bool)
(declare-fun cast-from-var3184-to-var3113 (var3184) var3113)
(declare-fun getName/-1684945865 (var3184) String)
(declare-fun type/1442118288 (var2095 String) void)
(declare-fun comma/1203929568 (var2095) void)
(declare-fun property/1560801446 (var2095 String String) void)
(declare-fun leave/292685394 (var2095) Bool)
(declare-const null-var2095 var2095)
(declare-const null-var3184 var3184)
(declare-const var2088 var2095) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var2088 null-var2095)))
(declare-const var1656 var3184) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var1656 null-var3184)))
(assert true)
;(assert (enterDefault/634307654 var2088 (cast-from-var3184-to-var3113 var1656))) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean enterDefault(jdk.nashorn.internal.ir.Node)>(r1) 

(declare-const var2088!1 var2095)
(declare-const var1656!1 var3184)
(assert true)
(define-const var1517 String (getName/-1684945865 var1656!1)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(define-const var3638 String "this") ; Statement: $r3 = "this" 
(assert true)
(define-const var1407 Bool (= var3638 var1517)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("Identifier") 
(assert (= (ite var1407 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (type/1442118288 var2088!1 "Identifier")) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("Identifier") 

(declare-const var2088!2 var2095)
(declare-const var2742 String)
(assert true)
;(assert (comma/1203929568 var2088!2)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void comma()>() 

(declare-const var2088!3 var2095)
(assert true)
(define-const var3871 String (getName/-1684945865 var1656!1)) ; Statement: $r4 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(assert true)
;(assert (property/1560801446 var2088!3 "name" var3871)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void property(java.lang.String,java.lang.String)>("name", $r4) 

(declare-const var2088!4 var2095)
(declare-const var875 String)
(declare-const var3871!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1280 Bool (leave/292685394 var2088!4)) ; Statement: $z1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean leave()>() 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {enterDefault/634307654=([jdk.nashorn.internal.ir.debug.JSONWriter, jdk.nashorn.internal.ir.Node], boolean), cast-from-var3184-to-var3113=([jdk.nashorn.internal.ir.IdentNode], jdk.nashorn.internal.ir.Node), getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), type/1442118288=([jdk.nashorn.internal.ir.debug.JSONWriter, java.lang.String], void), comma/1203929568=([jdk.nashorn.internal.ir.debug.JSONWriter], void), property/1560801446=([jdk.nashorn.internal.ir.debug.JSONWriter, java.lang.String, java.lang.String], void), leave/292685394=([jdk.nashorn.internal.ir.debug.JSONWriter], boolean)}
; {var2095=jdk.nashorn.internal.ir.debug.JSONWriter, var2088=r0, var3184=jdk.nashorn.internal.ir.IdentNode, var1656=r1, var3113=jdk.nashorn.internal.ir.Node, var1517=r2, var3638=$r3, var1407=$z0, var2742="Identifier", var3871=$r4, var875="name", var1280=$z1}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var2095, r0=var2088, jdk.nashorn.internal.ir.IdentNode=var3184, r1=var1656, jdk.nashorn.internal.ir.Node=var3113, r2=var1517, $r3=var3638, $z0=var1407, "Identifier"=var2742, $r4=var3871, "name"=var875, $z1=var1280}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	r1 := @parameter0: jdk.nashorn.internal.ir.IdentNode;	virtualinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean enterDefault(jdk.nashorn.internal.ir.Node)>(r1);	r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r3 = "this";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("Identifier");	specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void type(java.lang.String)>("Identifier");	specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void comma()>();	$r4 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: void property(java.lang.String,java.lang.String)>("name", $r4);	$z1 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean leave()>();	return $z1
;block_num 3