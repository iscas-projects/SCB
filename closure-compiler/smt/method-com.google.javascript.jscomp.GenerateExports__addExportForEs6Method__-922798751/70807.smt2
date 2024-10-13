(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var519 0)
(declare-sort var202 0)
(declare-sort var2766 0)
(declare-sort var2939 0)
(declare-sort var3359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isMemberFunctionDef/28982499 (var202) Bool)
(declare-fun var2939_checkArgument/-972017905 (Bool var3359) void)
(declare-fun cast-from-var202-to-var3359 (var202) var3359)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun cast-from-String-to-var3359 (String) var3359)
(declare-fun getString/-897720134 (var202) String)
(declare-fun addExportPropertyCall/559112820 (var519 String var202 String String) void)
(declare-const null-var519 var519)
(declare-const null-var202 var202)
(declare-const null-String String)
(declare-const var1210 var519) ; Statement: r3 := @this: com.google.javascript.jscomp.GenerateExports 
(assert (not (= var1210 null-var519)))
(declare-const var1275 var202) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1275 null-var202)))
(declare-const var92 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var92 null-String)))
(assert true)
(define-const var1028 Bool (isMemberFunctionDef/28982499 var1275)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isMemberFunctionDef()>() 
;(assert (var2939_checkArgument/-972017905 var1028 (cast-from-var202-to-var3359 var1275))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0) 

(declare-const var1028!1 Bool)
(declare-const var1275!1 var202)
(assert true)
(define-const var2728 Bool (isEmpty/-1285796103 var92)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $z2 = 0 
(assert (not (= (ite var2728 1 0) 0))) ; Cond: $z1 != 0 
(define-const var779 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2939_checkArgument/-972017905 var779 (cast-from-String-to-var3359 var92))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r1) 

(declare-const var779!1 Bool)
(declare-const var92!1 String)
(assert true)
(define-const var3585 String (getString/-897720134 var1275!1)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var2147 String (str.++ "\u0001.\u0001" var92!1 var3585)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r1, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001") 
(assert true)
(define-const var1121 String (getString/-897720134 var1275!1)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
;(assert (addExportPropertyCall/559112820 var1210 var92!1 var1275!1 var2147 var1121)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.GenerateExports: void addExportPropertyCall(java.lang.String,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r1, r0, $r5, $r4) 

(declare-const var1210!1 var519)
(declare-const var92!2 String)
(declare-const var1275!2 var202)
(declare-const var2147!1 String)
(declare-const var1121!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isMemberFunctionDef/28982499=([com.google.javascript.rhino.Node], boolean), var2939_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-var202-to-var3359=([com.google.javascript.rhino.Node], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), cast-from-String-to-var3359=([java.lang.String], java.lang.Object), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), addExportPropertyCall/559112820=([com.google.javascript.jscomp.GenerateExports, java.lang.String, com.google.javascript.rhino.Node, java.lang.String, java.lang.String], void)}
; {var519=com.google.javascript.jscomp.GenerateExports, var1210=r3, var202=com.google.javascript.rhino.Node, var1275=r0, var92=r1, var2766=null_type, var1028=$z0, var2939=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3359=java.lang.Object, var2728=$z1, var779=$z2, var3585=$r2, var2147=$r5, var1121=$r4}
; {com.google.javascript.jscomp.GenerateExports=var519, r3=var1210, com.google.javascript.rhino.Node=var202, r0=var1275, r1=var92, null_type=var2766, $z0=var1028, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2939, java.lang.Object=var3359, $z1=var2728, $z2=var779, $r2=var3585, $r5=var2147, $r4=var1121}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.GenerateExports;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isMemberFunctionDef()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0);	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r1);	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r1, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001");	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	virtualinvoke r3.<com.google.javascript.jscomp.GenerateExports: void addExportPropertyCall(java.lang.String,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r1, r0, $r5, $r4);	return
;block_num 3