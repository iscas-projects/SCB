(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3449 0)
(declare-sort var599 0)
(declare-sort var3942 0)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var3449) Int)
(declare-fun var599-init () var599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/134225960 (var3449) var3942)
(declare-fun append/-1031950772 (String var1109) String)
(declare-fun cast-from-var3942-to-var1109 (var3942) var1109)
(declare-fun locationString/391724147 (var3449) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var599 String) void)
(declare-const null-var3449 var3449)
(declare-const var3286 var3449) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3286 null-var3449)))
(define-const var3107 Int (peeked/-1654894195 var3286)) ; Statement: i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i2 != 0 goto (branch) 
(assert (not (= var3107 0))) ; Cond: i2 != 0 
 ; Statement: if i2 != 3 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var3107 3))) ; Cond: i2 != 3 
(define-const var1297 var599 var599-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var7 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var7)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var7!1 String)
(assert (= var7!1 ""))
(assert true)
(define-const var3875 String (append/672562846 var7!1 "Expected BEGIN_ARRAY but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_ARRAY but was ") 
(declare-const var7!2 String)
(assert (= var7!2 (str.++ var7!1 "Expected BEGIN_ARRAY but was ")))
(assert true)
(define-const var2284 var3942 (peek/134225960 var3286)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var933 String (append/-1031950772 var3875 (cast-from-var3942-to-var1109 var2284))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3875!1 String)
(assert (str.prefixof var3875 var3875!1))
(assert true)
(define-const var1902 String (locationString/391724147 var3286)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2938 String (append/672562846 var933 var1902)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var933!1 String)
(assert (= var933!1 (str.++ var933 var1902)))
(assert true)
(define-const var3229 String (toString/-2075883882 var2938)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1297 var3229)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1297!1 var599)
(declare-const var3229!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), var599-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3942-to-var1109=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3449=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3286=r0, var3107=i2, var599=java.lang.IllegalStateException, var1297=$r1, var7=$r2, var3875=$r4, var3942=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var2284=$r3, var1109=java.lang.Object, var933=$r6, var1902=$r5, var2938=$r7, var3229=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var3449, r0=var3286, i2=var3107, java.lang.IllegalStateException=var599, $r1=var1297, $r2=var7, $r4=var3875, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var3942, $r3=var2284, java.lang.Object=var1109, $r6=var933, $r5=var1902, $r7=var2938, $r8=var3229}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i2 != 0 goto (branch);	if i2 != 3 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_ARRAY but was ");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3