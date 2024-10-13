(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var2833 0)
(declare-sort var2991 0)
(declare-sort var128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var1969) var2833)
(declare-fun var2991-init () var2991)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var128) String)
(declare-fun cast-from-var2833-to-var128 (var2833) var128)
(declare-fun locationString/-286819006 (var1969) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2991 String) void)
(declare-const null-var1969 var1969)
(declare-const var2833-NUMBER var2833)
(declare-const var2833-STRING var2833)
(declare-const var1138 var1969) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var1138 null-var1969)))
(assert true)
(define-const var1491 var2833 (peek/-1841308090 var1138)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var3750 var2833 var2833-NUMBER) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var1491 var3750))) ; Negate: Cond: r1 == $r2  
(define-const var662 var2833 var2833-STRING) ; Statement: $r11 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r11 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var1491 var662))) ; Negate: Cond: r1 == $r11  
(define-const var3180 var2991 var2991-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var3506 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3506)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3506!1 String)
(assert (= var3506!1 ""))
(assert true)
(define-const var731 String (append/672562846 var3506!1 "Expected ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var3506!2 String)
(assert (= var3506!2 (str.++ var3506!1 "Expected ")))
(define-const var2577 var2833 var2833-NUMBER) ; Statement: $r14 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
(assert true)
(define-const var3324 String (append/-1031950772 var731 (cast-from-var2833-to-var128 var2577))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var731!1 String)
(assert (str.prefixof var731 var731!1))
(assert true)
(define-const var1977 String (append/672562846 var3324 " but was ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var3324!1 String)
(assert (= var3324!1 (str.++ var3324 " but was ")))
(assert true)
(define-const var3135 String (append/-1031950772 var1977 (cast-from-var2833-to-var128 var1491))) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1977!1 String)
(assert (str.prefixof var1977 var1977!1))
(assert true)
(define-const var3484 String (locationString/-286819006 var1138)) ; Statement: $r18 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var3897 String (append/672562846 var3135 var3484)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3135!1 String)
(assert (= var3135!1 (str.++ var3135 var3484)))
(assert true)
(define-const var433 String (toString/-2075883882 var3897)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3180 var433)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21) 

(declare-const var3180!1 var2991)
(declare-const var433!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), var2991-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2833-to-var128=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/-286819006=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1969=com.google.gson.internal.bind.JsonTreeReader, var1138=r0, var2833=com.google.gson.stream.JsonToken, var1491=r1, var3750=$r2, var662=$r11, var2991=java.lang.IllegalStateException, var3180=$r12, var3506=$r13, var731=$r15, var2577=$r14, var128=java.lang.Object, var3324=$r16, var1977=$r17, var3135=$r19, var3484=$r18, var3897=$r20, var433=$r21}
; {com.google.gson.internal.bind.JsonTreeReader=var1969, r0=var1138, com.google.gson.stream.JsonToken=var2833, r1=var1491, $r2=var3750, $r11=var662, java.lang.IllegalStateException=var2991, $r12=var3180, $r13=var3506, $r15=var731, $r14=var2577, java.lang.Object=var128, $r16=var3324, $r17=var1977, $r19=var3135, $r18=var3484, $r20=var3897, $r21=var433}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r11 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING>;	if r1 == $r11 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r14 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r18 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21);	throw $r12
;block_num 3