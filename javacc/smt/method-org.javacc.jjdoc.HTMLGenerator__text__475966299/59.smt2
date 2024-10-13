(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var1925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun print/-855496625 (var2382 String) void)
(declare-const null-var2382 var2382)
(declare-const null-String String)
(declare-const var1572 var2382) ; Statement: r1 := @this: org.javacc.jjdoc.HTMLGenerator 
(assert (not (= var1572 null-var2382)))
(declare-const var1209 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1209 null-String)))
(define-const var3263 String "") ; Statement: r14 = "" 
(define-const var3473 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var554 Int (length/-134980193 var1209)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto virtualinvoke r1.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>(r14) 
(assert (>= var3473 var554)) ; Cond: i5 >= $i0 
(assert true)
;(assert (print/-855496625 var1572 var3263)) ; Statement: virtualinvoke r1.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>(r14) 

(declare-const var1572!1 var2382)
(declare-const var3263!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), print/-855496625=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void)}
; {var2382=org.javacc.jjdoc.HTMLGenerator, var1572=r1, var1209=r0, var1925=null_type, var3263=r14, var3473=i5, var554=$i0}
; {org.javacc.jjdoc.HTMLGenerator=var2382, r1=var1572, r0=var1209, null_type=var1925, r14=var3263, i5=var3473, $i0=var554}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.javacc.jjdoc.HTMLGenerator;	r0 := @parameter0: java.lang.String;	r14 = "";	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto virtualinvoke r1.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>(r14);	virtualinvoke r1.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>(r14);	return
;block_num 3