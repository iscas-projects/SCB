(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var70 0)
(declare-sort var3985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun indent/-1499488963 (var70) String)
(declare-fun separator/-1499488963 (var70) String)
(declare-const null-var70 var70)
(declare-const null-String String)
(declare-const var2836 var70) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var2836 null-var70)))
(declare-const var2076 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2076 null-String)))
(assert true)
(define-const var1458 Int (length/-134980193 var2076)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = r0 
(assert (not (not (= var1458 0)))) ; Negate: Cond: $i0 != 0  
(declare-const var2836!1 var70)
(assert (not (= var2836!1 null-var70)))
(assert (= (indent/-1499488963 var2836!1) null-String)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = null 
(declare-const var2836!2 var70)
(assert (not (= var2836!2 null-var70)))
(assert (= (separator/-1499488963 var2836!2) ":")) ; Statement: r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String separator> = ":" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indent/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.lang.String), separator/-1499488963=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter], java.lang.String)}
; {var70=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var2836=r1, var2076=r0, var3985=null_type, var1458=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var70, r1=var2836, r0=var2076, null_type=var3985, $i0=var1458}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = r0;	r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String indent> = null;	r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: java.lang.String separator> = ":";	goto [?= return];	return
;block_num 3