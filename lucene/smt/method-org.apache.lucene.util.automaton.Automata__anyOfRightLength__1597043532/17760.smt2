(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var52 0)
(declare-sort var1937 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createState/1855799214 (var52) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1125_anyOfRightLength/1597043532 (var52 String Int) Int)
(declare-fun addTransition/255219812 (var52 Int Int Int Int) void)
(declare-const null-var52 var52)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2768 var52) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder 
(assert (not (= var2768 null-var52)))
(declare-const var1041 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1041 null-String)))
(declare-const var3599 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3599 null-Int)))
(assert true)
(define-const var2246 Int (createState/1855799214 var2768)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>() 
(assert true)
(define-const var657 Int (length/-134980193 var1041)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 != i1 goto $i3 = i1 + 1 
(assert (not (= var657 var3599))) ; Cond: $i2 != i1 
(define-const var1989 Int (+ var3599 1)) ; Statement: $i3 = i1 + 1 
(define-const var2463 Int (var1125_anyOfRightLength/1597043532 var2768 var1041 var1989)) ; Statement: $i4 = staticinvoke <org.apache.lucene.util.automaton.Automata: int anyOfRightLength(org.apache.lucene.util.automaton.Automaton$Builder,java.lang.String,int)>(r0, r1, $i3) 
(assert true)
;(assert (addTransition/255219812 var2768 var2246 var2463 48 57)) ; Statement: virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void addTransition(int,int,int,int)>(i0, $i4, 48, 57) 

(declare-const var2768!1 var52)
(declare-const var2246!1 Int)
(declare-const var2463!1 Int)
(declare-const var2656 Int)
(declare-const var1267 Int)
(assert true) ; Non Conditional
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {createState/1855799214=([org.apache.lucene.util.automaton.Automaton$Builder], int), length/-134980193=([java.lang.String], int), var1125_anyOfRightLength/1597043532=([org.apache.lucene.util.automaton.Automaton$Builder, java.lang.String, int], int), addTransition/255219812=([org.apache.lucene.util.automaton.Automaton$Builder, int, int, int, int], void)}
; {var52=org.apache.lucene.util.automaton.Automaton$Builder, var2768=r0, var1041=r1, var1937=null_type, var3599=i1, var2246=i0, var657=$i2, var1989=$i3, var1125=org.apache.lucene.util.automaton.Automata, var2463=$i4, var2656=48, var1267=57}
; {org.apache.lucene.util.automaton.Automaton$Builder=var52, r0=var2768, r1=var1041, null_type=var1937, i1=var3599, i0=var2246, $i2=var657, $i3=var1989, org.apache.lucene.util.automaton.Automata=var1125, $i4=var2463, 48=var2656, 57=var1267}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 != i1 goto $i3 = i1 + 1;	$i3 = i1 + 1;	$i4 = staticinvoke <org.apache.lucene.util.automaton.Automata: int anyOfRightLength(org.apache.lucene.util.automaton.Automaton$Builder,java.lang.String,int)>(r0, r1, $i3);	virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void addTransition(int,int,int,int)>(i0, $i4, 48, 57);	return i0
;block_num 3