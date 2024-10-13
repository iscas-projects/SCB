(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort var575 0)
(declare-sort var3383 0)
(declare-sort var3155 0)
(declare-sort var346 0)
(declare-sort var3739 0)
(declare-sort var2028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var575) var3383)
(declare-fun nextString/1391460550 (var575) String)
(declare-fun var3155-init () var3155)
(declare-fun var3739-init () var3739)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/455305022 (var575) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1368500855 (var3739 String var2028) void)
(declare-fun cast-from-var346-to-var2028 (var346) var2028)
(declare-const null-var425 var425)
(declare-const null-var575 var575)
(declare-const var3383-NULL var3383)
(declare-const null-var346 var346)
(declare-const var2133 var425) ; Statement: r14 := @this: com.google.gson.internal.bind.TypeAdapters$16 
(assert (not (= var2133 null-var425)))
(declare-const var2377 var575) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var2377 null-var575)))
(assert true)
(define-const var1049 var3383 (peek/-699404472 var2377)) ; Statement: $r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var1797 var3383 var3383-NULL) ; Statement: $r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if $r2 != $r1 goto r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert (not (= var1049 var1797))) ; Cond: $r2 != $r1 
(assert true)
(define-const var2566 String (nextString/1391460550 var2377)) ; Statement: r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(define-const var1841 var3155 var3155-init) ; Statement: $r4 = new java.math.BigDecimal 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2024 var346) ; Statement: $r5 := @caughtexception 
(assert (not (= var2024 null-var346)))
(define-const var3092 var3739 var3739-init) ; Statement: $r6 = new com.google.gson.JsonSyntaxException 
(define-const var2159 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2159)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2159!1 String)
(assert (= var2159!1 ""))
(assert true)
(define-const var1624 String (append/672562846 var2159!1 "Failed parsing \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed parsing \'") 
(declare-const var2159!2 String)
(assert (= var2159!2 (str.++ var2159!1 "Failed parsing \u0027")))
(assert true)
(define-const var3275 String (append/672562846 var1624 var2566)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 var2566)))
(assert true)
(define-const var2037 String (append/672562846 var3275 "\u0027 as BigDecimal; at path ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as BigDecimal; at path ") 
(declare-const var3275!1 String)
(assert (= var3275!1 (str.++ var3275 "\u0027 as BigDecimal; at path ")))
(assert true)
(define-const var2378 String (getPreviousPath/455305022 var2377)) ; Statement: $r10 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var977 String (append/672562846 var2037 var2378)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2037!1 String)
(assert (= var2037!1 (str.++ var2037 var2378)))
(assert true)
(define-const var999 String (toString/-2075883882 var977)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1368500855 var3092 var999 (cast-from-var346-to-var2028 var2024))) ; Statement: specialinvoke $r6.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r5) 

(declare-const var3092!1 var3739)
(declare-const var999!1 String)
(declare-const var2024!1 var346)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), nextString/1391460550=([com.google.gson.stream.JsonReader], java.lang.String), var3155-init=([], java.math.BigDecimal), var3739-init=([], com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/455305022=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1368500855=([com.google.gson.JsonSyntaxException, java.lang.String, java.lang.Throwable], void), cast-from-var346-to-var2028=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var425=com.google.gson.internal.bind.TypeAdapters$16, var2133=r14, var575=com.google.gson.stream.JsonReader, var2377=r0, var3383=com.google.gson.stream.JsonToken, var1049=$r2, var1797=$r1, var2566=r3, var3155=java.math.BigDecimal, var1841=$r4, var346=java.lang.NumberFormatException, var2024=$r5, var3739=com.google.gson.JsonSyntaxException, var3092=$r6, var2159=$r7, var1624=$r8, var3275=$r9, var2037=$r11, var2378=$r10, var977=$r12, var999=$r13, var2028=java.lang.Throwable}
; {com.google.gson.internal.bind.TypeAdapters$16=var425, r14=var2133, com.google.gson.stream.JsonReader=var575, r0=var2377, com.google.gson.stream.JsonToken=var3383, $r2=var1049, $r1=var1797, r3=var2566, java.math.BigDecimal=var3155, $r4=var1841, java.lang.NumberFormatException=var346, $r5=var2024, com.google.gson.JsonSyntaxException=var3739, $r6=var3092, $r7=var2159, $r8=var1624, $r9=var3275, $r11=var2037, $r10=var2378, $r12=var977, $r13=var999, java.lang.Throwable=var2028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: com.google.gson.internal.bind.TypeAdapters$16;	r0 := @parameter0: com.google.gson.stream.JsonReader;	$r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if $r2 != $r1 goto r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r4 = new java.math.BigDecimal;	$r5 := @caughtexception;	$r6 = new com.google.gson.JsonSyntaxException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed parsing \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as BigDecimal; at path ");	$r10 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r5);	throw $r6
;block_num 3