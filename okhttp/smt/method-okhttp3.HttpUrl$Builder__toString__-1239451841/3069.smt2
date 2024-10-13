(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3448 0)
(declare-sort var3286 0)
(declare-sort var1257 0)
(declare-sort var1494 0)
(declare-sort var672 0)
(declare-sort var1220 0)
(declare-sort var1551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var3448) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var3448) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var3448) String)
(declare-fun host/627676127 (var3448) String)
(declare-fun port/627676127 (var3448) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var3448) var672)
(declare-fun toPathString$okhttp/-1179892480 (var1257 var672 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var3448) var672)
(declare-fun encodedFragment/627676127 (var3448) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1220_checkNotNullExpressionValue/47304269 (var1551 String) void)
(declare-fun cast-from-String-to-var1551 (String) var1551)
(declare-const null-var3448 var3448)
(declare-const null-String String)
(declare-const var1494-Companion var1257)
(declare-const null-var672 var672)
(declare-const var1633 var3448) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1633 null-var3448)))
(define-const var161 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var161)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var161!1 String)
(assert (= var161!1 ""))
(define-const var1601 String (scheme/627676127 var1633)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (= var1601 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var161!1 "//")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(declare-const var161!2 String)
(assert (= var161!2 (str.++ var161!1 "//")))
(assert true) ; Non Conditional
(define-const var231 String (encodedUsername/627676127 var1633)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var3672 String (cast-from-String-to-String var231)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var3751 Int (String_length/-667254855 var3672)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (<= var3751 0)) ; Cond: $i0 <= 0 
(define-const var2115 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var2115 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3695 String (encodedPassword/627676127 var1633)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var3044 String (cast-from-String-to-String var3695)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var2954 Int (String_length/-667254855 var3044)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (<= var2954 0)) ; Cond: $i4 <= 0 
(define-const var3593 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var3593 1 0) 0)) ; Cond: $z2 == 0 
(define-const var548 String (host/627676127 var1633)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var548 null-String)) ; Cond: $r25 == null 
(define-const var3305 Int (port/627676127 var1633)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var1653 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var3305 var1653)))) ; Negate: Cond: $i5 != $i7  
(define-const var2235 String (scheme/627676127 var1633)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var2235 null-String)) ; Cond: $r16 == null 
(define-const var1064 var1257 var1494-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3332 var672 (encodedPathSegments/627676127 var1633)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var1064 var3332 var161!2)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var1064!1 var1257)
(declare-const var3332!1 var672)
(declare-const var161!3 String)
(define-const var3964 var672 (encodedQueryNamesAndValues/627676127 var1633)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var3964 null-var672)) ; Cond: $r28 == null 
(define-const var288 String (encodedFragment/627676127 var1633)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var288 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var616 String (toString/-2075883882 var161!3)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1220_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1551 var616) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var616!1 String)
(declare-const var1422 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1220_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1551=([java.lang.String], java.lang.Object)}
; {var3448=okhttp3.HttpUrl$Builder, var1633=r1, var161=$r29, var1601=$r2, var3286=null_type, var231=$r3, var3672=$r4, var3751=$i0, var2115=$z1, var3695=$r22, var3044=$r23, var2954=$i4, var3593=$z2, var548=$r25, var3305=$i5, var1653=$i7, var2235=$r16, var1257=okhttp3.HttpUrl$Companion, var1494=okhttp3.HttpUrl, var1064=$r26, var672=java.util.List, var3332=$r27, var3964=$r28, var288=$r9, var616=$r10, var1220=kotlin.jvm.internal.Intrinsics, var1551=java.lang.Object, var1422="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var3448, r1=var1633, $r29=var161, $r2=var1601, null_type=var3286, $r3=var231, $r4=var3672, $i0=var3751, $z1=var2115, $r22=var3695, $r23=var3044, $i4=var2954, $z2=var3593, $r25=var548, $i5=var3305, $i7=var1653, $r16=var2235, okhttp3.HttpUrl$Companion=var1257, okhttp3.HttpUrl=var1494, $r26=var1064, java.util.List=var672, $r27=var3332, $r28=var3964, $r9=var288, $r10=var616, kotlin.jvm.internal.Intrinsics=var1220, java.lang.Object=var1551, "StringBuilder().apply(builderAction).toString()"=var1422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14