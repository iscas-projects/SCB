(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var556 0)
(declare-sort var3393 0)
(declare-sort var729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var3057) Int)
(declare-fun var556-init () var556)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/-699404472 (var3057) var3393)
(declare-fun append/-1031950772 (String var729) String)
(declare-fun cast-from-var3393-to-var729 (var3393) var729)
(declare-fun locationString/1083242436 (var3057) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var556 String) void)
(declare-const null-var3057 var3057)
(declare-const var670 var3057) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var670 null-var3057)))
(define-const var3405 Int (peeked/1477480286 var670)) ; Statement: i2 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i2 != 0 goto (branch) 
(assert (not (= var3405 0))) ; Cond: i2 != 0 
 ; Statement: if i2 != 3 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var3405 3))) ; Cond: i2 != 3 
(define-const var969 var556 var556-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var1908 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1908)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1908!1 String)
(assert (= var1908!1 ""))
(assert true)
(define-const var2354 String (append/672562846 var1908!1 "Expected BEGIN_ARRAY but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_ARRAY but was ") 
(declare-const var1908!2 String)
(assert (= var1908!2 (str.++ var1908!1 "Expected BEGIN_ARRAY but was ")))
(assert true)
(define-const var1034 var3393 (peek/-699404472 var670)) ; Statement: $r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var1965 String (append/-1031950772 var2354 (cast-from-var3393-to-var729 var1034))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2354!1 String)
(assert (str.prefixof var2354 var2354!1))
(assert true)
(define-const var2105 String (locationString/1083242436 var670)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var3310 String (append/672562846 var1965 var2105)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1965!1 String)
(assert (= var1965!1 (str.++ var1965 var2105)))
(assert true)
(define-const var1949 String (toString/-2075883882 var3310)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var969 var1949)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var969!1 var556)
(declare-const var1949!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), var556-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3393-to-var729=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3057=com.google.gson.stream.JsonReader, var670=r0, var3405=i2, var556=java.lang.IllegalStateException, var969=$r1, var1908=$r2, var2354=$r4, var3393=com.google.gson.stream.JsonToken, var1034=$r3, var729=java.lang.Object, var1965=$r6, var2105=$r5, var3310=$r7, var1949=$r8}
; {com.google.gson.stream.JsonReader=var3057, r0=var670, i2=var3405, java.lang.IllegalStateException=var556, $r1=var969, $r2=var1908, $r4=var2354, com.google.gson.stream.JsonToken=var3393, $r3=var1034, java.lang.Object=var729, $r6=var1965, $r5=var2105, $r7=var3310, $r8=var1949}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i2 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i2 != 0 goto (branch);	if i2 != 3 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_ARRAY but was ");	$r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3