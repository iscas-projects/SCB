(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineNumber/-1654894195 (var179) Int)
(declare-fun pos/-1654894195 (var179) Int)
(declare-fun lineStart/-1654894195 (var179) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getPath/1855716710 (var179) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var179 var179)
(declare-const var105 var179) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var105 null-var179)))
(define-const var3853 Int (lineNumber/-1654894195 var105)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int lineNumber> 
(define-const var996 Int (+ var3853 1)) ; Statement: i1 = $i0 + 1 
(define-const var3054 Int (pos/-1654894195 var105)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3897 Int (lineStart/-1654894195 var105)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int lineStart> 
(define-const var3843 Int (- var3054 var3897)) ; Statement: $i4 = $i3 - $i2 
(define-const var3285 Int (+ var3843 1)) ; Statement: i5 = $i4 + 1 
(define-const var3353 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3353)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3353!1 String)
(assert (= var3353!1 ""))
(assert true)
(define-const var1988 String (append/672562846 var3353!1 " at line ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at line ") 
(declare-const var3353!2 String)
(assert (= var3353!2 (str.++ var3353!1 " at line ")))
(assert true)
(define-const var279 String (append/-1001720160 var1988 var996)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1988!1 String)
(assert (str.prefixof var1988 var1988!1))
(assert true)
(define-const var3312 String (append/672562846 var279 " column ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" column ") 
(declare-const var279!1 String)
(assert (= var279!1 (str.++ var279 " column ")))
(assert true)
(define-const var1917 String (append/-1001720160 var3312 var3285)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var3312!1 String)
(assert (str.prefixof var3312 var3312!1))
(assert true)
(define-const var2749 String (append/672562846 var1917 " path ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" path ") 
(declare-const var1917!1 String)
(assert (= var1917!1 (str.++ var1917 " path ")))
(assert true)
(define-const var1444 String (getPath/1855716710 var105)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPath()>() 
(assert true)
(define-const var235 String (append/672562846 var2749 var1444)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2749!1 String)
(assert (= var2749!1 (str.++ var2749 var1444)))
(assert true)
(define-const var3671 String (toString/-2075883882 var235)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {lineNumber/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), lineStart/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getPath/1855716710=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var179=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var105=r0, var3853=$i0, var996=i1, var3054=$i3, var3897=$i2, var3843=$i4, var3285=i5, var3353=$r1, var1988=$r2, var279=$r3, var3312=$r4, var1917=$r5, var2749=$r7, var1444=$r6, var235=$r8, var3671=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var179, r0=var105, $i0=var3853, i1=var996, $i3=var3054, $i2=var3897, $i4=var3843, i5=var3285, $r1=var3353, $r2=var1988, $r3=var279, $r4=var3312, $r5=var1917, $r7=var2749, $r6=var1444, $r8=var235, $r9=var3671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int lineNumber>;	i1 = $i0 + 1;	$i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int lineStart>;	$i4 = $i3 - $i2;	i5 = $i4 + 1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at line ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" column ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" path ");	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPath()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1