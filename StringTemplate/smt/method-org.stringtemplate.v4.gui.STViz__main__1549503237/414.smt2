(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var423_test1/596285156 () void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var756 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var756 null-__Array__Int__String__)))
(define-const var921 Int (getLength-Arr-String-1 var756)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $i1 = lengthof r0 
(assert (not (<= var921 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1831 String (select var756 0)) ; Statement: $r4 = r0[0] 
(assert true)
(define-const var1056 Bool (= var1831 "1")) ; Statement: $z3 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("1") 
 ; Statement: if $z3 == 0 goto $i1 = lengthof r0 
(assert (not (= (ite var1056 1 0) 0))) ; Negate: Cond: $z3 == 0  
;(assert var423_test1/596285156) ; Statement: staticinvoke <org.stringtemplate.v4.gui.STViz: void test1()>() 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var423_test1/596285156=([], void)}
; {var756=r0, var921=$i0, var1831=$r4, var1056=$z3, var423=org.stringtemplate.v4.gui.STViz}
; {r0=var756, $i0=var921, $r4=var1831, $z3=var1056, org.stringtemplate.v4.gui.STViz=var423}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 <= 0 goto $i1 = lengthof r0;	$r4 = r0[0];	$z3 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("1");	if $z3 == 0 goto $i1 = lengthof r0;	staticinvoke <org.stringtemplate.v4.gui.STViz: void test1()>();	goto [?= return];	return
;block_num 4