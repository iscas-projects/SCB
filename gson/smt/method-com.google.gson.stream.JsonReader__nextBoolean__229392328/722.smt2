(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort var2706 0)
(declare-sort var130 0)
(declare-sort var1474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var1204) Int)
(declare-fun var2706-init () var2706)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/-699404472 (var1204) var130)
(declare-fun append/-1031950772 (String var1474) String)
(declare-fun cast-from-var130-to-var1474 (var130) var1474)
(declare-fun locationString/1083242436 (var1204) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2706 String) void)
(declare-const null-var1204 var1204)
(declare-const var3535 var1204) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var3535 null-var1204)))
(define-const var1989 Int (peeked/1477480286 var3535)) ; Statement: i8 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i8 != 0 goto (branch) 
(assert (not (= var1989 0))) ; Cond: i8 != 0 
 ; Statement: if i8 != 5 goto (branch) 
(assert (not (= var1989 5))) ; Cond: i8 != 5 
 ; Statement: if i8 != 6 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var1989 6))) ; Cond: i8 != 6 
(define-const var348 var2706 var2706-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var641 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var641)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var641!1 String)
(assert (= var641!1 ""))
(assert true)
(define-const var2618 String (append/672562846 var641!1 "Expected a boolean but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected a boolean but was ") 
(declare-const var641!2 String)
(assert (= var641!2 (str.++ var641!1 "Expected a boolean but was ")))
(assert true)
(define-const var2088 var130 (peek/-699404472 var3535)) ; Statement: $r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var3101 String (append/-1031950772 var2618 (cast-from-var130-to-var1474 var2088))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2618!1 String)
(assert (str.prefixof var2618 var2618!1))
(assert true)
(define-const var2051 String (locationString/1083242436 var3535)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var3525 String (append/672562846 var3101 var2051)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 var2051)))
(assert true)
(define-const var3319 String (toString/-2075883882 var3525)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var348 var3319)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var348!1 var2706)
(declare-const var3319!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), var2706-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var130-to-var1474=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1204=com.google.gson.stream.JsonReader, var3535=r0, var1989=i8, var2706=java.lang.IllegalStateException, var348=$r1, var641=$r2, var2618=$r4, var130=com.google.gson.stream.JsonToken, var2088=$r3, var1474=java.lang.Object, var3101=$r6, var2051=$r5, var3525=$r7, var3319=$r8}
; {com.google.gson.stream.JsonReader=var1204, r0=var3535, i8=var1989, java.lang.IllegalStateException=var2706, $r1=var348, $r2=var641, $r4=var2618, com.google.gson.stream.JsonToken=var130, $r3=var2088, java.lang.Object=var1474, $r6=var3101, $r5=var2051, $r7=var3525, $r8=var3319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i8 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i8 != 0 goto (branch);	if i8 != 5 goto (branch);	if i8 != 6 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected a boolean but was ");	$r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 4