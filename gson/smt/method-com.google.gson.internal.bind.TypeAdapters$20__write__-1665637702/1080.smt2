(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun value/-601914565 (var427 String) var427)
(declare-const null-var3416 var3416)
(declare-const null-var427 var427)
(declare-const null-String String)
(declare-const var3841 var3416) ; Statement: r2 := @this: com.google.gson.internal.bind.TypeAdapters$20 
(assert (not (= var3841 null-var3416)))
(declare-const var3318 var427) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonWriter 
(assert (not (= var3318 null-var427)))
(declare-const var3605 String) ; Statement: r1 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3605 null-String)))
 ; Statement: if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (not (= var3605 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2789 String (toString/-222306083 var3605)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (value/-601914565 var3318 var2789)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonWriter: com.google.gson.stream.JsonWriter value(java.lang.String)>($r3) 

(declare-const var3318!1 var427)
(declare-const var2789!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-222306083=([java.lang.StringBuffer], java.lang.String), value/-601914565=([com.google.gson.stream.JsonWriter, java.lang.String], com.google.gson.stream.JsonWriter)}
; {var3416=com.google.gson.internal.bind.TypeAdapters$20, var3841=r2, var427=com.google.gson.stream.JsonWriter, var3318=r0, var3605=r1, var2789=$r3}
; {com.google.gson.internal.bind.TypeAdapters$20=var3416, r2=var3841, com.google.gson.stream.JsonWriter=var427, r0=var3318, r1=var3605, $r3=var2789}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.gson.internal.bind.TypeAdapters$20;	r0 := @parameter0: com.google.gson.stream.JsonWriter;	r1 := @parameter1: java.lang.StringBuffer;	if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<com.google.gson.stream.JsonWriter: com.google.gson.stream.JsonWriter value(java.lang.String)>($r3);	return
;block_num 3