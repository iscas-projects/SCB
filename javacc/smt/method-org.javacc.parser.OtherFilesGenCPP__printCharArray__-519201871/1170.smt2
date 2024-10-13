(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3909 0)
(declare-sort var1305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun print/-2007916749 (var3909 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3909 var3909)
(declare-const null-String String)
(declare-const var1956 var3909) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var1956 null-var3909)))
(declare-const var3135 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3135 null-String)))
(assert true)
;(assert (print/-2007916749 var1956 "{")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>("{") 

(declare-const var1956!1 var3909)
(declare-const var1437 String)
(define-const var2194 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1673 Int (length/-134980193 var3135)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>("0}") 
(assert (>= var2194 var1673)) ; Cond: i2 >= $i0 
(assert true)
;(assert (print/-2007916749 var1956!1 "0}")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>("0}") 

(declare-const var1956!2 var3909)
(declare-const var3704 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {print/-2007916749=([java.io.PrintWriter, java.lang.String], void), length/-134980193=([java.lang.String], int)}
; {var3909=java.io.PrintWriter, var1956=r0, var3135=r1, var1305=null_type, var1437="{", var2194=i2, var1673=$i0, var3704="0}"}
; {java.io.PrintWriter=var3909, r0=var1956, r1=var3135, null_type=var1305, "{"=var1437, i2=var2194, $i0=var1673, "0}"=var3704}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.io.PrintWriter;	r1 := @parameter1: java.lang.String;	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>("{");	i2 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= $i0 goto virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>("0}");	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>("0}");	return
;block_num 3