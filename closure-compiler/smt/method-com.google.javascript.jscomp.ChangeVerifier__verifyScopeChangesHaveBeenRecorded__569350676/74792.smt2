(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1325 0)
(declare-sort var3414 0)
(declare-sort var3400 0)
(declare-sort var1197 0)
(declare-sort var140 0)
(declare-sort var2998 0)
(declare-sort var914 0)
(declare-sort var3640 0)
(declare-sort var2185 0)
(declare-sort var1816 0)
(declare-sort var493 0)
(declare-sort var1223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1197-init () var1197)
(declare-fun <init>/-808729244 (var1197) void)
(declare-fun clonesByCurrent/136076163 (var1325) var140)
(declare-fun var914_get/1088891777 (var914 var2998) var2998)
(declare-fun cast-from-var140-to-var914 (var140) var914)
(declare-fun cast-from-var3400-to-var2998 (var3400) var2998)
(declare-fun cast-from-var2998-to-var3400 (var2998) var3400)
(declare-fun var3640-init () var3640)
(declare-fun <init>/595149706 (var3640 var1325 var2185) void)
(declare-fun cast-from-var1197-to-var2185 (var1197) var2185)
(declare-fun var1816_visitPreOrder/-803406628 (var3400 var493) void)
(declare-fun cast-from-var3640-to-var493 (var3640) var493)
(declare-fun var1223-init () var1223)
(declare-fun <init>/1188569746 (var1223 var1325 var2185 String) void)
(declare-fun cast-from-var1223-to-var493 (var1223) var493)
(declare-fun verifyDeletedScopeNodes/-879770470 (var1325 String var2185) void)
(declare-const null-var1325 var1325)
(declare-const null-String String)
(declare-const null-var3400 var3400)
(declare-const var2589 var1325) ; Statement: r2 := @this: com.google.javascript.jscomp.ChangeVerifier 
(assert (not (= var2589 null-var1325)))
(declare-const var3351 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3351 null-String)))
(declare-const var435 var3400) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var435 null-var3400)))
(assert true)
(define-const var308 Bool (isEmpty/-1285796103 var3351)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ") 
(assert (not (= (ite var308 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var685 String "") ; Statement: $r9 = "" 
 ; Statement: goto [?= $r1 = new java.util.LinkedHashSet] 
(assert true) ; Non Conditional
(define-const var599 var1197 var1197-init) ; Statement: $r1 = new java.util.LinkedHashSet 
(assert true)
;(assert (<init>/-808729244 var599)) ; Statement: specialinvoke $r1.<java.util.LinkedHashSet: void <init>()>() 

(declare-const var599!1 var1197)
(define-const var2520 var140 (clonesByCurrent/136076163 var2589)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ChangeVerifier: com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap clonesByCurrent> 
(define-const var369 var2998 (var914_get/1088891777 (cast-from-var140-to-var914 var2520) (cast-from-var3400-to-var2998 var435))) ; Statement: $r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var3924 var3400 (cast-from-var2998-to-var3400 var369)) ; Statement: $r7 = (com.google.javascript.rhino.Node) $r5 
(define-const var3256 var3640 var3640-init) ; Statement: $r6 = new com.google.javascript.jscomp.ChangeVerifier$1 
(assert true)
;(assert (<init>/595149706 var3256 var2589 (cast-from-var1197-to-var2185 var599!1))) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.ChangeVerifier$1: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set)>(r2, $r1) 

(declare-const var3256!1 var3640)
(declare-const var2589!1 var1325)
(declare-const var599!2 var1197)
;(assert (var1816_visitPreOrder/-803406628 var3924 (cast-from-var3640-to-var493 var3256!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>($r7, $r6) 

(declare-const var3924!1 var3400)
(declare-const var3256!2 var3640)
(define-const var1141 var1223 var1223-init) ; Statement: $r8 = new com.google.javascript.jscomp.ChangeVerifier$2 
(assert true)
;(assert (<init>/1188569746 var1141 var2589!1 (cast-from-var1197-to-var2185 var599!2) var685)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.ChangeVerifier$2: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set,java.lang.String)>(r2, $r1, $r9) 

(declare-const var1141!1 var1223)
(declare-const var2589!2 var1325)
(declare-const var599!3 var1197)
(declare-const var685!1 String)
;(assert (var1816_visitPreOrder/-803406628 var435 (cast-from-var1223-to-var493 var1141!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>(r3, $r8) 

(declare-const var435!1 var3400)
(declare-const var1141!2 var1223)
(assert true)
;(assert (verifyDeletedScopeNodes/-879770470 var2589!2 var685!1 (cast-from-var1197-to-var2185 var599!3))) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.ChangeVerifier: void verifyDeletedScopeNodes(java.lang.String,java.util.Set)>($r9, $r1) 

(declare-const var2589!3 var1325)
(declare-const var685!2 String)
(declare-const var599!4 var1197)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var1197-init=([], java.util.LinkedHashSet), <init>/-808729244=([java.util.LinkedHashSet], void), clonesByCurrent/136076163=([com.google.javascript.jscomp.ChangeVerifier], com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap), var914_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var140-to-var914=([com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap], java.util.Map), cast-from-var3400-to-var2998=([com.google.javascript.rhino.Node], java.lang.Object), cast-from-var2998-to-var3400=([java.lang.Object], com.google.javascript.rhino.Node), var3640-init=([], com.google.javascript.jscomp.ChangeVerifier$1), <init>/595149706=([com.google.javascript.jscomp.ChangeVerifier$1, com.google.javascript.jscomp.ChangeVerifier, java.util.Set], void), cast-from-var1197-to-var2185=([java.util.LinkedHashSet], java.util.Set), var1816_visitPreOrder/-803406628=([com.google.javascript.rhino.Node, com.google.javascript.jscomp.NodeUtil$Visitor], void), cast-from-var3640-to-var493=([com.google.javascript.jscomp.ChangeVerifier$1], com.google.javascript.jscomp.NodeUtil$Visitor), var1223-init=([], com.google.javascript.jscomp.ChangeVerifier$2), <init>/1188569746=([com.google.javascript.jscomp.ChangeVerifier$2, com.google.javascript.jscomp.ChangeVerifier, java.util.Set, java.lang.String], void), cast-from-var1223-to-var493=([com.google.javascript.jscomp.ChangeVerifier$2], com.google.javascript.jscomp.NodeUtil$Visitor), verifyDeletedScopeNodes/-879770470=([com.google.javascript.jscomp.ChangeVerifier, java.lang.String, java.util.Set], void)}
; {var1325=com.google.javascript.jscomp.ChangeVerifier, var2589=r2, var3351=r0, var3414=null_type, var3400=com.google.javascript.rhino.Node, var435=r3, var308=$z0, var685=$r9, var1197=java.util.LinkedHashSet, var599=$r1, var140=com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap, var2520=$r4, var2998=java.lang.Object, var914=java.util.Map, var369=$r5, var3924=$r7, var3640=com.google.javascript.jscomp.ChangeVerifier$1, var3256=$r6, var2185=java.util.Set, var1816=com.google.javascript.jscomp.NodeUtil, var493=com.google.javascript.jscomp.NodeUtil$Visitor, var1223=com.google.javascript.jscomp.ChangeVerifier$2, var1141=$r8}
; {com.google.javascript.jscomp.ChangeVerifier=var1325, r2=var2589, r0=var3351, null_type=var3414, com.google.javascript.rhino.Node=var3400, r3=var435, $z0=var308, $r9=var685, java.util.LinkedHashSet=var1197, $r1=var599, com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap=var140, $r4=var2520, java.lang.Object=var2998, java.util.Map=var914, $r5=var369, $r7=var3924, com.google.javascript.jscomp.ChangeVerifier$1=var3640, $r6=var3256, java.util.Set=var2185, com.google.javascript.jscomp.NodeUtil=var1816, com.google.javascript.jscomp.NodeUtil$Visitor=var493, com.google.javascript.jscomp.ChangeVerifier$2=var1223, $r8=var1141}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ChangeVerifier;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ");	$r9 = "";	goto [?= $r1 = new java.util.LinkedHashSet];	$r1 = new java.util.LinkedHashSet;	specialinvoke $r1.<java.util.LinkedHashSet: void <init>()>();	$r4 = r2.<com.google.javascript.jscomp.ChangeVerifier: com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap clonesByCurrent>;	$r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.BiMap: java.lang.Object get(java.lang.Object)>(r3);	$r7 = (com.google.javascript.rhino.Node) $r5;	$r6 = new com.google.javascript.jscomp.ChangeVerifier$1;	specialinvoke $r6.<com.google.javascript.jscomp.ChangeVerifier$1: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set)>(r2, $r1);	staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>($r7, $r6);	$r8 = new com.google.javascript.jscomp.ChangeVerifier$2;	specialinvoke $r8.<com.google.javascript.jscomp.ChangeVerifier$2: void <init>(com.google.javascript.jscomp.ChangeVerifier,java.util.Set,java.lang.String)>(r2, $r1, $r9);	staticinvoke <com.google.javascript.jscomp.NodeUtil: void visitPreOrder(com.google.javascript.rhino.Node,com.google.javascript.jscomp.NodeUtil$Visitor)>(r3, $r8);	virtualinvoke r2.<com.google.javascript.jscomp.ChangeVerifier: void verifyDeletedScopeNodes(java.lang.String,java.util.Set)>($r9, $r1);	return
;block_num 3