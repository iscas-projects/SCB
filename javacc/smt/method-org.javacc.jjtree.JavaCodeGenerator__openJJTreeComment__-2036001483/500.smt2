(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1504 0)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun print/-1652180213 (var1504 String) void)
(declare-const null-var1504 var1504)
(declare-const null-String String)
(declare-const var3503 var1504) ; Statement: r1 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var3503 null-var1504)))
(declare-const var1249 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1249 null-String)))
 ; Statement: if r0 == null goto virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@bgen(jjtree)*/") 
(assert (= var1249 null-String)) ; Cond: r0 == null 
(assert true)
;(assert (print/-1652180213 var3503 "/*@bgen(jjtree)*/")) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@bgen(jjtree)*/") 

(declare-const var3503!1 var1504)
(declare-const var1860 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var1504=org.javacc.jjtree.IO, var3503=r1, var1249=r0, var1853=null_type, var1860="/*@bgen(jjtree)*/"}
; {org.javacc.jjtree.IO=var1504, r1=var3503, r0=var1249, null_type=var1853, "/*@bgen(jjtree)*/"=var1860}
;seq 
;cnt {}
;stmts r1 := @parameter0: org.javacc.jjtree.IO;	r0 := @parameter1: java.lang.String;	if r0 == null goto virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@bgen(jjtree)*/");	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@bgen(jjtree)*/");	return
;block_num 3