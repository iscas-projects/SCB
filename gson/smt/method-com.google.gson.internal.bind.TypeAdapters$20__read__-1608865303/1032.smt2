(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var605 0)
(declare-sort var3945 0)
(declare-sort var2470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var3945) var2470)
(declare-fun String-init () String)
(declare-fun nextString/1391460550 (var3945) String)
(declare-fun <init>/2110755883 (String String) void)
(declare-const null-var605 var605)
(declare-const null-var3945 var3945)
(declare-const var2470-NULL var2470)
(declare-const var1532 var605) ; Statement: r5 := @this: com.google.gson.internal.bind.TypeAdapters$20 
(assert (not (= var1532 null-var605)))
(declare-const var1213 var3945) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var1213 null-var3945)))
(assert true)
(define-const var2477 var2470 (peek/-699404472 var1213)) ; Statement: $r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var3670 var2470 var2470-NULL) ; Statement: $r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if $r2 != $r1 goto $r3 = new java.lang.StringBuffer 
(assert (not (= var2477 var3670))) ; Cond: $r2 != $r1 
(define-const var991 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
(define-const var2905 String (nextString/1391460550 var1213)) ; Statement: $r4 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true)
;(assert (<init>/2110755883 var991 var2905)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>(java.lang.String)>($r4) 

(declare-const var991!1 String)
(declare-const var2905!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), String-init=([], java.lang.StringBuffer), nextString/1391460550=([com.google.gson.stream.JsonReader], java.lang.String), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void)}
; {var605=com.google.gson.internal.bind.TypeAdapters$20, var1532=r5, var3945=com.google.gson.stream.JsonReader, var1213=r0, var2470=com.google.gson.stream.JsonToken, var2477=$r2, var3670=$r1, var991=$r3, var2905=$r4}
; {com.google.gson.internal.bind.TypeAdapters$20=var605, r5=var1532, com.google.gson.stream.JsonReader=var3945, r0=var1213, com.google.gson.stream.JsonToken=var2470, $r2=var2477, $r1=var3670, $r3=var991, $r4=var2905}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1}
;stmts r5 := @this: com.google.gson.internal.bind.TypeAdapters$20;	r0 := @parameter0: com.google.gson.stream.JsonReader;	$r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if $r2 != $r1 goto $r3 = new java.lang.StringBuffer;	$r3 = new java.lang.StringBuffer;	$r4 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	specialinvoke $r3.<java.lang.StringBuffer: void <init>(java.lang.String)>($r4);	return $r3
;block_num 2