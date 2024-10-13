(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var822 0)
(declare-sort var256 0)
(declare-sort var3077 0)
(declare-sort var3879 0)
(declare-sort var564 0)
(declare-sort var2399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextString/1391460550 (var256) String)
(declare-fun var3077-init () var3077)
(declare-fun var564-init () var564)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/455305022 (var256) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1580649403 (var564 String var2399) void)
(declare-fun cast-from-var3879-to-var2399 (var3879) var2399)
(declare-const null-var822 var822)
(declare-const null-var256 var256)
(declare-const null-var3879 var3879)
(declare-const var3769 var822) ; Statement: r12 := @this: com.google.gson.ToNumberPolicy$4 
(assert (not (= var3769 null-var822)))
(declare-const var752 var256) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var752 null-var256)))
(assert true)
(define-const var291 String (nextString/1391460550 var752)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(define-const var1726 var3077 var3077-init) ; Statement: $r2 = new java.math.BigDecimal 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3370 var3879) ; Statement: $r3 := @caughtexception 
(assert (not (= var3370 null-var3879)))
(define-const var2512 var564 var564-init) ; Statement: $r4 = new com.google.gson.JsonParseException 
(define-const var3169 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3169)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3169!1 String)
(assert (= var3169!1 ""))
(assert true)
(define-const var2114 String (append/672562846 var3169!1 "Cannot parse ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ") 
(declare-const var3169!2 String)
(assert (= var3169!2 (str.++ var3169!1 "Cannot parse ")))
(assert true)
(define-const var3719 String (append/672562846 var2114 var291)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2114!1 String)
(assert (= var2114!1 (str.++ var2114 var291)))
(assert true)
(define-const var3456 String (append/672562846 var3719 "; at path ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ") 
(declare-const var3719!1 String)
(assert (= var3719!1 (str.++ var3719 "; at path ")))
(assert true)
(define-const var3527 String (getPreviousPath/455305022 var752)) ; Statement: $r8 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var1687 String (append/672562846 var3456 var3527)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3456!1 String)
(assert (= var3456!1 (str.++ var3456 var3527)))
(assert true)
(define-const var2982 String (toString/-2075883882 var1687)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1580649403 var2512 var2982 (cast-from-var3879-to-var2399 var3370))) ; Statement: specialinvoke $r4.<com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var2512!1 var564)
(declare-const var2982!1 String)
(declare-const var3370!1 var3879)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextString/1391460550=([com.google.gson.stream.JsonReader], java.lang.String), var3077-init=([], java.math.BigDecimal), var564-init=([], com.google.gson.JsonParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/455305022=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1580649403=([com.google.gson.JsonParseException, java.lang.String, java.lang.Throwable], void), cast-from-var3879-to-var2399=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var822=com.google.gson.ToNumberPolicy$4, var3769=r12, var256=com.google.gson.stream.JsonReader, var752=r0, var291=r1, var3077=java.math.BigDecimal, var1726=$r2, var3879=java.lang.NumberFormatException, var3370=$r3, var564=com.google.gson.JsonParseException, var2512=$r4, var3169=$r5, var2114=$r6, var3719=$r7, var3456=$r9, var3527=$r8, var1687=$r10, var2982=$r11, var2399=java.lang.Throwable}
; {com.google.gson.ToNumberPolicy$4=var822, r12=var3769, com.google.gson.stream.JsonReader=var256, r0=var752, r1=var291, java.math.BigDecimal=var3077, $r2=var1726, java.lang.NumberFormatException=var3879, $r3=var3370, com.google.gson.JsonParseException=var564, $r4=var2512, $r5=var3169, $r6=var2114, $r7=var3719, $r9=var3456, $r8=var3527, $r10=var1687, $r11=var2982, java.lang.Throwable=var2399}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.google.gson.ToNumberPolicy$4;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r2 = new java.math.BigDecimal;	$r3 := @caughtexception;	$r4 = new com.google.gson.JsonParseException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ");	$r8 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 2