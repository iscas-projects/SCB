(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var304 0)
(declare-sort var348 0)
(declare-sort var3973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createState/1855799214 (var304) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3973_atMost/57720931 (var304 String Int) Int)
(declare-fun addTransition/-1141867807 (var304 Int Int Int) void)
(declare-const null-var304 var304)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var110 var304) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder 
(assert (not (= var110 null-var304)))
(declare-const var76 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var76 null-String)))
(declare-const var1417 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1417 null-Int)))
(assert true)
(define-const var2920 Int (createState/1855799214 var110)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>() 
(assert true)
(define-const var939 Int (length/-134980193 var76)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 != i1 goto c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i1) 
(assert (not (= var939 var1417))) ; Cond: $i2 != i1 
(assert (and true (and (> (str.len var76) var1417) (<= 0 var1417))))
(define-const var3517 Int (charAt/698050440 var76 var1417)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i1) 
(define-const var3617 Int (cast-from-Int-to-Int var1417)) ; Statement: $c4 = (char) i1 
(define-const var1042 Int (cast-from-Int-to-Int var3617)) ; Statement: $i11 = (int) $c4 
(define-const var2089 Int (+ var1042 1)) ; Statement: $i5 = $i11 + 1 
(define-const var638 Int (var3973_atMost/57720931 var110 var76 var2089)) ; Statement: $i6 = staticinvoke <org.apache.lucene.util.automaton.Automata: int atMost(org.apache.lucene.util.automaton.Automaton$Builder,java.lang.String,int)>(r0, r1, $i5) 
(define-const var2893 Int (cast-from-Int-to-Int var3517)) ; Statement: $i12 = (int) c3 
(assert true)
;(assert (addTransition/-1141867807 var110 var2920 var638 var2893)) ; Statement: virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void addTransition(int,int,int)>(i0, $i6, $i12) 

(declare-const var110!1 var304)
(declare-const var2920!1 Int)
(declare-const var638!1 Int)
(declare-const var2893!1 Int)
(define-const var2210 Int (cast-from-Int-to-Int var3517)) ; Statement: $i13 = (int) c3 
 ; Statement: if $i13 <= 48 goto return i0 
(assert (<= var2210 48)) ; Cond: $i13 <= 48 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {createState/1855799214=([org.apache.lucene.util.automaton.Automaton$Builder], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([int], char), var3973_atMost/57720931=([org.apache.lucene.util.automaton.Automaton$Builder, java.lang.String, int], int), addTransition/-1141867807=([org.apache.lucene.util.automaton.Automaton$Builder, int, int, int], void)}
; {var304=org.apache.lucene.util.automaton.Automaton$Builder, var110=r0, var76=r1, var348=null_type, var1417=i1, var2920=i0, var939=$i2, var3517=c3, var3617=$c4, var1042=$i11, var2089=$i5, var3973=org.apache.lucene.util.automaton.Automata, var638=$i6, var2893=$i12, var2210=$i13}
; {org.apache.lucene.util.automaton.Automaton$Builder=var304, r0=var110, r1=var76, null_type=var348, i1=var1417, i0=var2920, $i2=var939, c3=var3517, $c4=var3617, $i11=var1042, $i5=var2089, org.apache.lucene.util.automaton.Automata=var3973, $i6=var638, $i12=var2893, $i13=var2210}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 != i1 goto c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i1);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i1);	$c4 = (char) i1;	$i11 = (int) $c4;	$i5 = $i11 + 1;	$i6 = staticinvoke <org.apache.lucene.util.automaton.Automata: int atMost(org.apache.lucene.util.automaton.Automaton$Builder,java.lang.String,int)>(r0, r1, $i5);	$i12 = (int) c3;	virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void addTransition(int,int,int)>(i0, $i6, $i12);	$i13 = (int) c3;	if $i13 <= 48 goto return i0;	return i0
;block_num 3