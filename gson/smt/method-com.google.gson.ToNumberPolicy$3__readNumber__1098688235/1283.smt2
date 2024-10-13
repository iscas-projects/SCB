(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var214 0)
(declare-sort var2490 0)
(declare-sort var2833 0)
(declare-sort var547 0)
(declare-sort var2361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextString/1391460550 (var2490) String)
(declare-fun var547-init () var547)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/455305022 (var2490) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1580649403 (var547 String var2361) void)
(declare-fun cast-from-var2833-to-var2361 (var2833) var2361)
(declare-const null-var214 var214)
(declare-const null-var2490 var2490)
(declare-const null-var2833 var2833)
(declare-const var910 var214) ; Statement: r21 := @this: com.google.gson.ToNumberPolicy$3 
(assert (not (= var910 null-var214)))
(declare-const var2809 var2490) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var2809 null-var2490)))
(assert true)
(define-const var305 String (nextString/1391460550 var2809)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2377 var2833) ; Statement: $r12 := @caughtexception 
(assert (not (= var2377 null-var2833)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var280 var2833) ; Statement: $r3 := @caughtexception 
(assert (not (= var280 null-var2833)))
(define-const var3231 var547 var547-init) ; Statement: $r4 = new com.google.gson.JsonParseException 
(define-const var1217 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1217)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1217!1 String)
(assert (= var1217!1 ""))
(assert true)
(define-const var3915 String (append/672562846 var1217!1 "Cannot parse ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ") 
(declare-const var1217!2 String)
(assert (= var1217!2 (str.++ var1217!1 "Cannot parse ")))
(assert true)
(define-const var664 String (append/672562846 var3915 var305)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3915!1 String)
(assert (= var3915!1 (str.++ var3915 var305)))
(assert true)
(define-const var634 String (append/672562846 var664 "; at path ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ") 
(declare-const var664!1 String)
(assert (= var664!1 (str.++ var664 "; at path ")))
(assert true)
(define-const var1563 String (getPreviousPath/455305022 var2809)) ; Statement: $r8 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var3546 String (append/672562846 var634 var1563)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var634!1 String)
(assert (= var634!1 (str.++ var634 var1563)))
(assert true)
(define-const var3368 String (toString/-2075883882 var3546)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1580649403 var3231 var3368 (cast-from-var2833-to-var2361 var280))) ; Statement: specialinvoke $r4.<com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var3231!1 var547)
(declare-const var3368!1 String)
(declare-const var280!1 var2833)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextString/1391460550=([com.google.gson.stream.JsonReader], java.lang.String), var547-init=([], com.google.gson.JsonParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/455305022=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1580649403=([com.google.gson.JsonParseException, java.lang.String, java.lang.Throwable], void), cast-from-var2833-to-var2361=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var214=com.google.gson.ToNumberPolicy$3, var910=r21, var2490=com.google.gson.stream.JsonReader, var2809=r0, var305=r1, var2833=java.lang.NumberFormatException, var2377=$r12, var280=$r3, var547=com.google.gson.JsonParseException, var3231=$r4, var1217=$r5, var3915=$r6, var664=$r7, var634=$r9, var1563=$r8, var3546=$r10, var3368=$r11, var2361=java.lang.Throwable}
; {com.google.gson.ToNumberPolicy$3=var214, r21=var910, com.google.gson.stream.JsonReader=var2490, r0=var2809, r1=var305, java.lang.NumberFormatException=var2833, $r12=var2377, $r3=var280, com.google.gson.JsonParseException=var547, $r4=var3231, $r5=var1217, $r6=var3915, $r7=var664, $r9=var634, $r8=var1563, $r10=var3546, $r11=var3368, java.lang.Throwable=var2361}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: com.google.gson.ToNumberPolicy$3;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r12 := @caughtexception;	$r3 := @caughtexception;	$r4 = new com.google.gson.JsonParseException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ");	$r8 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 3