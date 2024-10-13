(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3001 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun indent/1632885518 (var3001) String)
(declare-fun separator/1632885518 (var3001) String)
(declare-const null-var3001 var3001)
(declare-const null-String String)
(declare-const var3014 var3001) ; Statement: r1 := @this: com.google.gson.stream.JsonWriter 
(assert (not (= var3014 null-var3001)))
(declare-const var3567 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3567 null-String)))
(assert true)
(define-const var1485 Int (length/-134980193 var3567)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = r0 
(assert (not (= var1485 0))) ; Cond: $i0 != 0 
(declare-const var3014!1 var3001)
(assert (not (= var3014!1 null-var3001)))
(assert (= (indent/1632885518 var3014!1) var3567)) ; Statement: r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = r0 
(declare-const var3014!2 var3001)
(assert (not (= var3014!2 null-var3001)))
(assert (= (separator/1632885518 var3014!2) ": ")) ; Statement: r1.<com.google.gson.stream.JsonWriter: java.lang.String separator> = ": " 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indent/1632885518=([com.google.gson.stream.JsonWriter], java.lang.String), separator/1632885518=([com.google.gson.stream.JsonWriter], java.lang.String)}
; {var3001=com.google.gson.stream.JsonWriter, var3014=r1, var3567=r0, var3497=null_type, var1485=$i0}
; {com.google.gson.stream.JsonWriter=var3001, r1=var3014, r0=var3567, null_type=var3497, $i0=var1485}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.gson.stream.JsonWriter;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = r0;	r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = r0;	r1.<com.google.gson.stream.JsonWriter: java.lang.String separator> = ": ";	return
;block_num 3