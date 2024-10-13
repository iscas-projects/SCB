(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1925 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun value/-687528933 (var1876 String) var1876)
(declare-const null-var1925 var1925)
(declare-const null-var1876 var1876)
(declare-const null-String String)
(declare-const var401 var1925) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20 
(assert (not (= var401 null-var1925)))
(declare-const var3661 var1876) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var3661 null-var1876)))
(declare-const var337 String) ; Statement: r1 := @parameter1: java.lang.StringBuffer 
(assert (not (= var337 null-String)))
 ; Statement: if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (not (= var337 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2333 String (toString/-222306083 var337)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (value/-687528933 var3661 var2333)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter value(java.lang.String)>($r3) 

(declare-const var3661!1 var1876)
(declare-const var2333!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-222306083=([java.lang.StringBuffer], java.lang.String), value/-687528933=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter)}
; {var1925=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20, var401=r2, var1876=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var3661=r0, var337=r1, var2333=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20=var1925, r2=var401, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var1876, r0=var3661, r1=var337, $r3=var2333}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r1 := @parameter1: java.lang.StringBuffer;	if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter value(java.lang.String)>($r3);	return
;block_num 3