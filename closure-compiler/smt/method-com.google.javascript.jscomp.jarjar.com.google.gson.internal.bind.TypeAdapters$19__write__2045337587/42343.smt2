(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var711 0)
(declare-sort var2652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun value/-687528933 (var2652 String) var2652)
(declare-const null-var711 var711)
(declare-const null-var2652 var2652)
(declare-const null-String String)
(declare-const var3637 var711) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19 
(assert (not (= var3637 null-var711)))
(declare-const var115 var2652) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var115 null-var2652)))
(declare-const var3032 String) ; Statement: r1 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3032 null-String)))
 ; Statement: if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var3032 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2517 String (toString/-2075883882 var3032)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (value/-687528933 var115 var2517)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter value(java.lang.String)>($r3) 

(declare-const var115!1 var2652)
(declare-const var2517!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String), value/-687528933=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter)}
; {var711=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19, var3637=r2, var2652=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var115=r0, var3032=r1, var2517=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19=var711, r2=var3637, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var2652, r0=var115, r1=var3032, $r3=var2517}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r1 := @parameter1: java.lang.StringBuilder;	if r1 != null goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter value(java.lang.String)>($r3);	return
;block_num 3