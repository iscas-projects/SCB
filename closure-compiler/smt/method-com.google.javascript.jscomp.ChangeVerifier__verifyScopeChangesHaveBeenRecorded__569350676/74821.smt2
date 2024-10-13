(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2743 0)
(declare-sort var906 0)
(declare-sort var3199 0)
(declare-sort var2488 0)
(declare-sort var1764 0)
(declare-sort var1973 0)
(declare-sort var2038 0)
(declare-sort var722 0)
(declare-sort var2151 0)
(declare-sort var3603 0)
(declare-sort var3723 0)
(declare-sort var1246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2488-init () var2488)
(declare-fun <init>/-808729244 (var2488) void)
(declare-fun clonesByCurrent/136076163 (var2743) var1764)
(declare-fun var2038_get/1088891777 (var2038 var1973) var1973)
(declare-fun cast-from-var1764-to-var2038 (var1764) var2038)
(declare-fun cast-from-var3199-to-var1973 (var3199) var1973)
(declare-fun cast-from-var1973-to-var3199 (var1973) var3199)
(declare-fun var722-init () var722)
(declare-fun <init>/595149706 (var722 var2743 var2151) void)
(declare-fun cast-from-var2488-to-var2151 (var2488) var2151)
(declare-fun var3603_visitPreOrder/-803406628 (var3199 var3723) void)
(declare-fun cast-from-var722-to-var3723 (var722) var3723)
(declare-fun var1246-init () var1246)
(declare-fun <init>/1188569746 (var1246 var2743 var2151 String) void)
(declare-fun cast-from-var1246-to-var3723 (var1246) var3723)
(declare-fun verifyDeletedScopeNodes/-879770470 (var2743 String var2151) void)
(declare-const null-var2743 var2743)
(declare-const null-String String)
(declare-const null-var3199 var3199)
(declare-const var3706 var2743) ; Statement: r2 := @this: com.google.javascript.jscomp.ChangeVerifier 
(assert (not (= var3706 null-var2743)))
(declare-const var667 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var667 null-String)))
(declare-const var1214 var3199) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1214 null-var3199)))
(assert true)
(define-const var2012 Bool (isEmpty/-1285796103 var667)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ") 
(assert (= (ite var2012 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2902 String (str.++ "\u0001: " var667)) ; Statement: $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ") 
(assert true) ; Non Conditional
(define-const var974 var2488 var2488-init) ; Statement: $r1 = new java.util.LinkedHashSet 
(assert true)
;(assert (<init>/-808729244 var974)) ; Statement: specialinvoke $r1.<java.util.LinkedHashSet: void <init>()>() 

(declare-const var974!1 var2488)
(define-const var1739 var1764 (clonesByCurrent/136076163 var3706)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ChangeVerifier: com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap clonesByCurrent> 
(define-const var3104 var1973 (var2038_get/1088891777 (cast-from-var1764-to-var2038 var1739) (cast-from-var3199-to-var1973 var1214))) ; Statement: $r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var2545 var3199 (cast-from-var1973-to-var3199 var3104)) ; Statement: $r7 = (com.google.javascript.rhino.Node) $r5 
(define-const var2353 var722 var722-init) ; Statement: $r6 = new com.google.javascript.jscomp.ChangeVerifier$1 
(assert true)
;(assert (<init>/595149706 var2353 var3706 (cast-from-var2488-to-var2151 var974!1))) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.ChangeVerifier$1: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set)>(r2, $r1) 

(declare-const var2353!1 var722)
(declare-const var3706!1 var2743)
(declare-const var974!2 var2488)
;(assert (var3603_visitPreOrder/-803406628 var2545 (cast-from-var722-to-var3723 var2353!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>($r7, $r6) 

(declare-const var2545!1 var3199)
(declare-const var2353!2 var722)
(define-const var142 var1246 var1246-init) ; Statement: $r8 = new com.google.javascript.jscomp.ChangeVerifier$2 
(assert true)
;(assert (<init>/1188569746 var142 var3706!1 (cast-from-var2488-to-var2151 var974!2) var2902)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.ChangeVerifier$2: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set,java.lang.String)>(r2, $r1, $r9) 

(declare-const var142!1 var1246)
(declare-const var3706!2 var2743)
(declare-const var974!3 var2488)
(declare-const var2902!1 String)
;(assert (var3603_visitPreOrder/-803406628 var1214 (cast-from-var1246-to-var3723 var142!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>(r3, $r8) 

(declare-const var1214!1 var3199)
(declare-const var142!2 var1246)
(assert true)
;(assert (verifyDeletedScopeNodes/-879770470 var3706!2 var2902!1 (cast-from-var2488-to-var2151 var974!3))) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.ChangeVerifier: void verifyDeletedScopeNodes(java.lang.String,java.util.Set)>($r9, $r1) 

(declare-const var3706!3 var2743)
(declare-const var2902!2 String)
(declare-const var974!4 var2488)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2488-init=([], java.util.LinkedHashSet), <init>/-808729244=([java.util.LinkedHashSet], void), clonesByCurrent/136076163=([com.google.javascript.jscomp.ChangeVerifier], com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap), var2038_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1764-to-var2038=([com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap], java.util.Map), cast-from-var3199-to-var1973=([com.google.javascript.rhino.Node], java.lang.Object), cast-from-var1973-to-var3199=([java.lang.Object], com.google.javascript.rhino.Node), var722-init=([], com.google.javascript.jscomp.ChangeVerifier$1), <init>/595149706=([com.google.javascript.jscomp.ChangeVerifier$1, com.google.javascript.jscomp.ChangeVerifier, java.util.Set], void), cast-from-var2488-to-var2151=([java.util.LinkedHashSet], java.util.Set), var3603_visitPreOrder/-803406628=([com.google.javascript.rhino.Node, com.google.javascript.jscomp.NodeUtil$Visitor], void), cast-from-var722-to-var3723=([com.google.javascript.jscomp.ChangeVerifier$1], com.google.javascript.jscomp.NodeUtil$Visitor), var1246-init=([], com.google.javascript.jscomp.ChangeVerifier$2), <init>/1188569746=([com.google.javascript.jscomp.ChangeVerifier$2, com.google.javascript.jscomp.ChangeVerifier, java.util.Set, java.lang.String], void), cast-from-var1246-to-var3723=([com.google.javascript.jscomp.ChangeVerifier$2], com.google.javascript.jscomp.NodeUtil$Visitor), verifyDeletedScopeNodes/-879770470=([com.google.javascript.jscomp.ChangeVerifier, java.lang.String, java.util.Set], void)}
; {var2743=com.google.javascript.jscomp.ChangeVerifier, var3706=r2, var667=r0, var906=null_type, var3199=com.google.javascript.rhino.Node, var1214=r3, var2012=$z0, var2902=$r9, var2488=java.util.LinkedHashSet, var974=$r1, var1764=com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap, var1739=$r4, var1973=java.lang.Object, var2038=java.util.Map, var3104=$r5, var2545=$r7, var722=com.google.javascript.jscomp.ChangeVerifier$1, var2353=$r6, var2151=java.util.Set, var3603=com.google.javascript.jscomp.NodeUtil, var3723=com.google.javascript.jscomp.NodeUtil$Visitor, var1246=com.google.javascript.jscomp.ChangeVerifier$2, var142=$r8}
; {com.google.javascript.jscomp.ChangeVerifier=var2743, r2=var3706, r0=var667, null_type=var906, com.google.javascript.rhino.Node=var3199, r3=var1214, $z0=var2012, $r9=var2902, java.util.LinkedHashSet=var2488, $r1=var974, com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap=var1764, $r4=var1739, java.lang.Object=var1973, java.util.Map=var2038, $r5=var3104, $r7=var2545, com.google.javascript.jscomp.ChangeVerifier$1=var722, $r6=var2353, java.util.Set=var2151, com.google.javascript.jscomp.NodeUtil=var3603, com.google.javascript.jscomp.NodeUtil$Visitor=var3723, com.google.javascript.jscomp.ChangeVerifier$2=var1246, $r8=var142}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ChangeVerifier;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ");	$r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ");	$r1 = new java.util.LinkedHashSet;	specialinvoke $r1.<java.util.LinkedHashSet: void <init>()>();	$r4 = r2.<com.google.javascript.jscomp.ChangeVerifier: com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap clonesByCurrent>;	$r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap: java.lang.Object get(java.lang.Object)>(r3);	$r7 = (com.google.javascript.rhino.Node) $r5;	$r6 = new com.google.javascript.jscomp.ChangeVerifier$1;	specialinvoke $r6.<com.google.javascript.jscomp.ChangeVerifier$1: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set)>(r2, $r1);	staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>($r7, $r6);	$r8 = new com.google.javascript.jscomp.ChangeVerifier$2;	specialinvoke $r8.<com.google.javascript.jscomp.ChangeVerifier$2: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set,java.lang.String)>(r2, $r1, $r9);	staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>(r3, $r8);	virtualinvoke r2.<com.google.javascript.jscomp.ChangeVerifier: void verifyDeletedScopeNodes(java.lang.String,java.util.Set)>($r9, $r1);	return
;block_num 3