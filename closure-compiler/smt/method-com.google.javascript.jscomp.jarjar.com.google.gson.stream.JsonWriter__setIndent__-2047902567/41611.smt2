(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var19 0)
(declare-sort var3126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun indent/-1499488963 (var19) String)
(declare-fun separator/-1499488963 (var19) String)
(declare-const null-var19 var19)
(declare-const null-String String)
(declare-const var2627 var19) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var2627 null-var19)))
(declare-const var796 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var796 null-String)))
(assert true)
(define-const var764 Int (length/-134980193 var796)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = r0 
(assert (not (= var764 0))) ; Cond: $i0 != 0 
(declare-const var2627!1 var19)
(assert (not (= var2627!1 null-var19)))
(assert (= (indent/-1499488963 var2627!1) var796)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = r0 
(declare-const var2627!2 var19)
(assert (not (= var2627!2 null-var19)))
(assert (= (separator/-1499488963 var2627!2) ": ")) ; Statement: r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String separator> = ": " 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indent/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.lang.String), separator/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.lang.String)}
; {var19=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var2627=r1, var796=r0, var3126=null_type, var764=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var19, r1=var2627, r0=var796, null_type=var3126, $i0=var764}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = r0;	r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = r0;	r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String separator> = ": ";	return
;block_num 3