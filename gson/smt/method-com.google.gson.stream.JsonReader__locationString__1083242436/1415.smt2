(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineNumber/1477480286 (var3923) Int)
(declare-fun pos/1477480286 (var3923) Int)
(declare-fun lineStart/1477480286 (var3923) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getPath/876800821 (var3923) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3923 var3923)
(declare-const var320 var3923) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var320 null-var3923)))
(define-const var3842 Int (lineNumber/1477480286 var320)) ; Statement: $i0 = r0.<com.google.gson.stream.JsonReader: int lineNumber> 
(define-const var1547 Int (+ var3842 1)) ; Statement: i1 = $i0 + 1 
(define-const var2791 Int (pos/1477480286 var320)) ; Statement: $i3 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1576 Int (lineStart/1477480286 var320)) ; Statement: $i2 = r0.<com.google.gson.stream.JsonReader: int lineStart> 
(define-const var839 Int (- var2791 var1576)) ; Statement: $i4 = $i3 - $i2 
(define-const var2353 Int (+ var839 1)) ; Statement: i5 = $i4 + 1 
(define-const var2497 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2497)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2497!1 String)
(assert (= var2497!1 ""))
(assert true)
(define-const var1849 String (append/672562846 var2497!1 " at line ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at line ") 
(declare-const var2497!2 String)
(assert (= var2497!2 (str.++ var2497!1 " at line ")))
(assert true)
(define-const var2543 String (append/-1001720160 var1849 var1547)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1849!1 String)
(assert (str.prefixof var1849 var1849!1))
(assert true)
(define-const var3327 String (append/672562846 var2543 " column ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" column ") 
(declare-const var2543!1 String)
(assert (= var2543!1 (str.++ var2543 " column ")))
(assert true)
(define-const var604 String (append/-1001720160 var3327 var2353)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var3327!1 String)
(assert (str.prefixof var3327 var3327!1))
(assert true)
(define-const var2314 String (append/672562846 var604 " path ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" path ") 
(declare-const var604!1 String)
(assert (= var604!1 (str.++ var604 " path ")))
(assert true)
(define-const var3140 String (getPath/876800821 var320)) ; Statement: $r6 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPath()>() 
(assert true)
(define-const var1170 String (append/672562846 var2314 var3140)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2314!1 String)
(assert (= var2314!1 (str.++ var2314 var3140)))
(assert true)
(define-const var1808 String (toString/-2075883882 var1170)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {lineNumber/1477480286=([com.google.gson.stream.JsonReader], int), pos/1477480286=([com.google.gson.stream.JsonReader], int), lineStart/1477480286=([com.google.gson.stream.JsonReader], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getPath/876800821=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3923=com.google.gson.stream.JsonReader, var320=r0, var3842=$i0, var1547=i1, var2791=$i3, var1576=$i2, var839=$i4, var2353=i5, var2497=$r1, var1849=$r2, var2543=$r3, var3327=$r4, var604=$r5, var2314=$r7, var3140=$r6, var1170=$r8, var1808=$r9}
; {com.google.gson.stream.JsonReader=var3923, r0=var320, $i0=var3842, i1=var1547, $i3=var2791, $i2=var1576, $i4=var839, i5=var2353, $r1=var2497, $r2=var1849, $r3=var2543, $r4=var3327, $r5=var604, $r7=var2314, $r6=var3140, $r8=var1170, $r9=var1808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	$i0 = r0.<com.google.gson.stream.JsonReader: int lineNumber>;	i1 = $i0 + 1;	$i3 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i2 = r0.<com.google.gson.stream.JsonReader: int lineStart>;	$i4 = $i3 - $i2;	i5 = $i4 + 1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at line ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" column ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" path ");	$r6 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPath()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1