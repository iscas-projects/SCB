(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1902 0)
(declare-sort var2590 0)
(declare-sort var2208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/134225960 (var2590) var2208)
(declare-fun String-init () String)
(declare-fun nextString/1446769909 (var2590) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-const null-var1902 var1902)
(declare-const null-var2590 var2590)
(declare-const var2208-NULL var2208)
(declare-const var2910 var1902) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19 
(assert (not (= var2910 null-var1902)))
(declare-const var3420 var2590) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3420 null-var2590)))
(assert true)
(define-const var1523 var2208 (peek/134225960 var3420)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var920 var2208 var2208-NULL) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NULL> 
 ; Statement: if $r2 != $r1 goto $r3 = new java.lang.StringBuilder 
(assert (not (= var1523 var920))) ; Cond: $r2 != $r1 
(define-const var3332 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var2515 String (nextString/1446769909 var3420)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true)
;(assert (<init>/-1061048412 var3332 var2515)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var3332!1 String)
(assert (= var3332!1 var2515))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), String-init=([], java.lang.StringBuilder), nextString/1446769909=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void)}
; {var1902=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19, var2910=r5, var2590=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3420=r0, var2208=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var1523=$r2, var920=$r1, var3332=$r3, var2515=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19=var1902, r5=var2910, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2590, r0=var3420, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var2208, $r2=var1523, $r1=var920, $r3=var3332, $r4=var2515}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$19;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NULL>;	if $r2 != $r1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	return $r3
;block_num 2