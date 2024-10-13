(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1592 0)
(declare-sort var3585 0)
(declare-sort var1823 0)
(declare-sort var3499 0)
(declare-sort var1879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3585-init () var3585)
(declare-fun <init>/-325640736 (var3585) void)
(declare-fun text/-1961388715 (var1592) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3499_concatenate/416308160 (var1879) var1823)
(declare-fun cast-from-var3585-to-var1879 (var3585) var1879)
(declare-const null-var1592 var1592)
(declare-const var2279 var1592) ; Statement: r1 := @parameter0: org.apache.lucene.index.Term 
(assert (not (= var2279 null-var1592)))
(define-const var3646 var3585 var3585-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3646)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var3646!1 var3585)
(assert true)
(define-const var3478 String (text/-1961388715 var2279)) ; Statement: r2 = virtualinvoke r1.<org.apache.lucene.index.Term: java.lang.String text()>() 
(define-const var797 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3337 Int (length/-134980193 var3478)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto $r3 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0) 
(assert (>= var797 var3337)) ; Cond: i7 >= $i0 
(define-const var3336 var1823 (var3499_concatenate/416308160 (cast-from-var3585-to-var1879 var3646!1))) ; Statement: $r3 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3585-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), text/-1961388715=([org.apache.lucene.index.Term], java.lang.String), length/-134980193=([java.lang.String], int), var3499_concatenate/416308160=([java.util.List], org.apache.lucene.util.automaton.Automaton), cast-from-var3585-to-var1879=([java.util.ArrayList], java.util.List)}
; {var1592=org.apache.lucene.index.Term, var2279=r1, var3585=java.util.ArrayList, var3646=$r0, var3478=r2, var797=i7, var3337=$i0, var1823=org.apache.lucene.util.automaton.Automaton, var3499=org.apache.lucene.util.automaton.Operations, var1879=java.util.List, var3336=$r3}
; {org.apache.lucene.index.Term=var1592, r1=var2279, java.util.ArrayList=var3585, $r0=var3646, r2=var3478, i7=var797, $i0=var3337, org.apache.lucene.util.automaton.Automaton=var1823, org.apache.lucene.util.automaton.Operations=var3499, java.util.List=var1879, $r3=var3336}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: org.apache.lucene.index.Term;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r2 = virtualinvoke r1.<org.apache.lucene.index.Term: java.lang.String text()>();	i7 = 0;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if i7 >= $i0 goto $r3 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0);	$r3 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0);	return $r3
;block_num 3