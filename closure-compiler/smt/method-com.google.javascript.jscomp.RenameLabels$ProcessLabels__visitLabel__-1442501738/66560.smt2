(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2579 0)
(declare-sort var461 0)
(declare-sort var1221 0)
(declare-sort var1658 0)
(declare-sort var814 0)
(declare-sort var1040 0)
(declare-sort var277 0)
(declare-sort var1929 0)
(declare-sort var1810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var1221) var1221)
(declare-fun var1658_checkState/1431124798 (Bool) void)
(declare-fun getString/-897720134 (var1221) String)
(declare-fun getLabelInfo/508104480 (var2579 String) var814)
(declare-fun referenced/1036122744 (var814) Bool)
(declare-fun id/1036122744 (var814) Int)
(declare-fun getNameForId/-616176212 (var2579 Int) String)
(declare-fun namespaceStack/-78738172 (var2579) var1040)
(declare-fun var1040_peek/625256415 (var1040) var277)
(declare-fun cast-from-var277-to-var1929 (var277) var1929)
(declare-fun renameMap/-1579495983 (var1929) var1810)
(declare-fun var1810_remove/-1201052315 (var1810 var277) var277)
(declare-fun cast-from-String-to-var277 (String) var277)
(declare-const null-var2579 var2579)
(declare-const null-var461 var461)
(declare-const null-var1221 var1221)
(declare-const var718 var2579) ; Statement: r2 := @this: com.google.javascript.jscomp.RenameLabels$ProcessLabels 
(assert (not (= var718 null-var2579)))
(declare-const var375 var461) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var375 null-var461)))
(declare-const var3981 var1221) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3981 null-var1221)))
(assert true)
(define-const var416 var1221 (getFirstChild/2090828207 var3981)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
 ; Statement: if r1 == null goto $z6 = 0 
(assert (not (= var416 null-var1221))) ; Negate: Cond: r1 == null  
(define-const var1148 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6)] 
(assert true) ; Non Conditional
;(assert (var1658_checkState/1431124798 var1148)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var1148!1 Bool)
(assert true)
(define-const var2 String (getString/-897720134 var416)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var139 var814 (getLabelInfo/508104480 var718 var2)) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: com.google.javascript.jscomp.RenameLabels$LabelInfo getLabelInfo(java.lang.String)>($r6) 
(define-const var1109 Bool (referenced/1036122744 var139)) ; Statement: $z0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: boolean referenced> 
 ; Statement: if $z0 != 0 goto $i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id> 
(assert (not (= (ite var1109 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1187 Int (id/1036122744 var139)) ; Statement: $i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id> 
(assert true)
(define-const var2137 String (getNameForId/-616176212 var718 var1187)) ; Statement: $r5 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.lang.String getNameForId(int)>($i0) 
(assert true)
(define-const var2035 Bool (= var2 var2137)) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var2035 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: goto [?= $r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack>] 
(assert true) ; Non Conditional
(define-const var3383 var1040 (namespaceStack/-78738172 var718)) ; Statement: $r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack> 
(define-const var3579 var277 (var1040_peek/625256415 var3383)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Deque: java.lang.Object peek()>() 
(define-const var3261 var1929 (cast-from-var277-to-var1929 var3579)) ; Statement: $r11 = (com.google.javascript.jscomp.RenameLabels$LabelNamespace) $r10 
(define-const var917 var1810 (renameMap/-1579495983 var3261)) ; Statement: $r12 = $r11.<com.google.javascript.jscomp.RenameLabels$LabelNamespace: java.util.Map renameMap> 
;(assert (var1810_remove/-1201052315 var917 (cast-from-String-to-var277 var2))) ; Statement: interfaceinvoke $r12.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r6) 

(declare-const var917!1 var1810)
(declare-const var2!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var1658_checkState/1431124798=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), getLabelInfo/508104480=([com.google.javascript.jscomp.RenameLabels$ProcessLabels, java.lang.String], com.google.javascript.jscomp.RenameLabels$LabelInfo), referenced/1036122744=([com.google.javascript.jscomp.RenameLabels$LabelInfo], boolean), id/1036122744=([com.google.javascript.jscomp.RenameLabels$LabelInfo], int), getNameForId/-616176212=([com.google.javascript.jscomp.RenameLabels$ProcessLabels, int], java.lang.String), namespaceStack/-78738172=([com.google.javascript.jscomp.RenameLabels$ProcessLabels], java.util.Deque), var1040_peek/625256415=([java.util.Deque], java.lang.Object), cast-from-var277-to-var1929=([java.lang.Object], com.google.javascript.jscomp.RenameLabels$LabelNamespace), renameMap/-1579495983=([com.google.javascript.jscomp.RenameLabels$LabelNamespace], java.util.Map), var1810_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var277=([java.lang.String], java.lang.Object)}
; {var2579=com.google.javascript.jscomp.RenameLabels$ProcessLabels, var718=r2, var461=com.google.javascript.jscomp.NodeTraversal, var375=r3, var1221=com.google.javascript.rhino.Node, var3981=r0, var416=r1, var1148=$z6, var1658=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2=$r6, var814=com.google.javascript.jscomp.RenameLabels$LabelInfo, var139=$r7, var1109=$z0, var1187=$i0, var2137=$r5, var2035=$z1, var1040=java.util.Deque, var3383=$r9, var277=java.lang.Object, var3579=$r10, var1929=com.google.javascript.jscomp.RenameLabels$LabelNamespace, var3261=$r11, var1810=java.util.Map, var917=$r12}
; {com.google.javascript.jscomp.RenameLabels$ProcessLabels=var2579, r2=var718, com.google.javascript.jscomp.NodeTraversal=var461, r3=var375, com.google.javascript.rhino.Node=var1221, r0=var3981, r1=var416, $z6=var1148, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1658, $r6=var2, com.google.javascript.jscomp.RenameLabels$LabelInfo=var814, $r7=var139, $z0=var1109, $i0=var1187, $r5=var2137, $z1=var2035, java.util.Deque=var1040, $r9=var3383, java.lang.Object=var277, $r10=var3579, com.google.javascript.jscomp.RenameLabels$LabelNamespace=var1929, $r11=var3261, java.util.Map=var1810, $r12=var917}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.RenameLabels$ProcessLabels;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	if r1 == null goto $z6 = 0;	$z6 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: com.google.javascript.jscomp.RenameLabels$LabelInfo getLabelInfo(java.lang.String)>($r6);	$z0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: boolean referenced>;	if $z0 != 0 goto $i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id>;	$i0 = $r7.<com.google.javascript.jscomp.RenameLabels$LabelInfo: int id>;	$r5 = virtualinvoke r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.lang.String getNameForId(int)>($i0);	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z1 != 0 goto (branch);	goto [?= $r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack>];	$r9 = r2.<com.google.javascript.jscomp.RenameLabels$ProcessLabels: java.util.Deque namespaceStack>;	$r10 = interfaceinvoke $r9.<java.util.Deque: java.lang.Object peek()>();	$r11 = (com.google.javascript.jscomp.RenameLabels$LabelNamespace) $r10;	$r12 = $r11.<com.google.javascript.jscomp.RenameLabels$LabelNamespace: java.util.Map renameMap>;	interfaceinvoke $r12.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r6);	return
;block_num 6