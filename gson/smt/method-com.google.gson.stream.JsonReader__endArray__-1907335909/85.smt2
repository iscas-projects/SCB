(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var2523 0)
(declare-sort var3582 0)
(declare-sort var1065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var120) Int)
(declare-fun var2523-init () var2523)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/-699404472 (var120) var3582)
(declare-fun append/-1031950772 (String var1065) String)
(declare-fun cast-from-var3582-to-var1065 (var3582) var1065)
(declare-fun locationString/1083242436 (var120) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2523 String) void)
(declare-const null-var120 var120)
(declare-const var3139 var120) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var3139 null-var120)))
(define-const var848 Int (peeked/1477480286 var3139)) ; Statement: i6 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i6 != 0 goto (branch) 
(assert (not (= var848 0))) ; Cond: i6 != 0 
 ; Statement: if i6 != 4 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var848 4))) ; Cond: i6 != 4 
(define-const var690 var2523 var2523-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var1944 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1944)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1944!1 String)
(assert (= var1944!1 ""))
(assert true)
(define-const var3550 String (append/672562846 var1944!1 "Expected END_ARRAY but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_ARRAY but was ") 
(declare-const var1944!2 String)
(assert (= var1944!2 (str.++ var1944!1 "Expected END_ARRAY but was ")))
(assert true)
(define-const var3790 var3582 (peek/-699404472 var3139)) ; Statement: $r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var1919 String (append/-1031950772 var3550 (cast-from-var3582-to-var1065 var3790))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3550!1 String)
(assert (str.prefixof var3550 var3550!1))
(assert true)
(define-const var2948 String (locationString/1083242436 var3139)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2122 String (append/672562846 var1919 var2948)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 var2948)))
(assert true)
(define-const var1098 String (toString/-2075883882 var2122)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var690 var1098)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var690!1 var2523)
(declare-const var1098!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), var2523-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3582-to-var1065=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var120=com.google.gson.stream.JsonReader, var3139=r0, var848=i6, var2523=java.lang.IllegalStateException, var690=$r1, var1944=$r2, var3550=$r4, var3582=com.google.gson.stream.JsonToken, var3790=$r3, var1065=java.lang.Object, var1919=$r6, var2948=$r5, var2122=$r7, var1098=$r8}
; {com.google.gson.stream.JsonReader=var120, r0=var3139, i6=var848, java.lang.IllegalStateException=var2523, $r1=var690, $r2=var1944, $r4=var3550, com.google.gson.stream.JsonToken=var3582, $r3=var3790, java.lang.Object=var1065, $r6=var1919, $r5=var2948, $r7=var2122, $r8=var1098}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i6 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i6 != 0 goto (branch);	if i6 != 4 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_ARRAY but was ");	$r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3