(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1120 0)
(declare-sort var2603 0)
(declare-sort var990 0)
(declare-sort var945 0)
(declare-sort var1759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextString/1446769909 (var2603) String)
(declare-fun var945-init () var945)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPreviousPath/493074543 (var2603) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-540425882 (var945 String var1759) void)
(declare-fun cast-from-var990-to-var1759 (var990) var1759)
(declare-const null-var1120 var1120)
(declare-const null-var2603 var2603)
(declare-const null-var990 var990)
(declare-const var1783 var1120) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$25 
(assert (not (= var1783 null-var1120)))
(declare-const var2435 var2603) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2435 null-var2603)))
(assert true)
(define-const var219 String (nextString/1446769909 var2435)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1414 var990) ; Statement: $r3 := @caughtexception 
(assert (not (= var1414 null-var990)))
(define-const var638 var945 var945-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException 
(define-const var2580 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2580)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2580!1 String)
(assert (= var2580!1 ""))
(assert true)
(define-const var3687 String (append/672562846 var2580!1 "Failed parsing \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed parsing \'") 
(declare-const var2580!2 String)
(assert (= var2580!2 (str.++ var2580!1 "Failed parsing \u0027")))
(assert true)
(define-const var1988 String (append/672562846 var3687 var219)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3687!1 String)
(assert (= var3687!1 (str.++ var3687 var219)))
(assert true)
(define-const var2190 String (append/672562846 var1988 "\u0027 as Currency; at path ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as Currency; at path ") 
(declare-const var1988!1 String)
(assert (= var1988!1 (str.++ var1988 "\u0027 as Currency; at path ")))
(assert true)
(define-const var1868 String (getPreviousPath/493074543 var2435)) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var3320 String (append/672562846 var2190 var1868)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2190!1 String)
(assert (= var2190!1 (str.++ var2190 var1868)))
(assert true)
(define-const var1310 String (toString/-2075883882 var3320)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-540425882 var638 var1310 (cast-from-var990-to-var1759 var1414))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var638!1 var945)
(declare-const var1310!1 String)
(declare-const var1414!1 var990)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextString/1446769909=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), var945-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPreviousPath/493074543=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-540425882=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException, java.lang.String, java.lang.Throwable], void), cast-from-var990-to-var1759=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1120=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$25, var1783=r12, var2603=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2435=r0, var219=r1, var990=java.lang.IllegalArgumentException, var1414=$r3, var945=com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException, var638=$r4, var2580=$r5, var3687=$r6, var1988=$r7, var2190=$r9, var1868=$r8, var3320=$r10, var1310=$r11, var1759=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$25=var1120, r12=var1783, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2603, r0=var2435, r1=var219, java.lang.IllegalArgumentException=var990, $r3=var1414, com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException=var945, $r4=var638, $r5=var2580, $r6=var3687, $r7=var1988, $r9=var2190, $r8=var1868, $r10=var3320, $r11=var1310, java.lang.Throwable=var1759}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$25;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed parsing \'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as Currency; at path ");	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 2