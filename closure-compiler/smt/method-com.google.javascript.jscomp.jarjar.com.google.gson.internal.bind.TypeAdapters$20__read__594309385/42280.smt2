(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3611 0)
(declare-sort var639 0)
(declare-sort var1588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/134225960 (var639) var1588)
(declare-fun String-init () String)
(declare-fun nextString/1446769909 (var639) String)
(declare-fun <init>/2110755883 (String String) void)
(declare-const null-var3611 var3611)
(declare-const null-var639 var639)
(declare-const var1588-NULL var1588)
(declare-const var99 var3611) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20 
(assert (not (= var99 null-var3611)))
(declare-const var3471 var639) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3471 null-var639)))
(assert true)
(define-const var2956 var1588 (peek/134225960 var3471)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var2945 var1588 var1588-NULL) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NULL> 
 ; Statement: if $r2 != $r1 goto $r3 = new java.lang.StringBuffer 
(assert (not (= var2956 var2945))) ; Cond: $r2 != $r1 
(define-const var3687 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
(define-const var2513 String (nextString/1446769909 var3471)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true)
;(assert (<init>/2110755883 var3687 var2513)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>(java.lang.String)>($r4) 

(declare-const var3687!1 String)
(declare-const var2513!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), String-init=([], java.lang.StringBuffer), nextString/1446769909=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void)}
; {var3611=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20, var99=r5, var639=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3471=r0, var1588=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var2956=$r2, var2945=$r1, var3687=$r3, var2513=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20=var3611, r5=var99, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var639, r0=var3471, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1588, $r2=var2956, $r1=var2945, $r3=var3687, $r4=var2513}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$20;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NULL>;	if $r2 != $r1 goto $r3 = new java.lang.StringBuffer;	$r3 = new java.lang.StringBuffer;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();	specialinvoke $r3.<java.lang.StringBuffer: void <init>(java.lang.String)>($r4);	return $r3
;block_num 2