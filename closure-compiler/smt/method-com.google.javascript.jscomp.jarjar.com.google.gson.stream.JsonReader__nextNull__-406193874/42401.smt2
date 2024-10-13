(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1089 0)
(declare-sort var3197 0)
(declare-sort var2735 0)
(declare-sort var2796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var1089) Int)
(declare-fun var3197-init () var3197)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/134225960 (var1089) var2735)
(declare-fun append/-1031950772 (String var2796) String)
(declare-fun cast-from-var2735-to-var2796 (var2735) var2796)
(declare-fun locationString/391724147 (var1089) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3197 String) void)
(declare-const null-var1089 var1089)
(declare-const var3799 var1089) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3799 null-var1089)))
(define-const var296 Int (peeked/-1654894195 var3799)) ; Statement: i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i4 != 0 goto (branch) 
(assert (not (= var296 0))) ; Cond: i4 != 0 
 ; Statement: if i4 != 7 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var296 7))) ; Cond: i4 != 7 
(define-const var43 var3197 var3197-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var2215 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2215)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2215!1 String)
(assert (= var2215!1 ""))
(assert true)
(define-const var634 String (append/672562846 var2215!1 "Expected null but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected null but was ") 
(declare-const var2215!2 String)
(assert (= var2215!2 (str.++ var2215!1 "Expected null but was ")))
(assert true)
(define-const var1982 var2735 (peek/134225960 var3799)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var58 String (append/-1031950772 var634 (cast-from-var2735-to-var2796 var1982))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var634!1 String)
(assert (str.prefixof var634 var634!1))
(assert true)
(define-const var1269 String (locationString/391724147 var3799)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2504 String (append/672562846 var58 var1269)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var58!1 String)
(assert (= var58!1 (str.++ var58 var1269)))
(assert true)
(define-const var1106 String (toString/-2075883882 var2504)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var43 var1106)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var43!1 var3197)
(declare-const var1106!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), var3197-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2735-to-var2796=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1089=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3799=r0, var296=i4, var3197=java.lang.IllegalStateException, var43=$r1, var2215=$r2, var634=$r4, var2735=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var1982=$r3, var2796=java.lang.Object, var58=$r6, var1269=$r5, var2504=$r7, var1106=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1089, r0=var3799, i4=var296, java.lang.IllegalStateException=var3197, $r1=var43, $r2=var2215, $r4=var634, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var2735, $r3=var1982, java.lang.Object=var2796, $r6=var58, $r5=var1269, $r7=var2504, $r8=var1106}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i4 != 0 goto (branch);	if i4 != 7 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected null but was ");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3