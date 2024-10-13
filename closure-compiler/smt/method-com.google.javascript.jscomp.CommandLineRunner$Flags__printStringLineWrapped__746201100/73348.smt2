(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1048 0)
(declare-sort var2419 0)
(declare-sort var3253 0)
(declare-sort var1451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun maxLineLength/-367409355 (var1048) Int)
(declare-fun write/654681022 (var1451 String) void)
(declare-fun cast-from-var3253-to-var1451 (var3253) var1451)
(declare-const null-var1048 var1048)
(declare-const null-String String)
(declare-const null-var3253 var3253)
(declare-const var3279 var1048) ; Statement: r1 := @this: com.google.javascript.jscomp.CommandLineRunner$Flags 
(assert (not (= var3279 null-var1048)))
(declare-const var2145 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2145 null-String)))
(declare-const var3742 var3253) ; Statement: r5 := @parameter1: java.io.OutputStreamWriter 
(assert (not (= var3742 null-var3253)))
(assert true)
(define-const var109 Int (length/-134980193 var2145)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var748 Int (maxLineLength/-367409355 var3279)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.CommandLineRunner$Flags: int maxLineLength> 
 ; Statement: if $i1 >= $i0 goto i3 = r1.<com.google.javascript.jscomp.CommandLineRunner$Flags: int maxLineLength> 
(assert (not (>= var109 var748))) ; Negate: Cond: $i1 >= $i0  
(assert true)
;(assert (write/654681022 (cast-from-var3253-to-var1451 var3742) var2145)) ; Statement: virtualinvoke r5.<java.io.OutputStreamWriter: void write(java.lang.String)>(r0) 

(declare-const var3742!1 var3253)
(declare-const var2145!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), maxLineLength/-367409355=([com.google.javascript.jscomp.CommandLineRunner$Flags], int), write/654681022=([java.io.Writer, java.lang.String], void), cast-from-var3253-to-var1451=([java.io.OutputStreamWriter], java.io.Writer)}
; {var1048=com.google.javascript.jscomp.CommandLineRunner$Flags, var3279=r1, var2145=r0, var2419=null_type, var3253=java.io.OutputStreamWriter, var3742=r5, var109=$i1, var748=$i0, var1451=java.io.Writer}
; {com.google.javascript.jscomp.CommandLineRunner$Flags=var1048, r1=var3279, r0=var2145, null_type=var2419, java.io.OutputStreamWriter=var3253, r5=var3742, $i1=var109, $i0=var748, java.io.Writer=var1451}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CommandLineRunner$Flags;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.io.OutputStreamWriter;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = r1.<com.google.javascript.jscomp.CommandLineRunner$Flags: int maxLineLength>;	if $i1 >= $i0 goto i3 = r1.<com.google.javascript.jscomp.CommandLineRunner$Flags: int maxLineLength>;	virtualinvoke r5.<java.io.OutputStreamWriter: void write(java.lang.String)>(r0);	return
;block_num 2