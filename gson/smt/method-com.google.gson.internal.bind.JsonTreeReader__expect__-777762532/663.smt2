(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3948 0)
(declare-sort var330 0)
(declare-sort var493 0)
(declare-sort var194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var3948) var330)
(declare-fun var493-init () var493)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var194) String)
(declare-fun cast-from-var330-to-var194 (var330) var194)
(declare-fun locationString/-286819006 (var3948) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var493 String) void)
(declare-const null-var3948 var3948)
(declare-const null-var330 var330)
(declare-const var946 var3948) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var946 null-var3948)))
(declare-const var1927 var330) ; Statement: r1 := @parameter0: com.google.gson.stream.JsonToken 
(assert (not (= var1927 null-var330)))
(assert true)
(define-const var1276 var330 (peek/-1841308090 var946)) ; Statement: $r2 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
 ; Statement: if $r2 == r1 goto return 
(assert (not (= var1276 var1927))) ; Negate: Cond: $r2 == r1  
(define-const var3146 var493 var493-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var3379 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3379)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3379!1 String)
(assert (= var3379!1 ""))
(assert true)
(define-const var3290 String (append/672562846 var3379!1 "Expected ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var3379!2 String)
(assert (= var3379!2 (str.++ var3379!1 "Expected ")))
(assert true)
(define-const var1856 String (append/-1031950772 var3290 (cast-from-var330-to-var194 var1927))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3290!1 String)
(assert (str.prefixof var3290 var3290!1))
(assert true)
(define-const var1921 String (append/672562846 var1856 " but was ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var1856!1 String)
(assert (= var1856!1 (str.++ var1856 " but was ")))
(assert true)
(define-const var1655 var330 (peek/-1841308090 var946)) ; Statement: $r7 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var1901 String (append/-1031950772 var1921 (cast-from-var330-to-var194 var1655))) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1921!1 String)
(assert (str.prefixof var1921 var1921!1))
(assert true)
(define-const var2342 String (locationString/-286819006 var946)) ; Statement: $r9 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var3727 String (append/672562846 var1901 var2342)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1901!1 String)
(assert (= var1901!1 (str.++ var1901 var2342)))
(assert true)
(define-const var2449 String (toString/-2075883882 var3727)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3146 var2449)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var3146!1 var493)
(declare-const var2449!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), var493-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var330-to-var194=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/-286819006=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3948=com.google.gson.internal.bind.JsonTreeReader, var946=r0, var330=com.google.gson.stream.JsonToken, var1927=r1, var1276=$r2, var493=java.lang.IllegalStateException, var3146=$r3, var3379=$r4, var3290=$r5, var194=java.lang.Object, var1856=$r6, var1921=$r8, var1655=$r7, var1901=$r10, var2342=$r9, var3727=$r11, var2449=$r12}
; {com.google.gson.internal.bind.JsonTreeReader=var3948, r0=var946, com.google.gson.stream.JsonToken=var330, r1=var1927, $r2=var1276, java.lang.IllegalStateException=var493, $r3=var3146, $r4=var3379, $r5=var3290, java.lang.Object=var194, $r6=var1856, $r8=var1921, $r7=var1655, $r10=var1901, $r9=var2342, $r11=var3727, $r12=var2449}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 := @parameter0: com.google.gson.stream.JsonToken;	$r2 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	if $r2 == r1 goto return;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r7 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r9 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r3
;block_num 2