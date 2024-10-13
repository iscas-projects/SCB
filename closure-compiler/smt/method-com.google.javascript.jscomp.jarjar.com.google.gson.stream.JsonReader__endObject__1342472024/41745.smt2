(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2777 0)
(declare-sort var3162 0)
(declare-sort var3179 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var2777) Int)
(declare-fun var3162-init () var3162)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/134225960 (var2777) var3179)
(declare-fun append/-1031950772 (String var3141) String)
(declare-fun cast-from-var3179-to-var3141 (var3179) var3141)
(declare-fun locationString/391724147 (var2777) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3162 String) void)
(declare-const null-var2777 var2777)
(declare-const var73 var2777) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var73 null-var2777)))
(define-const var1564 Int (peeked/-1654894195 var73)) ; Statement: i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i7 != 0 goto (branch) 
(assert (not (= var1564 0))) ; Cond: i7 != 0 
 ; Statement: if i7 != 2 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var1564 2))) ; Cond: i7 != 2 
(define-const var210 var3162 var3162-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var2145 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2145)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2145!1 String)
(assert (= var2145!1 ""))
(assert true)
(define-const var1983 String (append/672562846 var2145!1 "Expected END_OBJECT but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_OBJECT but was ") 
(declare-const var2145!2 String)
(assert (= var2145!2 (str.++ var2145!1 "Expected END_OBJECT but was ")))
(assert true)
(define-const var2829 var3179 (peek/134225960 var73)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var3678 String (append/-1031950772 var1983 (cast-from-var3179-to-var3141 var2829))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1983!1 String)
(assert (str.prefixof var1983 var1983!1))
(assert true)
(define-const var3824 String (locationString/391724147 var73)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var130 String (append/672562846 var3678 var3824)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3678!1 String)
(assert (= var3678!1 (str.++ var3678 var3824)))
(assert true)
(define-const var868 String (toString/-2075883882 var130)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var210 var868)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var210!1 var3162)
(declare-const var868!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), var3162-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3179-to-var3141=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2777=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var73=r0, var1564=i7, var3162=java.lang.IllegalStateException, var210=$r1, var2145=$r2, var1983=$r4, var3179=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var2829=$r3, var3141=java.lang.Object, var3678=$r6, var3824=$r5, var130=$r7, var868=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2777, r0=var73, i7=var1564, java.lang.IllegalStateException=var3162, $r1=var210, $r2=var2145, $r4=var1983, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var3179, $r3=var2829, java.lang.Object=var3141, $r6=var3678, $r5=var3824, $r7=var130, $r8=var868}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i7 != 0 goto (branch);	if i7 != 2 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_OBJECT but was ");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3