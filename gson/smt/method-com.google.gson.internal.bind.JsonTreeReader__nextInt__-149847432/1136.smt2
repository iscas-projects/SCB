(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3238 0)
(declare-sort var1882 0)
(declare-sort var1818 0)
(declare-sort var1597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var3238) var1882)
(declare-fun var1818-init () var1818)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1597) String)
(declare-fun cast-from-var1882-to-var1597 (var1882) var1597)
(declare-fun locationString/-286819006 (var3238) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1818 String) void)
(declare-const null-var3238 var3238)
(declare-const var1882-NUMBER var1882)
(declare-const var1882-STRING var1882)
(declare-const var306 var3238) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var306 null-var3238)))
(assert true)
(define-const var1580 var1882 (peek/-1841308090 var306)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var3903 var1882 var1882-NUMBER) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var1580 var3903))) ; Negate: Cond: r1 == $r2  
(define-const var3456 var1882 var1882-STRING) ; Statement: $r6 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (not (= var1580 var3456))) ; Negate: Cond: r1 == $r6  
(define-const var2249 var1818 var1818-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(define-const var1674 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1674)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1674!1 String)
(assert (= var1674!1 ""))
(assert true)
(define-const var1118 String (append/672562846 var1674!1 "Expected ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var1674!2 String)
(assert (= var1674!2 (str.++ var1674!1 "Expected ")))
(define-const var2623 var1882 var1882-NUMBER) ; Statement: $r9 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
(assert true)
(define-const var1145 String (append/-1031950772 var1118 (cast-from-var1882-to-var1597 var2623))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var1118!1 String)
(assert (str.prefixof var1118 var1118!1))
(assert true)
(define-const var3003 String (append/672562846 var1145 " but was ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var1145!1 String)
(assert (= var1145!1 (str.++ var1145 " but was ")))
(assert true)
(define-const var663 String (append/-1031950772 var3003 (cast-from-var1882-to-var1597 var1580))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3003!1 String)
(assert (str.prefixof var3003 var3003!1))
(assert true)
(define-const var3374 String (locationString/-286819006 var306)) ; Statement: $r13 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var2752 String (append/672562846 var663 var3374)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var663!1 String)
(assert (= var663!1 (str.++ var663 var3374)))
(assert true)
(define-const var2327 String (toString/-2075883882 var2752)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2249 var2327)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var2249!1 var1818)
(declare-const var2327!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), var1818-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1882-to-var1597=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/-286819006=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3238=com.google.gson.internal.bind.JsonTreeReader, var306=r0, var1882=com.google.gson.stream.JsonToken, var1580=r1, var3903=$r2, var3456=$r6, var1818=java.lang.IllegalStateException, var2249=$r7, var1674=$r8, var1118=$r10, var2623=$r9, var1597=java.lang.Object, var1145=$r11, var3003=$r12, var663=$r14, var3374=$r13, var2752=$r15, var2327=$r16}
; {com.google.gson.internal.bind.JsonTreeReader=var3238, r0=var306, com.google.gson.stream.JsonToken=var1882, r1=var1580, $r2=var3903, $r6=var3456, java.lang.IllegalStateException=var1818, $r7=var2249, $r8=var1674, $r10=var1118, $r9=var2623, java.lang.Object=var1597, $r11=var1145, $r12=var3003, $r14=var663, $r13=var3374, $r15=var2752, $r16=var2327}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r6 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING>;	if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r7 = new java.lang.IllegalStateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r9 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r13 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r7
;block_num 3