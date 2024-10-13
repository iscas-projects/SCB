(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1347 0)
(declare-sort var2232 0)
(declare-sort var3093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createState/1855799214 (var1347) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setAccept/-2124758645 (var1347 Int Bool) void)
(declare-const null-var1347 var1347)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3093 var3093)
(declare-const null-Bool Bool)
(declare-const var1079 var1347) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder 
(assert (not (= var1079 null-var1347)))
(declare-const var1957 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1957 null-String)))
(declare-const var483 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var483 null-String)))
(declare-const var2210 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2210 null-Int)))
(declare-const var2524 var3093) ; Statement: r3 := @parameter4: java.util.Collection 
(assert (not (= var2524 null-var3093)))
(declare-const var921 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var921 null-Bool)))
(assert true)
(define-const var1004 Int (createState/1855799214 var1079)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>() 
(assert true)
(define-const var2152 Int (length/-134980193 var1957)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 != i1 goto (branch) 
(assert (not (not (= var2152 var2210)))) ; Negate: Cond: $i2 != i1  
(assert true)
;(assert (setAccept/-2124758645 var1079 var1004 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1) 

(declare-const var1079!1 var1347)
(declare-const var1004!1 Int)
(declare-const var2096 Int)
 ; Statement: goto [?= return i0] 
(assert true) ; Non Conditional
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {createState/1855799214=([org.apache.lucene.util.automaton.Automaton$Builder], int), length/-134980193=([java.lang.String], int), setAccept/-2124758645=([org.apache.lucene.util.automaton.Automaton$Builder, int, boolean], void)}
; {var1347=org.apache.lucene.util.automaton.Automaton$Builder, var1079=r0, var1957=r1, var2232=null_type, var483=r2, var2210=i1, var3093=java.util.Collection, var2524=r3, var921=z0, var1004=i0, var2152=$i2, var2096=1}
; {org.apache.lucene.util.automaton.Automaton$Builder=var1347, r0=var1079, r1=var1957, null_type=var2232, r2=var483, i1=var2210, java.util.Collection=var3093, r3=var2524, z0=var921, i0=var1004, $i2=var2152, 1=var2096}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	i1 := @parameter3: int;	r3 := @parameter4: java.util.Collection;	z0 := @parameter5: boolean;	i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 != i1 goto (branch);	virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1);	goto [?= return i0];	return i0
;block_num 3