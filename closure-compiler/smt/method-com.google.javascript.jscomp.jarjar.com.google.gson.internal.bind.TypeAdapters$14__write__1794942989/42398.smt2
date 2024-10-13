(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2438 0)
(declare-sort var2111 0)
(declare-sort var557 0)
(declare-sort var2878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2878) String)
(declare-fun cast-from-var557-to-var2878 (var557) var2878)
(declare-fun value/-687528933 (var2111 String) var2111)
(declare-const null-var2438 var2438)
(declare-const null-var2111 var2111)
(declare-const null-var557 var557)
(declare-const var1920 var2438) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$14 
(assert (not (= var1920 null-var2438)))
(declare-const var419 var2111) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var419 null-var2111)))
(declare-const var1835 var557) ; Statement: r1 := @parameter1: java.lang.Character 
(assert (not (= var1835 null-var557)))
 ; Statement: if r1 != null goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert (not (= var1835 null-var557))) ; Cond: r1 != null 
(define-const var3448 String (String_valueOf/-333372740 (cast-from-var557-to-var2878 var1835))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true) ; Non Conditional
(assert true)
;(assert (value/-687528933 var419 var3448)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter value(java.lang.String)>($r3) 

(declare-const var419!1 var2111)
(declare-const var3448!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var557-to-var2878=([java.lang.Character], java.lang.Object), value/-687528933=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter)}
; {var2438=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$14, var1920=r2, var2111=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var419=r0, var557=java.lang.Character, var1835=r1, var2878=java.lang.Object, var3448=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$14=var2438, r2=var1920, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var2111, r0=var419, java.lang.Character=var557, r1=var1835, java.lang.Object=var2878, $r3=var3448}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$14;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r1 := @parameter1: java.lang.Character;	if r1 != null goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter value(java.lang.String)>($r3);	return
;block_num 3