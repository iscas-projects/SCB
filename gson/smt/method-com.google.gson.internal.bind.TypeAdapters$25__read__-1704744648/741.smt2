(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2887 0)
(declare-sort var2148 0)
(declare-sort var1390 0)
(declare-sort var2543 0)
(declare-sort var3406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextString/1391460550 (var2148) String)
(declare-fun var2543-init () var2543)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/455305022 (var2148) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1368500855 (var2543 String var3406) void)
(declare-fun cast-from-var1390-to-var3406 (var1390) var3406)
(declare-const null-var2887 var2887)
(declare-const null-var2148 var2148)
(declare-const null-var1390 var1390)
(declare-const var2712 var2887) ; Statement: r12 := @this: com.google.gson.internal.bind.TypeAdapters$25 
(assert (not (= var2712 null-var2887)))
(declare-const var2281 var2148) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var2281 null-var2148)))
(assert true)
(define-const var1112 String (nextString/1391460550 var2281)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2448 var1390) ; Statement: $r3 := @caughtexception 
(assert (not (= var2448 null-var1390)))
(define-const var2378 var2543 var2543-init) ; Statement: $r4 = new com.google.gson.JsonSyntaxException 
(define-const var1578 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1578)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1578!1 String)
(assert (= var1578!1 ""))
(assert true)
(define-const var2176 String (append/672562846 var1578!1 "Failed parsing \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed parsing \'") 
(declare-const var1578!2 String)
(assert (= var1578!2 (str.++ var1578!1 "Failed parsing \u0027")))
(assert true)
(define-const var3844 String (append/672562846 var2176 var1112)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2176!1 String)
(assert (= var2176!1 (str.++ var2176 var1112)))
(assert true)
(define-const var2421 String (append/672562846 var3844 "\u0027 as Currency; at path ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as Currency; at path ") 
(declare-const var3844!1 String)
(assert (= var3844!1 (str.++ var3844 "\u0027 as Currency; at path ")))
(assert true)
(define-const var273 String (getPreviousPath/455305022 var2281)) ; Statement: $r8 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var485 String (append/672562846 var2421 var273)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2421!1 String)
(assert (= var2421!1 (str.++ var2421 var273)))
(assert true)
(define-const var271 String (toString/-2075883882 var485)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1368500855 var2378 var271 (cast-from-var1390-to-var3406 var2448))) ; Statement: specialinvoke $r4.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var2378!1 var2543)
(declare-const var271!1 String)
(declare-const var2448!1 var1390)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextString/1391460550=([com.google.gson.stream.JsonReader], java.lang.String), var2543-init=([], com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/455305022=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1368500855=([com.google.gson.JsonSyntaxException, java.lang.String, java.lang.Throwable], void), cast-from-var1390-to-var3406=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var2887=com.google.gson.internal.bind.TypeAdapters$25, var2712=r12, var2148=com.google.gson.stream.JsonReader, var2281=r0, var1112=r1, var1390=java.lang.IllegalArgumentException, var2448=$r3, var2543=com.google.gson.JsonSyntaxException, var2378=$r4, var1578=$r5, var2176=$r6, var3844=$r7, var2421=$r9, var273=$r8, var485=$r10, var271=$r11, var3406=java.lang.Throwable}
; {com.google.gson.internal.bind.TypeAdapters$25=var2887, r12=var2712, com.google.gson.stream.JsonReader=var2148, r0=var2281, r1=var1112, java.lang.IllegalArgumentException=var1390, $r3=var2448, com.google.gson.JsonSyntaxException=var2543, $r4=var2378, $r5=var1578, $r6=var2176, $r7=var3844, $r9=var2421, $r8=var273, $r10=var485, $r11=var271, java.lang.Throwable=var3406}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.google.gson.internal.bind.TypeAdapters$25;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r3 := @caughtexception;	$r4 = new com.google.gson.JsonSyntaxException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed parsing \'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as Currency; at path ");	$r8 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 2