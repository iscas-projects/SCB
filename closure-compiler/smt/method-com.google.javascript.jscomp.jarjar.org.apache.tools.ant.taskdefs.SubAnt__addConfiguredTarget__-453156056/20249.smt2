(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3643 0)
(declare-sort var3681 0)
(declare-sort var1739 0)
(declare-sort var1008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1455265211 (var3681) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun targets/328841187 (var3643) var1739)
(declare-fun var1739_add/328494887 (var1739 var1008) Bool)
(declare-fun cast-from-var3681-to-var1008 (var3681) var1008)
(declare-const null-var3643 var3643)
(declare-const null-var3681 var3681)
(declare-const var1549 var3643) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt 
(assert (not (= var1549 null-var3643)))
(declare-const var1764 var3681) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement 
(assert (not (= var1764 null-var3681)))
(assert true)
(define-const var2710 String (getName/1455265211 var1764)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement: java.lang.String getName()>() 
(assert true)
(define-const var986 Bool (isEmpty/-1285796103 var2710)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: java.util.List targets> 
(assert (= (ite var986 1 0) 0)) ; Cond: $z0 == 0 
(define-const var432 var1739 (targets/328841187 var1549)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: java.util.List targets> 
;(assert (var1739_add/328494887 var432 (cast-from-var3681-to-var1008 var1764))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>(r0) 

(declare-const var432!1 var1739)
(declare-const var1764!1 var3681)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1455265211=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), targets/328841187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt], java.util.List), var1739_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3681-to-var1008=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement], java.lang.Object)}
; {var3643=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt, var1549=r2, var3681=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement, var1764=r0, var2710=$r1, var986=$z0, var1739=java.util.List, var432=$r3, var1008=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt=var3643, r2=var1549, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement=var3681, r0=var1764, $r1=var2710, $z0=var986, java.util.List=var1739, $r3=var432, java.lang.Object=var1008}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: java.util.List targets>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: java.util.List targets>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>(r0);	return
;block_num 2