(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3503 0)
(declare-sort var2180 0)
(declare-sort var3712 0)
(declare-sort var2521 0)
(declare-sort var2244 0)
(declare-sort var1713 0)
(declare-sort var3820 0)
(declare-sort var925 0)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var3712) var3712)
(declare-fun var2521_checkState/1431124798 (Bool) void)
(declare-fun getString/-897720134 (var3712) String)
(declare-fun getLabelInfo/508104480 (var3503 String) var2244)
(declare-fun referenced/1036122744 (var2244) Bool)
(declare-fun id/1036122744 (var2244) Int)
(declare-fun getNameForId/-616176212 (var3503 Int) String)
(declare-fun namespaceStack/-78738172 (var3503) var1713)
(declare-fun var1713_peek/625256415 (var1713) var3820)
(declare-fun cast-from-var3820-to-var925 (var3820) var925)
(declare-fun renameMap/-1579495983 (var925) var2077)
(declare-fun var2077_remove/-1201052315 (var2077 var3820) var3820)
(declare-fun cast-from-String-to-var3820 (String) var3820)
(declare-const null-var3503 var3503)
(declare-const null-var2180 var2180)
(declare-const null-var3712 var3712)
(declare-const var3541 var3503) ; Statement: r2 := @this: com.google.javascript.jscomp.RenameLabels$ProcessLabels 
(assert (not (= var3541 null-var3503)))
(declare-const var3319 var2180) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var3319 null-var2180)))
(declare-const var3107 var3712) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3107 null-var3712)))
(assert true)
(define-const var2586 var3712 (getFirstChild/2090828207 var3107)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
 ; Statement: if r1 == null goto $z6 = 0 
(assert (= var2586 null-var3712)) ; Cond: r1 == null 
(define-const var3646 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
;(assert (var2521_checkState/1431124798 var3646)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var3646!1 Bool)
(assert true)
(define-const var747 String (getString/-897720134 var2586)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2219 var2244 (getLabelInfo/508104480 var3541 var747)) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: com.google.javascript.jscomp.RenameLabels$LabelInfo getLabelInfo(java.lang.String)>($r6) 
(define-const var2561 Bool (referenced/1036122744 var2219)) ; Statement: $z0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: boolean referenced> 
 ; Statement: if $z0 != 0 goto $i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id> 
(assert (not (= (ite var2561 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3106 Int (id/1036122744 var2219)) ; Statement: $i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id> 
(assert true)
(define-const var2673 String (getNameForId/-616176212 var3541 var3106)) ; Statement: $r5 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.lang.String getNameForId(int)>($i0) 
(assert true)
(define-const var3162 Bool (= var747 var2673)) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var3162 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: goto [?= $r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack>] 
(assert true) ; Non Conditional
(define-const var3428 var1713 (namespaceStack/-78738172 var3541)) ; Statement: $r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack> 
(define-const var801 var3820 (var1713_peek/625256415 var3428)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Deque: java.lang.Object peek()>() 
(define-const var3749 var925 (cast-from-var3820-to-var925 var801)) ; Statement: $r11 = (com.google.javascript.jscomp.RenameLabels$LabelNamespace) $r10 
(define-const var398 var2077 (renameMap/-1579495983 var3749)) ; Statement: $r12 = $r11.<com.google.javascript.jscomp.RenameLabels$LabelNamespace: java.util.Map renameMap> 
;(assert (var2077_remove/-1201052315 var398 (cast-from-String-to-var3820 var747))) ; Statement: interfaceinvoke $r12.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r6) 

(declare-const var398!1 var2077)
(declare-const var747!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var2521_checkState/1431124798=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), getLabelInfo/508104480=([com.google.javascript.jscomp.RenameLabels$ProcessLabels, java.lang.String], com.google.javascript.jscomp.RenameLabels$LabelInfo), referenced/1036122744=([com.google.javascript.jscomp.RenameLabels$LabelInfo], boolean), id/1036122744=([com.google.javascript.jscomp.RenameLabels$LabelInfo], int), getNameForId/-616176212=([com.google.javascript.jscomp.RenameLabels$ProcessLabels, int], java.lang.String), namespaceStack/-78738172=([com.google.javascript.jscomp.RenameLabels$ProcessLabels], java.util.Deque), var1713_peek/625256415=([java.util.Deque], java.lang.Object), cast-from-var3820-to-var925=([java.lang.Object], com.google.javascript.jscomp.RenameLabels$LabelNamespace), renameMap/-1579495983=([com.google.javascript.jscomp.RenameLabels$LabelNamespace], java.util.Map), var2077_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3820=([java.lang.String], java.lang.Object)}
; {var3503=com.google.javascript.jscomp.RenameLabels$ProcessLabels, var3541=r2, var2180=com.google.javascript.jscomp.NodeTraversal, var3319=r3, var3712=com.google.javascript.rhino.Node, var3107=r0, var2586=r1, var3646=$z6, var2521=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var747=$r6, var2244=com.google.javascript.jscomp.RenameLabels$LabelInfo, var2219=$r7, var2561=$z0, var3106=$i0, var2673=$r5, var3162=$z1, var1713=java.util.Deque, var3428=$r9, var3820=java.lang.Object, var801=$r10, var925=com.google.javascript.jscomp.RenameLabels$LabelNamespace, var3749=$r11, var2077=java.util.Map, var398=$r12}
; {com.google.javascript.jscomp.RenameLabels$ProcessLabels=var3503, r2=var3541, com.google.javascript.jscomp.NodeTraversal=var2180, r3=var3319, com.google.javascript.rhino.Node=var3712, r0=var3107, r1=var2586, $z6=var3646, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2521, $r6=var747, com.google.javascript.jscomp.RenameLabels$LabelInfo=var2244, $r7=var2219, $z0=var2561, $i0=var3106, $r5=var2673, $z1=var3162, java.util.Deque=var1713, $r9=var3428, java.lang.Object=var3820, $r10=var801, com.google.javascript.jscomp.RenameLabels$LabelNamespace=var925, $r11=var3749, java.util.Map=var2077, $r12=var398}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.RenameLabels$ProcessLabels;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	if r1 == null goto $z6 = 0;	$z6 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: com.google.javascript.jscomp.RenameLabels$LabelInfo getLabelInfo(java.lang.String)>($r6);	$z0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: boolean referenced>;	if $z0 != 0 goto $i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id>;	$i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id>;	$r5 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.lang.String getNameForId(int)>($i0);	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z1 != 0 goto (branch);	goto [?= $r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack>];	$r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack>;	$r10 = interfaceinvoke $r9.<java.util.Deque: java.lang.Object peek()>();	$r11 = (com.google.javascript.jscomp.RenameLabels$LabelNamespace) $r10;	$r12 = $r11.<com.google.javascript.jscomp.RenameLabels$LabelNamespace: java.util.Map renameMap>;	interfaceinvoke $r12.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r6);	return
;block_num 6