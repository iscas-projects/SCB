(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1398 0)
(declare-sort var873 0)
(declare-sort var581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var873-init () var873)
(declare-fun <init>/-1739220259 (var873) void)
(declare-fun createState/-1660497321 (var873) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setAccept/963630324 (var873 Int Bool) void)
(declare-fun finishState/975056621 (var873) void)
(declare-const null-String String)
(declare-const var581-$assertionsDisabled Bool)
(declare-const var1088 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1088 null-String)))
(define-const var667 var873 var873-init) ; Statement: $r0 = new org.apache.lucene.util.automaton.Automaton 
(assert true)
;(assert (<init>/-1739220259 var667)) ; Statement: specialinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void <init>()>() 

(declare-const var667!1 var873)
(assert true)
(define-const var2975 Int (createState/-1660497321 var667!1)) ; Statement: i3 = virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: int createState()>() 
(define-const var2191 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1427 Int (length/-134980193 var1088)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1) 
(assert (>= var2191 var1427)) ; Cond: i4 >= $i0 
(assert true)
;(assert (setAccept/963630324 var667!1 var2975 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1) 

(declare-const var667!2 var873)
(declare-const var2975!1 Int)
(declare-const var3236 Int)
(assert true)
;(assert (finishState/975056621 var667!2)) ; Statement: virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void finishState()>() 

(declare-const var667!3 var873)
(define-const var2755 Bool var581-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled> 
(assert (not (= (ite var2755 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2999 Bool var581-$assertionsDisabled) ; Statement: $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto return $r0 
(assert (not (= (ite var2999 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var873-init=([], org.apache.lucene.util.automaton.Automaton), <init>/-1739220259=([org.apache.lucene.util.automaton.Automaton], void), createState/-1660497321=([org.apache.lucene.util.automaton.Automaton], int), length/-134980193=([java.lang.String], int), setAccept/963630324=([org.apache.lucene.util.automaton.Automaton, int, boolean], void), finishState/975056621=([org.apache.lucene.util.automaton.Automaton], void)}
; {var1088=r1, var1398=null_type, var873=org.apache.lucene.util.automaton.Automaton, var667=$r0, var2975=i3, var2191=i4, var1427=$i0, var3236=1, var581=org.apache.lucene.util.automaton.Automata, var2755=$z0, var2999=$z1}
; {r1=var1088, null_type=var1398, org.apache.lucene.util.automaton.Automaton=var873, $r0=var667, i3=var2975, i4=var2191, $i0=var1427, 1=var3236, org.apache.lucene.util.automaton.Automata=var581, $z0=var2755, $z1=var2999}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new org.apache.lucene.util.automaton.Automaton;	specialinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void <init>()>();	i3 = virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: int createState()>();	i4 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i0 goto virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1);	virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void setAccept(int,boolean)>(i3, 1);	virtualinvoke $r0.<org.apache.lucene.util.automaton.Automaton: void finishState()>();	$z0 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled>;	$z1 = <org.apache.lucene.util.automaton.Automata: boolean $assertionsDisabled>;	if $z1 != 0 goto return $r0;	return $r0
;block_num 5