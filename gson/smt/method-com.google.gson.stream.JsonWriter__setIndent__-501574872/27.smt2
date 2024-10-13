(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1547 0)
(declare-sort var1941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun indent/1632885518 (var1547) String)
(declare-fun separator/1632885518 (var1547) String)
(declare-const null-var1547 var1547)
(declare-const null-String String)
(declare-const var3916 var1547) ; Statement: r1 := @this: com.google.gson.stream.JsonWriter 
(assert (not (= var3916 null-var1547)))
(declare-const var1250 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1250 null-String)))
(assert true)
(define-const var866 Int (length/-134980193 var1250)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = r0 
(assert (not (not (= var866 0)))) ; Negate: Cond: $i0 != 0  
(declare-const var3916!1 var1547)
(assert (not (= var3916!1 null-var1547)))
(assert (= (indent/1632885518 var3916!1) null-String)) ; Statement: r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = null 
(declare-const var3916!2 var1547)
(assert (not (= var3916!2 null-var1547)))
(assert (= (separator/1632885518 var3916!2) ":")) ; Statement: r1.<com.google.gson.stream.JsonWriter: java.lang.String separator> = ":" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indent/1632885518=([com.google.gson.stream.JsonWriter], java.lang.String), separator/1632885518=([com.google.gson.stream.JsonWriter], java.lang.String)}
; {var1547=com.google.gson.stream.JsonWriter, var3916=r1, var1250=r0, var1941=null_type, var866=$i0}
; {com.google.gson.stream.JsonWriter=var1547, r1=var3916, r0=var1250, null_type=var1941, $i0=var866}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.gson.stream.JsonWriter;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = r0;	r1.<com.google.gson.stream.JsonWriter: java.lang.String indent> = null;	r1.<com.google.gson.stream.JsonWriter: java.lang.String separator> = ":";	goto [?= return];	return
;block_num 3