(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2476 0)
(declare-sort var1679 0)
(declare-sort var82 0)
(declare-sort var2091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var2476) Int)
(declare-fun var1679-init () var1679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/-699404472 (var2476) var82)
(declare-fun append/-1031950772 (String var2091) String)
(declare-fun cast-from-var82-to-var2091 (var82) var2091)
(declare-fun locationString/1083242436 (var2476) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1679 String) void)
(declare-const null-var2476 var2476)
(declare-const var1841 var2476) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var1841 null-var2476)))
(define-const var1874 Int (peeked/1477480286 var1841)) ; Statement: i4 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i4 != 0 goto (branch) 
(assert (not (= var1874 0))) ; Cond: i4 != 0 
 ; Statement: if i4 != 7 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var1874 7))) ; Cond: i4 != 7 
(define-const var1657 var1679 var1679-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var898 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var898)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var898!1 String)
(assert (= var898!1 ""))
(assert true)
(define-const var1686 String (append/672562846 var898!1 "Expected null but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected null but was ") 
(declare-const var898!2 String)
(assert (= var898!2 (str.++ var898!1 "Expected null but was ")))
(assert true)
(define-const var3709 var82 (peek/-699404472 var1841)) ; Statement: $r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var228 String (append/-1031950772 var1686 (cast-from-var82-to-var2091 var3709))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1686!1 String)
(assert (str.prefixof var1686 var1686!1))
(assert true)
(define-const var880 String (locationString/1083242436 var1841)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2383 String (append/672562846 var228 var880)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var228!1 String)
(assert (= var228!1 (str.++ var228 var880)))
(assert true)
(define-const var173 String (toString/-2075883882 var2383)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1657 var173)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1657!1 var1679)
(declare-const var173!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), var1679-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var82-to-var2091=([com.google.gson.stream.JsonToken], java.lang.Object), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2476=com.google.gson.stream.JsonReader, var1841=r0, var1874=i4, var1679=java.lang.IllegalStateException, var1657=$r1, var898=$r2, var1686=$r4, var82=com.google.gson.stream.JsonToken, var3709=$r3, var2091=java.lang.Object, var228=$r6, var880=$r5, var2383=$r7, var173=$r8}
; {com.google.gson.stream.JsonReader=var2476, r0=var1841, i4=var1874, java.lang.IllegalStateException=var1679, $r1=var1657, $r2=var898, $r4=var1686, com.google.gson.stream.JsonToken=var82, $r3=var3709, java.lang.Object=var2091, $r6=var228, $r5=var880, $r7=var2383, $r8=var173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i4 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i4 != 0 goto (branch);	if i4 != 7 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected null but was ");	$r3 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3