(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1115 0)
(declare-sort var2044 0)
(declare-sort var1258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1258-init () var1258)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1258 String) void)
(declare-const null-var1115 var1115)
(declare-const null-var2044 var2044)
(declare-const null-ClassObject ClassObject)
(declare-const var2443 var1115) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$1 
(assert (not (= var2443 null-var1115)))
(declare-const var126 var2044) ; Statement: r9 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter 
(assert (not (= var126 null-var2044)))
(declare-const var3500 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3500 null-ClassObject)))
(define-const var862 var1258 var1258-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1262 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1262)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1262!1 String)
(assert (= var1262!1 ""))
(assert true)
(define-const var3502 String (append/672562846 var1262!1 "Attempted to serialize java.lang.Class: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempted to serialize java.lang.Class: ") 
(declare-const var1262!2 String)
(assert (= var1262!2 (str.++ var1262!1 "Attempted to serialize java.lang.Class: ")))
(assert true)
(define-const var1735 String (getName/-1958580599 var3500)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1651 String (append/672562846 var3502 var1735)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3502!1 String)
(assert (= var3502!1 (str.++ var3502 var1735)))
(assert true)
(define-const var1387 String (append/672562846 var1651 ". Forgot to register a type adapter?")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Forgot to register a type adapter?") 
(declare-const var1651!1 String)
(assert (= var1651!1 (str.++ var1651 ". Forgot to register a type adapter?")))
(assert true)
(define-const var592 String (toString/-2075883882 var1387)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var862 var592)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var862!1 var1258)
(declare-const var592!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1258-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1115=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$1, var2443=r8, var2044=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter, var126=r9, var3500=r2, var1258=java.lang.UnsupportedOperationException, var862=$r0, var1262=$r1, var3502=$r4, var1735=$r3, var1651=$r5, var1387=$r6, var592=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$1=var1115, r8=var2443, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter=var2044, r9=var126, r2=var3500, java.lang.UnsupportedOperationException=var1258, $r0=var862, $r1=var1262, $r4=var3502, $r3=var1735, $r5=var1651, $r6=var1387, $r7=var592}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$1;	r9 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonWriter;	r2 := @parameter1: java.lang.Class;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempted to serialize java.lang.Class: ");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Forgot to register a type adapter?");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1