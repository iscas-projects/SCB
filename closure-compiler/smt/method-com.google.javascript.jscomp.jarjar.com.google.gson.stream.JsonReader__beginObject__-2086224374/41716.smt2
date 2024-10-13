(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var1326 0)
(declare-sort var479 0)
(declare-sort var3568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var117) Int)
(declare-fun var1326-init () var1326)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/134225960 (var117) var479)
(declare-fun append/-1031950772 (String var3568) String)
(declare-fun cast-from-var479-to-var3568 (var479) var3568)
(declare-fun locationString/391724147 (var117) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1326 String) void)
(declare-const null-var117 var117)
(declare-const var2837 var117) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2837 null-var117)))
(define-const var1223 Int (peeked/-1654894195 var2837)) ; Statement: i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (= var1223 0))) ; Cond: i0 != 0 
 ; Statement: if i0 != 1 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var1223 1))) ; Cond: i0 != 1 
(define-const var3388 var1326 var1326-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var160 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var160)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var160!1 String)
(assert (= var160!1 ""))
(assert true)
(define-const var3107 String (append/672562846 var160!1 "Expected BEGIN_OBJECT but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_OBJECT but was ") 
(declare-const var160!2 String)
(assert (= var160!2 (str.++ var160!1 "Expected BEGIN_OBJECT but was ")))
(assert true)
(define-const var456 var479 (peek/134225960 var2837)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var579 String (append/-1031950772 var3107 (cast-from-var479-to-var3568 var456))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3107!1 String)
(assert (str.prefixof var3107 var3107!1))
(assert true)
(define-const var291 String (locationString/391724147 var2837)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var3354 String (append/672562846 var579 var291)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var579!1 String)
(assert (= var579!1 (str.++ var579 var291)))
(assert true)
(define-const var1400 String (toString/-2075883882 var3354)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3388 var1400)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3388!1 var1326)
(declare-const var1400!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), var1326-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var479-to-var3568=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var117=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2837=r0, var1223=i0, var1326=java.lang.IllegalStateException, var3388=$r1, var160=$r2, var3107=$r4, var479=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var456=$r3, var3568=java.lang.Object, var579=$r6, var291=$r5, var3354=$r7, var1400=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var117, r0=var2837, i0=var1223, java.lang.IllegalStateException=var1326, $r1=var3388, $r2=var160, $r4=var3107, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var479, $r3=var456, java.lang.Object=var3568, $r6=var579, $r5=var291, $r7=var3354, $r8=var1400}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i0 != 0 goto (branch);	if i0 != 1 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected BEGIN_OBJECT but was ");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3