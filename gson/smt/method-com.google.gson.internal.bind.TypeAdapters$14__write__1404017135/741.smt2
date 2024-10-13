(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var218 0)
(declare-sort var759 0)
(declare-sort var2860 0)
(declare-sort var3940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3940) String)
(declare-fun cast-from-var2860-to-var3940 (var2860) var3940)
(declare-fun value/-601914565 (var759 String) var759)
(declare-const null-var218 var218)
(declare-const null-var759 var759)
(declare-const null-var2860 var2860)
(declare-const var1344 var218) ; Statement: r2 := @this: com.google.gson.internal.bind.TypeAdapters$14 
(assert (not (= var1344 null-var218)))
(declare-const var3749 var759) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonWriter 
(assert (not (= var3749 null-var759)))
(declare-const var96 var2860) ; Statement: r1 := @parameter1: java.lang.Character 
(assert (not (= var96 null-var2860)))
 ; Statement: if r1 != null goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert (not (= var96 null-var2860))) ; Cond: r1 != null 
(define-const var2956 String (String_valueOf/-333372740 (cast-from-var2860-to-var3940 var96))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true) ; Non Conditional
(assert true)
;(assert (value/-601914565 var3749 var2956)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonWriter: com.google.gson.stream.JsonWriter value(java.lang.String)>($r3) 

(declare-const var3749!1 var759)
(declare-const var2956!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var2860-to-var3940=([java.lang.Character], java.lang.Object), value/-601914565=([com.google.gson.stream.JsonWriter, java.lang.String], com.google.gson.stream.JsonWriter)}
; {var218=com.google.gson.internal.bind.TypeAdapters$14, var1344=r2, var759=com.google.gson.stream.JsonWriter, var3749=r0, var2860=java.lang.Character, var96=r1, var3940=java.lang.Object, var2956=$r3}
; {com.google.gson.internal.bind.TypeAdapters$14=var218, r2=var1344, com.google.gson.stream.JsonWriter=var759, r0=var3749, java.lang.Character=var2860, r1=var96, java.lang.Object=var3940, $r3=var2956}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.gson.internal.bind.TypeAdapters$14;	r0 := @parameter0: com.google.gson.stream.JsonWriter;	r1 := @parameter1: java.lang.Character;	if r1 != null goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<com.google.gson.stream.JsonWriter: com.google.gson.stream.JsonWriter value(java.lang.String)>($r3);	return
;block_num 3