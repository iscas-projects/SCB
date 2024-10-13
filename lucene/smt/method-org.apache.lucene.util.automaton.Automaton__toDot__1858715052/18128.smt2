(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3868 0)
(declare-sort var3600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getNumStates/-1848750724 (var3868) Int)
(declare-fun var3600-init () var3600)
(declare-fun <init>/1163512306 (var3600) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3868 var3868)
(declare-const var1600 var3868) ; Statement: r1 := @this: org.apache.lucene.util.automaton.Automaton 
(assert (not (= var1600 null-var3868)))
(define-const var76 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var76)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var76!1 String)
(assert (= var76!1 ""))
(assert true)
;(assert (append/672562846 var76!1 "digraph Automaton {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("digraph Automaton {\n") 
(declare-const var76!2 String)
(assert (= var76!2 (str.++ var76!1 "digraph Automaton {\n")))
(assert true)
;(assert (append/672562846 var76!2 "  rankdir = LR\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  rankdir = LR\n") 
(declare-const var76!3 String)
(assert (= var76!3 (str.++ var76!2 "  rankdir = LR\n")))
(assert true)
;(assert (append/672562846 var76!3 "  node [width=0.2, height=0.2, fontsize=8]\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  node [width=0.2, height=0.2, fontsize=8]\n") 
(declare-const var76!4 String)
(assert (= var76!4 (str.++ var76!3 "  node [width=0.2, height=0.2, fontsize=8]\n")))
(assert true)
(define-const var1345 Int (getNumStates/-1848750724 var1600)) ; Statement: i0 = virtualinvoke r1.<org.apache.lucene.util.automaton.Automaton: int getNumStates()>() 
 ; Statement: if i0 <= 0 goto $r2 = new org.apache.lucene.util.automaton.Transition 
(assert (<= var1345 0)) ; Cond: i0 <= 0 
(define-const var2600 var3600 var3600-init) ; Statement: $r2 = new org.apache.lucene.util.automaton.Transition 
(assert true)
;(assert (<init>/1163512306 var2600)) ; Statement: specialinvoke $r2.<org.apache.lucene.util.automaton.Transition: void <init>()>() 

(declare-const var2600!1 var3600)
(define-const var3703 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var3703 var1345)) ; Cond: i9 >= i0 
(assert true)
;(assert (append/-1166366385 var76!4 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var76!5 String)
(assert (str.prefixof var76!4 var76!5))
(assert true)
(define-const var88 String (toString/-2075883882 var76!5)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getNumStates/-1848750724=([org.apache.lucene.util.automaton.Automaton], int), var3600-init=([], org.apache.lucene.util.automaton.Transition), <init>/1163512306=([org.apache.lucene.util.automaton.Transition], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3868=org.apache.lucene.util.automaton.Automaton, var1600=r1, var76=$r0, var1345=i0, var3600=org.apache.lucene.util.automaton.Transition, var2600=$r2, var3703=i9, var88=$r3}
; {org.apache.lucene.util.automaton.Automaton=var3868, r1=var1600, $r0=var76, i0=var1345, org.apache.lucene.util.automaton.Transition=var3600, $r2=var2600, i9=var3703, $r3=var88}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.Automaton;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("digraph Automaton {\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  rankdir = LR\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  node [width=0.2, height=0.2, fontsize=8]\n");	i0 = virtualinvoke r1.<org.apache.lucene.util.automaton.Automaton: int getNumStates()>();	if i0 <= 0 goto $r2 = new org.apache.lucene.util.automaton.Transition;	$r2 = new org.apache.lucene.util.automaton.Transition;	specialinvoke $r2.<org.apache.lucene.util.automaton.Transition: void <init>()>();	i9 = 0;	if i9 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4