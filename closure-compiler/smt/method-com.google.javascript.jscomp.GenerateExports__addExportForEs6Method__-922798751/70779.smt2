(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3541 0)
(declare-sort var3499 0)
(declare-sort var1703 0)
(declare-sort var284 0)
(declare-sort var3521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isMemberFunctionDef/28982499 (var3499) Bool)
(declare-fun var284_checkArgument/-972017905 (Bool var3521) void)
(declare-fun cast-from-var3499-to-var3521 (var3499) var3521)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun cast-from-String-to-var3521 (String) var3521)
(declare-fun getString/-897720134 (var3499) String)
(declare-fun addExportPropertyCall/559112820 (var3541 String var3499 String String) void)
(declare-const null-var3541 var3541)
(declare-const null-var3499 var3499)
(declare-const null-String String)
(declare-const var2802 var3541) ; Statement: r3 := @this: com.google.javascript.jscomp.GenerateExports 
(assert (not (= var2802 null-var3541)))
(declare-const var2836 var3499) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2836 null-var3499)))
(declare-const var2676 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2676 null-String)))
(assert true)
(define-const var919 Bool (isMemberFunctionDef/28982499 var2836)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isMemberFunctionDef()>() 
;(assert (var284_checkArgument/-972017905 var919 (cast-from-var3499-to-var3521 var2836))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0) 

(declare-const var919!1 Bool)
(declare-const var2836!1 var3499)
(assert true)
(define-const var3405 Bool (isEmpty/-1285796103 var2676)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $z2 = 0 
(assert (not (not (= (ite var3405 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2585 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r1)] 
(assert true) ; Non Conditional
;(assert (var284_checkArgument/-972017905 var2585 (cast-from-String-to-var3521 var2676))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r1) 

(declare-const var2585!1 Bool)
(declare-const var2676!1 String)
(assert true)
(define-const var902 String (getString/-897720134 var2836!1)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var477 String (str.++ "\u0001.\u0001" var2676!1 var902)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r1, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001") 
(assert true)
(define-const var1422 String (getString/-897720134 var2836!1)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
;(assert (addExportPropertyCall/559112820 var2802 var2676!1 var2836!1 var477 var1422)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.GenerateExports: void addExportPropertyCall(java.lang.String,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r1, r0, $r5, $r4) 

(declare-const var2802!1 var3541)
(declare-const var2676!2 String)
(declare-const var2836!2 var3499)
(declare-const var477!1 String)
(declare-const var1422!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isMemberFunctionDef/28982499=([com.google.javascript.rhino.Node], boolean), var284_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-var3499-to-var3521=([com.google.javascript.rhino.Node], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), cast-from-String-to-var3521=([java.lang.String], java.lang.Object), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), addExportPropertyCall/559112820=([com.google.javascript.jscomp.GenerateExports, java.lang.String, com.google.javascript.rhino.Node, java.lang.String, java.lang.String], void)}
; {var3541=com.google.javascript.jscomp.GenerateExports, var2802=r3, var3499=com.google.javascript.rhino.Node, var2836=r0, var2676=r1, var1703=null_type, var919=$z0, var284=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3521=java.lang.Object, var3405=$z1, var2585=$z2, var902=$r2, var477=$r5, var1422=$r4}
; {com.google.javascript.jscomp.GenerateExports=var3541, r3=var2802, com.google.javascript.rhino.Node=var3499, r0=var2836, r1=var2676, null_type=var1703, $z0=var919, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var284, java.lang.Object=var3521, $z1=var3405, $z2=var2585, $r2=var902, $r5=var477, $r4=var1422}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.GenerateExports;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isMemberFunctionDef()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0);	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r1);	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r1, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001");	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	virtualinvoke r3.<com.google.javascript.jscomp.GenerateExports: void addExportPropertyCall(java.lang.String,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r1, r0, $r5, $r4);	return
;block_num 3