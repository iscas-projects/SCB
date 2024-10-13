(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2735 0)
(declare-sort var350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createState/1855799214 (var2735) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setAccept/-2124758645 (var2735 Int Bool) void)
(declare-const null-var2735 var2735)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var692 var2735) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder 
(assert (not (= var692 null-var2735)))
(declare-const var2680 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2680 null-String)))
(declare-const var3849 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3849 null-Int)))
(assert true)
(define-const var1391 Int (createState/1855799214 var692)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>() 
(assert true)
(define-const var2304 Int (length/-134980193 var2680)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 != i1 goto c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i1) 
(assert (not (not (= var2304 var3849)))) ; Negate: Cond: $i2 != i1  
(assert true)
;(assert (setAccept/-2124758645 var692 var1391 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1) 

(declare-const var692!1 var2735)
(declare-const var1391!1 Int)
(declare-const var3556 Int)
 ; Statement: goto [?= return i0] 
(assert true) ; Non Conditional
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {createState/1855799214=([org.apache.lucene.util.automaton.Automaton$Builder], int), length/-134980193=([java.lang.String], int), setAccept/-2124758645=([org.apache.lucene.util.automaton.Automaton$Builder, int, boolean], void)}
; {var2735=org.apache.lucene.util.automaton.Automaton$Builder, var692=r0, var2680=r1, var350=null_type, var3849=i1, var1391=i0, var2304=$i2, var3556=1}
; {org.apache.lucene.util.automaton.Automaton$Builder=var2735, r0=var692, r1=var2680, null_type=var350, i1=var3849, i0=var1391, $i2=var2304, 1=var3556}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 != i1 goto c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i1);	virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1);	goto [?= return i0];	return i0
;block_num 3