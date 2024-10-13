(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3879 0)
(declare-sort var881 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1926344963 (var3879) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun value/1926344963 (var3879) String)
(declare-fun persistent/1926344963 (var3879) Bool)
(declare-fun hostOnly/1926344963 (var3879) Bool)
(declare-fun path/1926344963 (var3879) String)
(declare-fun secure/1926344963 (var3879) Bool)
(declare-fun httpOnly/1926344963 (var3879) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var881_checkNotNullExpressionValue/47304269 (var3616 String) void)
(declare-fun cast-from-String-to-var3616 (String) var3616)
(declare-const null-var3879 var3879)
(declare-const null-Bool Bool)
(declare-const var3077 var3879) ; Statement: r1 := @this: okhttp3.Cookie 
(assert (not (= var3077 null-var3879)))
(declare-const var1605 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var1605 null-Bool)))
(define-const var1363 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1363)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1363!1 String)
(assert (= var1363!1 ""))
(define-const var1979 String (name/1926344963 var3077)) ; Statement: $r2 = r1.<okhttp3.Cookie: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1363!1 var1979)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1363!2 String)
(assert (= var1363!2 (str.++ var1363!1 var1979)))
(assert true)
;(assert (append/-1166366385 var1363!2 61)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var1363!3 String)
(assert (str.prefixof var1363!2 var1363!3))
(define-const var2533 String (value/1926344963 var3077)) ; Statement: $r3 = r1.<okhttp3.Cookie: java.lang.String value> 
(assert true)
;(assert (append/672562846 var1363!3 var2533)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1363!4 String)
(assert (= var1363!4 (str.++ var1363!3 var2533)))
(define-const var545 Bool (persistent/1926344963 var3077)) ; Statement: $z0 = r1.<okhttp3.Cookie: boolean persistent> 
 ; Statement: if $z0 == 0 goto $z3 = r1.<okhttp3.Cookie: boolean hostOnly> 
(assert (= (ite var545 1 0) 0)) ; Cond: $z0 == 0 
(define-const var277 Bool (hostOnly/1926344963 var3077)) ; Statement: $z3 = r1.<okhttp3.Cookie: boolean hostOnly> 
 ; Statement: if $z3 != 0 goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; path=") 
(assert (not (= (ite var277 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
(define-const var3347 String (append/672562846 var1363!4 "; path=")) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; path=") 
(declare-const var1363!5 String)
(assert (= var1363!5 (str.++ var1363!4 "; path=")))
(define-const var3630 String (path/1926344963 var3077)) ; Statement: $r10 = r1.<okhttp3.Cookie: java.lang.String path> 
(assert true)
;(assert (append/672562846 var3347 var3630)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var3630)))
(define-const var2257 Bool (secure/1926344963 var3077)) ; Statement: $z4 = r1.<okhttp3.Cookie: boolean secure> 
 ; Statement: if $z4 == 0 goto $z1 = r1.<okhttp3.Cookie: boolean httpOnly> 
(assert (= (ite var2257 1 0) 0)) ; Cond: $z4 == 0 
(define-const var493 Bool (httpOnly/1926344963 var3077)) ; Statement: $z1 = r1.<okhttp3.Cookie: boolean httpOnly> 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var493 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2261 String (toString/-2075883882 var1363!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var881_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3616 var2261) "toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "toString()") 

(declare-const var2261!1 String)
(declare-const var593 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1926344963=([okhttp3.Cookie], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), value/1926344963=([okhttp3.Cookie], java.lang.String), persistent/1926344963=([okhttp3.Cookie], boolean), hostOnly/1926344963=([okhttp3.Cookie], boolean), path/1926344963=([okhttp3.Cookie], java.lang.String), secure/1926344963=([okhttp3.Cookie], boolean), httpOnly/1926344963=([okhttp3.Cookie], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var881_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3616=([java.lang.String], java.lang.Object)}
; {var3879=okhttp3.Cookie, var3077=r1, var1605=z2, var1363=$r0, var1979=$r2, var2533=$r3, var545=$z0, var277=$z3, var3347=$r9, var3630=$r10, var2257=$z4, var493=$z1, var2261=$r4, var881=kotlin.jvm.internal.Intrinsics, var3616=java.lang.Object, var593="toString()"}
; {okhttp3.Cookie=var3879, r1=var3077, z2=var1605, $r0=var1363, $r2=var1979, $r3=var2533, $z0=var545, $z3=var277, $r9=var3347, $r10=var3630, $z4=var2257, $z1=var493, $r4=var2261, kotlin.jvm.internal.Intrinsics=var881, java.lang.Object=var3616, "toString()"=var593}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Cookie;	z2 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.Cookie: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	$r3 = r1.<okhttp3.Cookie: java.lang.String value>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<okhttp3.Cookie: boolean persistent>;	if $z0 == 0 goto $z3 = r1.<okhttp3.Cookie: boolean hostOnly>;	$z3 = r1.<okhttp3.Cookie: boolean hostOnly>;	if $z3 != 0 goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; path=");	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; path=");	$r10 = r1.<okhttp3.Cookie: java.lang.String path>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$z4 = r1.<okhttp3.Cookie: boolean secure>;	if $z4 == 0 goto $z1 = r1.<okhttp3.Cookie: boolean httpOnly>;	$z1 = r1.<okhttp3.Cookie: boolean httpOnly>;	if $z1 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r4, "toString()");	return $r4
;block_num 5