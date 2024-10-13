(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1630 0)
(declare-sort var3826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createState/1855799214 (var1630) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setAccept/-2124758645 (var1630 Int Bool) void)
(declare-const null-var1630 var1630)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2371 var1630) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder 
(assert (not (= var2371 null-var1630)))
(declare-const var2105 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2105 null-String)))
(declare-const var1637 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1637 null-Int)))
(assert true)
(define-const var1898 Int (createState/1855799214 var2371)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>() 
(assert true)
(define-const var335 Int (length/-134980193 var2105)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 != i1 goto $i3 = i1 + 1 
(assert (not (not (= var335 var1637)))) ; Negate: Cond: $i2 != i1  
(assert true)
;(assert (setAccept/-2124758645 var2371 var1898 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1) 

(declare-const var2371!1 var1630)
(declare-const var1898!1 Int)
(declare-const var1259 Int)
 ; Statement: goto [?= return i0] 
(assert true) ; Non Conditional
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {createState/1855799214=([org.apache.lucene.util.automaton.Automaton$Builder], int), length/-134980193=([java.lang.String], int), setAccept/-2124758645=([org.apache.lucene.util.automaton.Automaton$Builder, int, boolean], void)}
; {var1630=org.apache.lucene.util.automaton.Automaton$Builder, var2371=r0, var2105=r1, var3826=null_type, var1637=i1, var1898=i0, var335=$i2, var1259=1}
; {org.apache.lucene.util.automaton.Automaton$Builder=var1630, r0=var2371, r1=var2105, null_type=var3826, i1=var1637, i0=var1898, $i2=var335, 1=var1259}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 != i1 goto $i3 = i1 + 1;	virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1);	goto [?= return i0];	return i0
;block_num 3