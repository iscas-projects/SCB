(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var2822 0)
(declare-sort var976 0)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var2822) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var976_string/730211268 (String) var2822)
(declare-fun replaceWith/-1153548851 (var2822 var2822) void)
(declare-fun reportChangeToEnclosingScope/561508277 (var1002 var2822) void)
(declare-fun cast-from-var3239-to-var1002 (var3239) var1002)
(declare-const null-var3239 var3239)
(declare-const null-var2822 var2822)
(declare-const var3653 var3239) ; Statement: r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var3653 null-var3239)))
(declare-const var1339 var2822) ; Statement: r5 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1339 null-var2822)))
(declare-const var3314 var2822) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3314 null-var2822)))
(assert true)
(define-const var3266 String (getString/-897720134 var3314)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var2828 String (str.++ "^\u0001|\u0001$" "[ \t\n-\r\u005cu0085\u005cu00A0\u005cu1680\u005cu2000-\u005cu200A\u005cu2028\u005cu2029\u005cu202F\u005cu205F\u005cu3000\u005cuFEFF]+" "[ \t\n-\r\u005cu0085\u005cu00A0\u005cu1680\u005cu2000-\u005cu200A\u005cu2028\u005cu2029\u005cu202F\u005cu205F\u005cu3000\u005cuFEFF]+")) ; Statement: $r1 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>("[ \t\n-\r\\u0085\\u00A0\\u1680\\u2000-\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000\\uFEFF]+", "[ \t\n-\r\\u0085\\u00A0\\u1680\\u2000-\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000\\uFEFF]+") <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("^\u0001|\u0001$") 
(assert true)
(define-const var2135 String (replaceAll/1692887130 var3266 var2828 "")) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>($r1, "") 
(define-const var3165 var2822 (var976_string/730211268 var2135)) ; Statement: r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r3) 
(assert true)
;(assert (replaceWith/-1153548851 var1339 var3165)) ; Statement: virtualinvoke r5.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r4) 

(declare-const var1339!1 var2822)
(declare-const var3165!1 var2822)
(assert true)
;(assert (reportChangeToEnclosingScope/561508277 (cast-from-var3239-to-var1002 var3653) var3165!1)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>(r4) 

(declare-const var3653!1 var3239)
(declare-const var3165!2 var2822)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var976_string/730211268=([java.lang.String], com.google.javascript.rhino.Node), replaceWith/-1153548851=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), reportChangeToEnclosingScope/561508277=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], void), cast-from-var3239-to-var1002=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods], com.google.javascript.jscomp.AbstractPeepholeOptimization)}
; {var3239=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var3653=r6, var2822=com.google.javascript.rhino.Node, var1339=r5, var3314=r0, var3266=$r2, var2828=$r1, var2135=r3, var976=com.google.javascript.rhino.IR, var3165=r4, var1002=com.google.javascript.jscomp.AbstractPeepholeOptimization}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var3239, r6=var3653, com.google.javascript.rhino.Node=var2822, r5=var1339, r0=var3314, $r2=var3266, $r1=var2828, r3=var2135, com.google.javascript.rhino.IR=var976, r4=var3165, com.google.javascript.jscomp.AbstractPeepholeOptimization=var1002}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r5 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r1 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>("[ \t\n-\r\\u0085\\u00A0\\u1680\\u2000-\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000\\uFEFF]+", "[ \t\n-\r\\u0085\\u00A0\\u1680\\u2000-\\u200A\\u2028\\u2029\\u202F\\u205F\\u3000\\uFEFF]+") <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("^\u0001|\u0001$");	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>($r1, "");	r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r3);	virtualinvoke r5.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r4);	virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>(r4);	return r4
;block_num 1