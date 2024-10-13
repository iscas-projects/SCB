(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3109 0)
(declare-sort var571 0)
(declare-sort var956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var571) var956)
(declare-fun String-init () String)
(declare-fun nextString/1391460550 (var571) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-const null-var3109 var3109)
(declare-const null-var571 var571)
(declare-const var956-NULL var956)
(declare-const var3780 var3109) ; Statement: r5 := @this: com.google.gson.internal.bind.TypeAdapters$19 
(assert (not (= var3780 null-var3109)))
(declare-const var910 var571) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var910 null-var571)))
(assert true)
(define-const var3371 var956 (peek/-699404472 var910)) ; Statement: $r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var316 var956 var956-NULL) ; Statement: $r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if $r2 != $r1 goto $r3 = new java.lang.StringBuilder 
(assert (not (= var3371 var316))) ; Cond: $r2 != $r1 
(define-const var2424 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1159 String (nextString/1391460550 var910)) ; Statement: $r4 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true)
;(assert (<init>/-1061048412 var2424 var1159)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var2424!1 String)
(assert (= var2424!1 var1159))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), String-init=([], java.lang.StringBuilder), nextString/1391460550=([com.google.gson.stream.JsonReader], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void)}
; {var3109=com.google.gson.internal.bind.TypeAdapters$19, var3780=r5, var571=com.google.gson.stream.JsonReader, var910=r0, var956=com.google.gson.stream.JsonToken, var3371=$r2, var316=$r1, var2424=$r3, var1159=$r4}
; {com.google.gson.internal.bind.TypeAdapters$19=var3109, r5=var3780, com.google.gson.stream.JsonReader=var571, r0=var910, com.google.gson.stream.JsonToken=var956, $r2=var3371, $r1=var316, $r3=var2424, $r4=var1159}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r5 := @this: com.google.gson.internal.bind.TypeAdapters$19;	r0 := @parameter0: com.google.gson.stream.JsonReader;	$r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if $r2 != $r1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	return $r3
;block_num 2