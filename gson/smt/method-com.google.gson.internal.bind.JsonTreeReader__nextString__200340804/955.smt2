(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3580 0)
(declare-sort var3019 0)
(declare-sort var481 0)
(declare-sort var1582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var3580) var3019)
(declare-fun var481-init () var481)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1582) String)
(declare-fun cast-from-var3019-to-var1582 (var3019) var1582)
(declare-fun locationString/-286819006 (var3580) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var481 String) void)
(declare-const null-var3580 var3580)
(declare-const var3019-STRING var3019)
(declare-const var3019-NUMBER var3019)
(declare-const var2085 var3580) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2085 null-var3580)))
(assert true)
(define-const var1445 var3019 (peek/-1841308090 var2085)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var3390 var3019 var3019-STRING) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(assert (not (= var1445 var3390))) ; Negate: Cond: r1 == $r2  
(define-const var1432 var3019 var3019-NUMBER) ; Statement: $r6 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(assert (not (= var1445 var1432))) ; Negate: Cond: r1 == $r6  
(define-const var1046 var481 var481-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var1594 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1594)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1594!1 String)
(assert (= var1594!1 ""))
(assert true)
(define-const var659 String (append/672562846 var1594!1 "Expected ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var1594!2 String)
(assert (= var1594!2 (str.++ var1594!1 "Expected ")))
(define-const var1010 var3019 var3019-STRING) ; Statement: $r10 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING> 
(assert true)
(define-const var3999 String (append/-1031950772 var659 (cast-from-var3019-to-var1582 var1010))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var659!1 String)
(assert (str.prefixof var659 var659!1))
(assert true)
(define-const var1832 String (append/672562846 var3999 " but was ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var3999!1 String)
(assert (= var3999!1 (str.++ var3999 " but was ")))
(assert true)
(define-const var3059 String (append/-1031950772 var1832 (cast-from-var3019-to-var1582 var1445))) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1832!1 String)
(assert (str.prefixof var1832 var1832!1))
(assert true)
(define-const var279 String (locationString/-286819006 var2085)) ; Statement: $r14 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var2643 String (append/672562846 var3059 var279)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3059!1 String)
(assert (= var3059!1 (str.++ var3059 var279)))
(assert true)
(define-const var2470 String (toString/-2075883882 var2643)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1046 var2470)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r17) 

(declare-const var1046!1 var481)
(declare-const var2470!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), var481-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3019-to-var1582=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/-286819006=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3580=com.google.gson.internal.bind.JsonTreeReader, var2085=r0, var3019=com.google.gson.stream.JsonToken, var1445=r1, var3390=$r2, var1432=$r6, var481=java.lang.IllegalStateException, var1046=$r8, var1594=$r9, var659=$r11, var1010=$r10, var1582=java.lang.Object, var3999=$r12, var1832=$r13, var3059=$r15, var279=$r14, var2643=$r16, var2470=$r17}
; {com.google.gson.internal.bind.JsonTreeReader=var3580, r0=var2085, com.google.gson.stream.JsonToken=var3019, r1=var1445, $r2=var3390, $r6=var1432, java.lang.IllegalStateException=var481, $r8=var1046, $r9=var1594, $r11=var659, $r10=var1010, java.lang.Object=var1582, $r12=var3999, $r13=var1832, $r15=var3059, $r14=var279, $r16=var2643, $r17=var2470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r6 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r6 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r10 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r14 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r17);	throw $r8
;block_num 3