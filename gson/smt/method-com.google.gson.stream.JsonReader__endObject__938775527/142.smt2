(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1167 0)
(declare-sort var1004 0)
(declare-sort var3232 0)
(declare-sort var2452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var1167) Int)
(declare-fun var1004-init () var1004)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/-699404472 (var1167) var3232)
(declare-fun append/-1031950772 (String var2452) String)
(declare-fun cast-from-var3232-to-var2452 (var3232) var2452)
(declare-fun locationString/1083242436 (var1167) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1004 String) void)
(declare-const null-var1167 var1167)
(declare-const var2727 var1167) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2727 null-var1167)))
(define-const var436 Int (peeked/1477480286 var2727)) ; Statement: i7 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i7 != 0 goto (branch) 
(assert (not (= var436 0))) ; Cond: i7 != 0 
 ; Statement: if i7 != 2 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var436 2))) ; Cond: i7 != 2 
(define-const var782 var1004 var1004-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var3314 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3314)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3314!1 String)
(assert (= var3314!1 ""))
(assert true)
(define-const var1572 String (append/672562846 var3314!1 "Expected END_OBJECT but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_OBJECT but was ") 
(declare-const var3314!2 String)
(assert (= var3314!2 (str.++ var3314!1 "Expected END_OBJECT but was ")))
(assert true)
(define-const var2216 var3232 (peek/-699404472 var2727)) ; Statement: $r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var2146 String (append/-1031950772 var1572 (cast-from-var3232-to-var2452 var2216))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1572!1 String)
(assert (str.prefixof var1572 var1572!1))
(assert true)
(define-const var2976 String (locationString/1083242436 var2727)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2356 String (append/672562846 var2146 var2976)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2146!1 String)
(assert (= var2146!1 (str.++ var2146 var2976)))
(assert true)
(define-const var3523 String (toString/-2075883882 var2356)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var782 var3523)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var782!1 var1004)
(declare-const var3523!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), var1004-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3232-to-var2452=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1167=com.google.gson.stream.JsonReader, var2727=r0, var436=i7, var1004=java.lang.IllegalStateException, var782=$r1, var3314=$r2, var1572=$r4, var3232=com.google.gson.stream.JsonToken, var2216=$r3, var2452=java.lang.Object, var2146=$r6, var2976=$r5, var2356=$r7, var3523=$r8}
; {com.google.gson.stream.JsonReader=var1167, r0=var2727, i7=var436, java.lang.IllegalStateException=var1004, $r1=var782, $r2=var3314, $r4=var1572, com.google.gson.stream.JsonToken=var3232, $r3=var2216, java.lang.Object=var2452, $r6=var2146, $r5=var2976, $r7=var2356, $r8=var3523}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i7 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i7 != 0 goto (branch);	if i7 != 2 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_OBJECT but was ");	$r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3