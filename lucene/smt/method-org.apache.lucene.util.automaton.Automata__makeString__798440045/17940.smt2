(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3853 0)
(declare-sort var2819 0)
(declare-sort var1385 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2819-init () var2819)
(declare-fun <init>/-1739220259 (var2819) void)
(declare-fun createState/-1660497321 (var2819) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setAccept/963630324 (var2819 Int Bool) void)
(declare-fun finishState/975056621 (var2819) void)
(declare-fun isDeterministic/1200162827 (var2819) Bool)
(declare-fun var2118-init () var2118)
(declare-fun <init>/-208190597 (var2118) void)
(declare-const null-String String)
(declare-const var1385-$assertionsDisabled Bool)
(declare-const var2876 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2876 null-String)))
(define-const var3915 var2819 var2819-init) ; Statement: $r0 = new org.apache.lucene.util.automaton.Automaton 
(assert true)
;(assert (<init>/-1739220259 var3915)) ; Statement: specialinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void <init>()>() 

(declare-const var3915!1 var2819)
(assert true)
(define-const var3467 Int (createState/-1660497321 var3915!1)) ; Statement: i3 = virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: int createState()>() 
(define-const var2606 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1869 Int (length/-134980193 var2876)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1) 
(assert (>= var2606 var1869)) ; Cond: i4 >= $i0 
(assert true)
;(assert (setAccept/963630324 var3915!1 var3467 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1) 

(declare-const var3915!2 var2819)
(declare-const var3467!1 Int)
(declare-const var129 Int)
(assert true)
;(assert (finishState/975056621 var3915!2)) ; Statement: virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void finishState()>() 

(declare-const var3915!3 var2819)
(define-const var463 Bool var1385-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled> 
(assert (not (not (= (ite var463 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1163 Bool (isDeterministic/1200162827 var3915!3)) ; Statement: $z3 = virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: boolean isDeterministic()>() 
 ; Statement: if $z3 != 0 goto $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled> 
(assert (not (not (= (ite var1163 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3136 var2118 var2118-init) ; Statement: $r3 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var3136)) ; Statement: specialinvoke $r3.<java.lang.AssertionError: void <init>()>() 

(declare-const var3136!1 var2118)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2819-init=([], org.apache.lucene.util.automaton.Automaton), <init>/-1739220259=([org.apache.lucene.util.automaton.Automaton], void), createState/-1660497321=([org.apache.lucene.util.automaton.Automaton], int), length/-134980193=([java.lang.String], int), setAccept/963630324=([org.apache.lucene.util.automaton.Automaton, int, boolean], void), finishState/975056621=([org.apache.lucene.util.automaton.Automaton], void), isDeterministic/1200162827=([org.apache.lucene.util.automaton.Automaton], boolean), var2118-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var2876=r1, var3853=null_type, var2819=org.apache.lucene.util.automaton.Automaton, var3915=$r0, var3467=i3, var2606=i4, var1869=$i0, var129=1, var1385=org.apache.lucene.util.automaton.Automata, var463=$z0, var1163=$z3, var2118=java.lang.AssertionError, var3136=$r3}
; {r1=var2876, null_type=var3853, org.apache.lucene.util.automaton.Automaton=var2819, $r0=var3915, i3=var3467, i4=var2606, $i0=var1869, 1=var129, org.apache.lucene.util.automaton.Automata=var1385, $z0=var463, $z3=var1163, java.lang.AssertionError=var2118, $r3=var3136}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new org.apache.lucene.util.automaton.Automaton;	specialinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void <init>()>();	i3 = virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: int createState()>();	i4 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i0 goto virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1);	virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1);	virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void finishState()>();	$z0 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled>;	$z3 = virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: boolean isDeterministic()>();	if $z3 != 0 goto $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled>;	$r3 = new java.lang.AssertionError;	specialinvoke $r3.<java.lang.AssertionError: void <init>()>();	throw $r3
;block_num 5