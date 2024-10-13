(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3088 0)
(declare-sort var3898 0)
(declare-sort var2020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createState/1855799214 (var3088) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setAccept/-2124758645 (var3088 Int Bool) void)
(declare-const null-var3088 var3088)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2020 var2020)
(declare-const null-Bool Bool)
(declare-const var1788 var3088) ; Statement: r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder 
(assert (not (= var1788 null-var3088)))
(declare-const var2191 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2191 null-String)))
(declare-const var3507 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3507 null-Int)))
(declare-const var1539 var2020) ; Statement: r2 := @parameter3: java.util.Collection 
(assert (not (= var1539 null-var2020)))
(declare-const var1038 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1038 null-Bool)))
(assert true)
(define-const var3396 Int (createState/1855799214 var1788)) ; Statement: i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>() 
(assert true)
(define-const var2426 Int (length/-134980193 var2191)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 != i1 goto (branch) 
(assert (not (not (= var2426 var3507)))) ; Negate: Cond: $i2 != i1  
(assert true)
;(assert (setAccept/-2124758645 var1788 var3396 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1) 

(declare-const var1788!1 var3088)
(declare-const var3396!1 Int)
(declare-const var2434 Int)
 ; Statement: goto [?= return i0] 
(assert true) ; Non Conditional
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {createState/1855799214=([org.apache.lucene.util.automaton.Automaton$Builder], int), length/-134980193=([java.lang.String], int), setAccept/-2124758645=([org.apache.lucene.util.automaton.Automaton$Builder, int, boolean], void)}
; {var3088=org.apache.lucene.util.automaton.Automaton$Builder, var1788=r0, var2191=r1, var3898=null_type, var3507=i1, var2020=java.util.Collection, var1539=r2, var1038=z0, var3396=i0, var2426=$i2, var2434=1}
; {org.apache.lucene.util.automaton.Automaton$Builder=var3088, r0=var1788, r1=var2191, null_type=var3898, i1=var3507, java.util.Collection=var2020, r2=var1539, z0=var1038, i0=var3396, $i2=var2426, 1=var2434}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: org.apache.lucene.util.automaton.Automaton$Builder;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	r2 := @parameter3: java.util.Collection;	z0 := @parameter4: boolean;	i0 = virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: int createState()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 != i1 goto (branch);	virtualinvoke r0.<org.apache.lucene.util.automaton.Automaton$Builder: void setAccept(int,boolean)>(i0, 1);	goto [?= return i0];	return i0
;block_num 3