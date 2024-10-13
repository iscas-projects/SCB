(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3410 0)
(declare-sort var1987 0)
(declare-sort var584 0)
(declare-sort var3176 0)
(declare-sort var3247 0)
(declare-sort var2486 0)
(declare-sort var1913 0)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isEmpty/-713644823 (var584) Bool)
(declare-fun var3247_name/56234954 (String) var584)
(declare-fun var3247_var/-823829032 (var584) var584)
(declare-fun this$0/-365290651 (var3410) var2486)
(declare-fun externsRoot/-384505293 (var2486) var584)
(declare-fun addChildToBack/2002706208 (var584 var584) void)
(declare-fun alreadyExportedPaths/-384505293 (var2486) var1913)
(declare-fun var1913_add/-1142548109 (var1913 var1004) Bool)
(declare-fun cast-from-String-to-var1004 (String) var1004)
(declare-const null-var3410 var3410)
(declare-const null-String String)
(declare-const null-var584 var584)
(declare-const null-var3176 var3176)
(declare-const var3627 var3410) ; Statement: r3 := @this: com.google.javascript.jscomp.ExternExportsPass$Export 
(assert (not (= var3627 null-var3410)))
(declare-const var2658 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2658 null-String)))
(declare-const var1110 var584) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1110 null-var584)))
(declare-const var1724 var3176) ; Statement: r2 := @parameter2: com.google.javascript.rhino.JSDocInfo 
(assert (not (= var1724 null-var3176)))
(assert true)
(define-const var2609 Bool (contains/1009244746 var2658 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>() 
(assert (= (ite var2609 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2007 Bool (isEmpty/-713644823 var1110)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto r10 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newVarNode(java.lang.String,com.google.javascript.rhino.Node)>(r0, r1) 
(assert (not (= (ite var2007 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2844 var584 (var3247_name/56234954 var2658)) ; Statement: $r5 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>(r0) 
(define-const var3884 var584 (var3247_var/-823829032 var2844)) ; Statement: r10 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node var(com.google.javascript.rhino.Node)>($r5) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r2 == null goto $r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0> 
(assert (= var1724 null-var3176)) ; Cond: r2 == null 
(define-const var1774 var2486 (this$0/-365290651 var3627)) ; Statement: $r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0> 
(define-const var2808 var584 (externsRoot/-384505293 var1774)) ; Statement: $r12 = $r11.<com.google.javascript.jscomp.ExternExportsPass: com.google.javascript.rhino.Node externsRoot> 
(assert true)
;(assert (addChildToBack/2002706208 var2808 var3884)) ; Statement: virtualinvoke $r12.<com.google.javascript.rhino.Node: void addChildToBack(com.google.javascript.rhino.Node)>(r10) 

(declare-const var2808!1 var584)
(declare-const var3884!1 var584)
(define-const var224 var2486 (this$0/-365290651 var3627)) ; Statement: $r13 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0> 
(define-const var3375 var1913 (alreadyExportedPaths/-384505293 var224)) ; Statement: $r14 = $r13.<com.google.javascript.jscomp.ExternExportsPass: java.util.Set alreadyExportedPaths> 
;(assert (var1913_add/-1142548109 var3375 (cast-from-String-to-var1004 var2658))) ; Statement: interfaceinvoke $r14.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var3375!1 var1913)
(declare-const var2658!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-713644823=([com.google.javascript.rhino.Node], boolean), var3247_name/56234954=([java.lang.String], com.google.javascript.rhino.Node), var3247_var/-823829032=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), this$0/-365290651=([com.google.javascript.jscomp.ExternExportsPass$Export], com.google.javascript.jscomp.ExternExportsPass), externsRoot/-384505293=([com.google.javascript.jscomp.ExternExportsPass], com.google.javascript.rhino.Node), addChildToBack/2002706208=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), alreadyExportedPaths/-384505293=([com.google.javascript.jscomp.ExternExportsPass], java.util.Set), var1913_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var1004=([java.lang.String], java.lang.Object)}
; {var3410=com.google.javascript.jscomp.ExternExportsPass$Export, var3627=r3, var2658=r0, var1987=null_type, var584=com.google.javascript.rhino.Node, var1110=r1, var3176=com.google.javascript.rhino.JSDocInfo, var1724=r2, var2609=$z0, var2007=$z1, var3247=com.google.javascript.rhino.IR, var2844=$r5, var3884=r10, var2486=com.google.javascript.jscomp.ExternExportsPass, var1774=$r11, var2808=$r12, var224=$r13, var1913=java.util.Set, var3375=$r14, var1004=java.lang.Object}
; {com.google.javascript.jscomp.ExternExportsPass$Export=var3410, r3=var3627, r0=var2658, null_type=var1987, com.google.javascript.rhino.Node=var584, r1=var1110, com.google.javascript.rhino.JSDocInfo=var3176, r2=var1724, $z0=var2609, $z1=var2007, com.google.javascript.rhino.IR=var3247, $r5=var2844, r10=var3884, com.google.javascript.jscomp.ExternExportsPass=var2486, $r11=var1774, $r12=var2808, $r13=var224, java.util.Set=var1913, $r14=var3375, java.lang.Object=var1004}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.ExternExportsPass$Export;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.JSDocInfo;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 == 0 goto $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>();	$z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isEmpty()>();	if $z1 == 0 goto r10 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newVarNode(java.lang.String,com.google.javascript.rhino.Node)>(r0, r1);	$r5 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>(r0);	r10 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node var(com.google.javascript.rhino.Node)>($r5);	goto [?= (branch)];	if r2 == null goto $r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0>;	$r11 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0>;	$r12 = $r11.<com.google.javascript.jscomp.ExternExportsPass: com.google.javascript.rhino.Node externsRoot>;	virtualinvoke $r12.<com.google.javascript.rhino.Node: void addChildToBack(com.google.javascript.rhino.Node)>(r10);	$r13 = r3.<com.google.javascript.jscomp.ExternExportsPass$Export: com.google.javascript.jscomp.ExternExportsPass this$0>;	$r14 = $r13.<com.google.javascript.jscomp.ExternExportsPass: java.util.Set alreadyExportedPaths>;	interfaceinvoke $r14.<java.util.Set: boolean add(java.lang.Object)>(r0);	return
;block_num 5