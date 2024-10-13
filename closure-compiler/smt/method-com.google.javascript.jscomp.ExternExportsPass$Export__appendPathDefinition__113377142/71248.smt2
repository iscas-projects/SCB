(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var2059 0)
(declare-sort var558 0)
(declare-sort var2236 0)
(declare-sort var2908 0)
(declare-sort var1477 0)
(declare-sort var3573 0)
(declare-sort var2354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isEmpty/-713644823 (var558) Bool)
(declare-fun var2908_newVarNode/-104312270 (String var558) var558)
(declare-fun this$0/-365290651 (var1435) var1477)
(declare-fun externsRoot/-384505293 (var1477) var558)
(declare-fun addChildToBack/2002706208 (var558 var558) void)
(declare-fun alreadyExportedPaths/-384505293 (var1477) var3573)
(declare-fun var3573_add/-1142548109 (var3573 var2354) Bool)
(declare-fun cast-from-String-to-var2354 (String) var2354)
(declare-const null-var1435 var1435)
(declare-const null-String String)
(declare-const null-var558 var558)
(declare-const null-var2236 var2236)
(declare-const var2379 var1435) ; Statement: r3 := @this: com.google.javascript.jscomp.ExternExportsPass$Export 
(assert (not (= var2379 null-var1435)))
(declare-const var3491 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3491 null-String)))
(declare-const var2072 var558) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2072 null-var558)))
(declare-const var1930 var2236) ; Statement: r2 := @parameter2: com.google.javascript.rhino.JSDocInfo 
(assert (not (= var1930 null-var2236)))
(assert true)
(define-const var746 Bool (contains/1009244746 var3491 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>() 
(assert (= (ite var746 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3551 Bool (isEmpty/-713644823 var2072)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto r10 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newVarNode(java.lang.String,com.google.javascript.rhino.Node)>(r0, r1) 
(assert (= (ite var3551 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1137 var558 (var2908_newVarNode/-104312270 var3491 var2072)) ; Statement: r10 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newVarNode(java.lang.String,com.google.javascript.rhino.Node)>(r0, r1) 
(assert true) ; Non Conditional
 ; Statement: if r2 == null goto $r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0> 
(assert (= var1930 null-var2236)) ; Cond: r2 == null 
(define-const var624 var1477 (this$0/-365290651 var2379)) ; Statement: $r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0> 
(define-const var1868 var558 (externsRoot/-384505293 var624)) ; Statement: $r12 = $r11.<com.google.javascript.jscomp.ExternExportsPass: com.google.javascript.rhino.Node externsRoot> 
(assert true)
;(assert (addChildToBack/2002706208 var1868 var1137)) ; Statement: virtualinvoke $r12.<com.google.javascript.rhino.Node: void addChildToBack(com.google.javascript.rhino.Node)>(r10) 

(declare-const var1868!1 var558)
(declare-const var1137!1 var558)
(define-const var658 var1477 (this$0/-365290651 var2379)) ; Statement: $r13 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0> 
(define-const var216 var3573 (alreadyExportedPaths/-384505293 var658)) ; Statement: $r14 = $r13.<com.google.javascript.jscomp.ExternExportsPass: java.util.Set alreadyExportedPaths> 
;(assert (var3573_add/-1142548109 var216 (cast-from-String-to-var2354 var3491))) ; Statement: interfaceinvoke $r14.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var216!1 var3573)
(declare-const var3491!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-713644823=([com.google.javascript.rhino.Node], boolean), var2908_newVarNode/-104312270=([java.lang.String, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), this$0/-365290651=([com.google.javascript.jscomp.ExternExportsPass$Export], com.google.javascript.jscomp.ExternExportsPass), externsRoot/-384505293=([com.google.javascript.jscomp.ExternExportsPass], com.google.javascript.rhino.Node), addChildToBack/2002706208=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), alreadyExportedPaths/-384505293=([com.google.javascript.jscomp.ExternExportsPass], java.util.Set), var3573_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2354=([java.lang.String], java.lang.Object)}
; {var1435=com.google.javascript.jscomp.ExternExportsPass$Export, var2379=r3, var3491=r0, var2059=null_type, var558=com.google.javascript.rhino.Node, var2072=r1, var2236=com.google.javascript.rhino.JSDocInfo, var1930=r2, var746=$z0, var3551=$z1, var2908=com.google.javascript.jscomp.NodeUtil, var1137=r10, var1477=com.google.javascript.jscomp.ExternExportsPass, var624=$r11, var1868=$r12, var658=$r13, var3573=java.util.Set, var216=$r14, var2354=java.lang.Object}
; {com.google.javascript.jscomp.ExternExportsPass$Export=var1435, r3=var2379, r0=var3491, null_type=var2059, com.google.javascript.rhino.Node=var558, r1=var2072, com.google.javascript.rhino.JSDocInfo=var2236, r2=var1930, $z0=var746, $z1=var3551, com.google.javascript.jscomp.NodeUtil=var2908, r10=var1137, com.google.javascript.jscomp.ExternExportsPass=var1477, $r11=var624, $r12=var1868, $r13=var658, java.util.Set=var3573, $r14=var216, java.lang.Object=var2354}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.ExternExportsPass$Export;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.JSDocInfo;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 == 0 goto $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>();	$z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>();	if $z1 == 0 goto r10 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newVarNode(java.lang.String,com.google.javascript.rhino.Node)>(r0, r1);	r10 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newVarNode(java.lang.String,com.google.javascript.rhino.Node)>(r0, r1);	if r2 == null goto $r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0>;	$r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0>;	$r12 = $r11.<com.google.javascript.jscomp.ExternExportsPass: com.google.javascript.rhino.Node externsRoot>;	virtualinvoke $r12.<com.google.javascript.rhino.Node: void addChildToBack(com.google.javascript.rhino.Node)>(r10);	$r13 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0>;	$r14 = $r13.<com.google.javascript.jscomp.ExternExportsPass: java.util.Set alreadyExportedPaths>;	interfaceinvoke $r14.<java.util.Set: boolean add(java.lang.Object)>(r0);	return
;block_num 5