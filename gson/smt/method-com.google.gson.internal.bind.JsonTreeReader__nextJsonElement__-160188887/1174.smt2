(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2649 0)
(declare-sort var3604 0)
(declare-sort var3331 0)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var2649) var3604)
(declare-fun var3331-init () var3331)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1330) String)
(declare-fun cast-from-var3604-to-var1330 (var3604) var1330)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3331 String) void)
(declare-const null-var2649 var2649)
(declare-const var3604-NAME var3604)
(declare-const var3056 var2649) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var3056 null-var2649)))
(assert true)
(define-const var2171 var3604 (peek/-1841308090 var3056)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var1779 var3604 var3604-NAME) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NAME> 
 ; Statement: if r1 == $r2 goto $r8 = new java.lang.IllegalStateException 
(assert (= var2171 var1779)) ; Cond: r1 == $r2 
(define-const var2274 var3331 var3331-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var647 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var647)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var647!1 String)
(assert (= var647!1 ""))
(assert true)
(define-const var3139 String (append/672562846 var647!1 "Unexpected ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected ") 
(declare-const var647!2 String)
(assert (= var647!2 (str.++ var647!1 "Unexpected ")))
(assert true)
(define-const var1940 String (append/-1031950772 var3139 (cast-from-var3604-to-var1330 var2171))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3139!1 String)
(assert (str.prefixof var3139 var3139!1))
(assert true)
(define-const var2703 String (append/672562846 var1940 " when reading a JsonElement.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when reading a JsonElement.") 
(declare-const var1940!1 String)
(assert (= var1940!1 (str.++ var1940 " when reading a JsonElement.")))
(assert true)
(define-const var2960 String (toString/-2075883882 var2703)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2274 var2960)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var2274!1 var3331)
(declare-const var2960!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), var3331-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3604-to-var1330=([com.google.gson.stream.JsonToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2649=com.google.gson.internal.bind.JsonTreeReader, var3056=r0, var3604=com.google.gson.stream.JsonToken, var2171=r1, var1779=$r2, var3331=java.lang.IllegalStateException, var2274=$r8, var647=$r9, var3139=$r10, var1330=java.lang.Object, var1940=$r11, var2703=$r12, var2960=$r13}
; {com.google.gson.internal.bind.JsonTreeReader=var2649, r0=var3056, com.google.gson.stream.JsonToken=var3604, r1=var2171, $r2=var1779, java.lang.IllegalStateException=var3331, $r8=var2274, $r9=var647, $r10=var3139, java.lang.Object=var1330, $r11=var1940, $r12=var2703, $r13=var2960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NAME>;	if r1 == $r2 goto $r8 = new java.lang.IllegalStateException;	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when reading a JsonElement.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2