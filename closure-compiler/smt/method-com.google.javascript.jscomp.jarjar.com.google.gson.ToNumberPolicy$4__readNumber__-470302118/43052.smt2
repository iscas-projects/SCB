(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3916 0)
(declare-sort var167 0)
(declare-sort var3912 0)
(declare-sort var987 0)
(declare-sort var2922 0)
(declare-sort var370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextString/1446769909 (var167) String)
(declare-fun var3912-init () var3912)
(declare-fun var2922-init () var2922)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/493074543 (var167) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1405813622 (var2922 String var370) void)
(declare-fun cast-from-var987-to-var370 (var987) var370)
(declare-const null-var3916 var3916)
(declare-const null-var167 var167)
(declare-const null-var987 var987)
(declare-const var781 var3916) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$4 
(assert (not (= var781 null-var3916)))
(declare-const var1106 var167) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var1106 null-var167)))
(assert true)
(define-const var2321 String (nextString/1446769909 var1106)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(define-const var2930 var3912 var3912-init) ; Statement: $r2 = new java.math.BigDecimal 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var988 var987) ; Statement: $r3 := @caughtexception 
(assert (not (= var988 null-var987)))
(define-const var1518 var2922 var2922-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException 
(define-const var3354 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3354)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3354!1 String)
(assert (= var3354!1 ""))
(assert true)
(define-const var2686 String (append/672562846 var3354!1 "Cannot parse ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ") 
(declare-const var3354!2 String)
(assert (= var3354!2 (str.++ var3354!1 "Cannot parse ")))
(assert true)
(define-const var2265 String (append/672562846 var2686 var2321)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2686!1 String)
(assert (= var2686!1 (str.++ var2686 var2321)))
(assert true)
(define-const var3830 String (append/672562846 var2265 "; at path ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ") 
(declare-const var2265!1 String)
(assert (= var2265!1 (str.++ var2265 "; at path ")))
(assert true)
(define-const var3338 String (getPreviousPath/493074543 var1106)) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var1225 String (append/672562846 var3830 var3338)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3830!1 String)
(assert (= var3830!1 (str.++ var3830 var3338)))
(assert true)
(define-const var2305 String (toString/-2075883882 var1225)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1405813622 var1518 var2305 (cast-from-var987-to-var370 var988))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var1518!1 var2922)
(declare-const var2305!1 String)
(declare-const var988!1 var987)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextString/1446769909=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), var3912-init=([], java.math.BigDecimal), var2922-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/493074543=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1405813622=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException, java.lang.String, java.lang.Throwable], void), cast-from-var987-to-var370=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var3916=com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$4, var781=r12, var167=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var1106=r0, var2321=r1, var3912=java.math.BigDecimal, var2930=$r2, var987=java.lang.NumberFormatException, var988=$r3, var2922=com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException, var1518=$r4, var3354=$r5, var2686=$r6, var2265=$r7, var3830=$r9, var3338=$r8, var1225=$r10, var2305=$r11, var370=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$4=var3916, r12=var781, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var167, r0=var1106, r1=var2321, java.math.BigDecimal=var3912, $r2=var2930, java.lang.NumberFormatException=var987, $r3=var988, com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException=var2922, $r4=var1518, $r5=var3354, $r6=var2686, $r7=var2265, $r9=var3830, $r8=var3338, $r10=var1225, $r11=var2305, java.lang.Throwable=var370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberPolicy$4;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r2 = new java.math.BigDecimal;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot parse ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ");	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonParseException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 2