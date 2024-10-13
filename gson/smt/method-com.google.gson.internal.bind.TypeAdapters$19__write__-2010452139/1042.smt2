(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var963 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun value/-601914565 (var1819 String) var1819)
(declare-const null-var963 var963)
(declare-const null-var1819 var1819)
(declare-const null-String String)
(declare-const var3273 var963) ; Statement: r2 := @this: com.google.gson.internal.bind.TypeAdapters$19 
(assert (not (= var3273 null-var963)))
(declare-const var2757 var1819) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonWriter 
(assert (not (= var2757 null-var1819)))
(declare-const var2543 String) ; Statement: r1 := @parameter1: java.lang.StringBuilder 
(assert (not (= var2543 null-String)))
 ; Statement: if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var2543 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3531 String (toString/-2075883882 var2543)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (value/-601914565 var2757 var3531)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonWriter: com.google.gson.stream.JsonWriter value(java.lang.String)>($r3) 

(declare-const var2757!1 var1819)
(declare-const var3531!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String), value/-601914565=([com.google.gson.stream.JsonWriter, java.lang.String], com.google.gson.stream.JsonWriter)}
; {var963=com.google.gson.internal.bind.TypeAdapters$19, var3273=r2, var1819=com.google.gson.stream.JsonWriter, var2757=r0, var2543=r1, var3531=$r3}
; {com.google.gson.internal.bind.TypeAdapters$19=var963, r2=var3273, com.google.gson.stream.JsonWriter=var1819, r0=var2757, r1=var2543, $r3=var3531}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.gson.internal.bind.TypeAdapters$19;	r0 := @parameter0: com.google.gson.stream.JsonWriter;	r1 := @parameter1: java.lang.StringBuilder;	if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.gson.stream.JsonWriter: com.google.gson.stream.JsonWriter value(java.lang.String)>($r3);	return
;block_num 3