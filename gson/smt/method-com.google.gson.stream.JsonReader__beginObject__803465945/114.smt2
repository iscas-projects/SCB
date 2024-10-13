(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1070 0)
(declare-sort var3797 0)
(declare-sort var917 0)
(declare-sort var1017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var1070) Int)
(declare-fun var3797-init () var3797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/-699404472 (var1070) var917)
(declare-fun append/-1031950772 (String var1017) String)
(declare-fun cast-from-var917-to-var1017 (var917) var1017)
(declare-fun locationString/1083242436 (var1070) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3797 String) void)
(declare-const null-var1070 var1070)
(declare-const var578 var1070) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var578 null-var1070)))
(define-const var20 Int (peeked/1477480286 var578)) ; Statement: i0 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (= var20 0))) ; Cond: i0 != 0 
 ; Statement: if i0 != 1 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var20 1))) ; Cond: i0 != 1 
(define-const var1813 var3797 var3797-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var2697 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2697)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2697!1 String)
(assert (= var2697!1 ""))
(assert true)
(define-const var1612 String (append/672562846 var2697!1 "Expected BEGIN_OBJECT but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_OBJECT but was ") 
(declare-const var2697!2 String)
(assert (= var2697!2 (str.++ var2697!1 "Expected BEGIN_OBJECT but was ")))
(assert true)
(define-const var2649 var917 (peek/-699404472 var578)) ; Statement: $r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var2299 String (append/-1031950772 var1612 (cast-from-var917-to-var1017 var2649))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1612!1 String)
(assert (str.prefixof var1612 var1612!1))
(assert true)
(define-const var209 String (locationString/1083242436 var578)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var1742 String (append/672562846 var2299 var209)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2299!1 String)
(assert (= var2299!1 (str.++ var2299 var209)))
(assert true)
(define-const var1109 String (toString/-2075883882 var1742)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1813 var1109)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1813!1 var3797)
(declare-const var1109!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), var3797-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var917-to-var1017=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1070=com.google.gson.stream.JsonReader, var578=r0, var20=i0, var3797=java.lang.IllegalStateException, var1813=$r1, var2697=$r2, var1612=$r4, var917=com.google.gson.stream.JsonToken, var2649=$r3, var1017=java.lang.Object, var2299=$r6, var209=$r5, var1742=$r7, var1109=$r8}
; {com.google.gson.stream.JsonReader=var1070, r0=var578, i0=var20, java.lang.IllegalStateException=var3797, $r1=var1813, $r2=var2697, $r4=var1612, com.google.gson.stream.JsonToken=var917, $r3=var2649, java.lang.Object=var1017, $r6=var2299, $r5=var209, $r7=var1742, $r8=var1109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i0 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i0 != 0 goto (branch);	if i0 != 1 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_OBJECT but was ");	$r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3