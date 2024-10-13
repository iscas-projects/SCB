(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2701 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2701 null-String)))
(declare-const var3475 (Array Int Int)) ; Statement: r1 := @parameter1: long[] 
(assert (not (= var3475 null-__Array__Int__Int__)))
(assert true)
;(assert (append/-1166366385 var2701 91)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2701!1 String)
(assert (str.prefixof var2701 var2701!1))
(define-const var2874 Int (getLength-Arr-Int-1 var3475)) ; Statement: i0 = lengthof r1 
(define-const var1053 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var1053 var2874)) ; Cond: i3 >= i0 
(assert true)
;(assert (append/-1166366385 var2701!1 93)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2701!2 String)
(assert (str.prefixof var2701!1 var2701!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Int-1=([long[]], int)}
; {var2701=r0, var3475=r1, var2874=i0, var1053=i3}
; {r0=var2701, r1=var3475, i0=var2874, i3=var1053}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: long[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	i0 = lengthof r1;	i3 = 0;	if i3 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 3