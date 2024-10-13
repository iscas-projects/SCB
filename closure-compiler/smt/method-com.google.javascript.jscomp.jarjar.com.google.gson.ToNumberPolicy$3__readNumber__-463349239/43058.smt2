(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var866 0)
(declare-sort var1069 0)
(declare-sort var2991 0)
(declare-sort var2877 0)
(declare-sort var2479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextString/1446769909 (var1069) String)
(declare-fun var2877-init () var2877)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/493074543 (var1069) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1405813622 (var2877 String var2479) void)
(declare-fun cast-from-var2991-to-var2479 (var2991) var2479)
(declare-const null-var866 var866)
(declare-const null-var1069 var1069)
(declare-const null-var2991 var2991)
(declare-const var3741 var866) ; Statement: r21 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$3 
(assert (not (= var3741 null-var866)))
(declare-const var3966 var1069) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3966 null-var1069)))
(assert true)
(define-const var680 String (nextString/1446769909 var3966)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var127 var2991) ; Statement: $r12 := @caughtexception 
(assert (not (= var127 null-var2991)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1896 var2991) ; Statement: $r3 := @caughtexception 
(assert (not (= var1896 null-var2991)))
(define-const var1370 var2877 var2877-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException 
(define-const var2805 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2805)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2805!1 String)
(assert (= var2805!1 ""))
(assert true)
(define-const var2496 String (append/672562846 var2805!1 "Cannot parse ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ") 
(declare-const var2805!2 String)
(assert (= var2805!2 (str.++ var2805!1 "Cannot parse ")))
(assert true)
(define-const var3145 String (append/672562846 var2496 var680)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2496!1 String)
(assert (= var2496!1 (str.++ var2496 var680)))
(assert true)
(define-const var2389 String (append/672562846 var3145 "; at path ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ") 
(declare-const var3145!1 String)
(assert (= var3145!1 (str.++ var3145 "; at path ")))
(assert true)
(define-const var1378 String (getPreviousPath/493074543 var3966)) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var3424 String (append/672562846 var2389 var1378)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2389!1 String)
(assert (= var2389!1 (str.++ var2389 var1378)))
(assert true)
(define-const var3820 String (toString/-2075883882 var3424)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1405813622 var1370 var3820 (cast-from-var2991-to-var2479 var1896))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var1370!1 var2877)
(declare-const var3820!1 String)
(declare-const var1896!1 var2991)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextString/1446769909=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), var2877-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/493074543=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1405813622=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException, java.lang.String, java.lang.Throwable], void), cast-from-var2991-to-var2479=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var866=com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$3, var3741=r21, var1069=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3966=r0, var680=r1, var2991=java.lang.NumberFormatException, var127=$r12, var1896=$r3, var2877=com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException, var1370=$r4, var2805=$r5, var2496=$r6, var3145=$r7, var2389=$r9, var1378=$r8, var3424=$r10, var3820=$r11, var2479=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$3=var866, r21=var3741, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1069, r0=var3966, r1=var680, java.lang.NumberFormatException=var2991, $r12=var127, $r3=var1896, com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException=var2877, $r4=var1370, $r5=var2805, $r6=var2496, $r7=var3145, $r9=var2389, $r8=var1378, $r10=var3424, $r11=var3820, java.lang.Throwable=var2479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$3;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r12 := @caughtexception;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ");	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 3