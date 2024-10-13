(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2493 0)
(declare-sort var3963 0)
(declare-sort var3971 0)
(declare-sort var1077 0)
(declare-sort var3601 0)
(declare-sort var2281 0)
(declare-sort var2776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var2493) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var2493) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var2493) String)
(declare-fun host/627676127 (var2493) String)
(declare-fun port/627676127 (var2493) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var2493) var3601)
(declare-fun toPathString$okhttp/-1179892480 (var3971 var3601 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var2493) var3601)
(declare-fun encodedFragment/627676127 (var2493) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2281_checkNotNullExpressionValue/47304269 (var2776 String) void)
(declare-fun cast-from-String-to-var2776 (String) var2776)
(declare-const null-var2493 var2493)
(declare-const null-String String)
(declare-const var1077-Companion var3971)
(declare-const null-var3601 var3601)
(declare-const var1787 var2493) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1787 null-var2493)))
(define-const var71 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var71)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var71!1 String)
(assert (= var71!1 ""))
(define-const var3043 String (scheme/627676127 var1787)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (not (= var3043 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1791 String (scheme/627676127 var1787)) ; Statement: $r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
(assert true)
;(assert (append/672562846 var71!1 var1791)) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var71!2 String)
(assert (= var71!2 (str.++ var71!1 var1791)))
(assert true)
;(assert (append/672562846 var71!2 "://")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://") 
(declare-const var71!3 String)
(assert (= var71!3 (str.++ var71!2 "://")))
 ; Statement: goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>] 
(assert true) ; Non Conditional
(define-const var1246 String (encodedUsername/627676127 var1787)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var1404 String (cast-from-String-to-String var1246)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var3853 Int (String_length/-667254855 var1404)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (not (<= var3853 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3483 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var3483 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2302 String (encodedPassword/627676127 var1787)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var3798 String (cast-from-String-to-String var2302)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var514 Int (String_length/-667254855 var3798)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (<= var514 0)) ; Cond: $i4 <= 0 
(define-const var2668 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var2668 1 0) 0)) ; Cond: $z2 == 0 
(define-const var73 String (host/627676127 var1787)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var73 null-String)) ; Cond: $r25 == null 
(define-const var1965 Int (port/627676127 var1787)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var2152 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var1965 var2152)))) ; Negate: Cond: $i5 != $i7  
(define-const var1854 String (scheme/627676127 var1787)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var1854 null-String)) ; Cond: $r16 == null 
(define-const var3729 var3971 var1077-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3382 var3601 (encodedPathSegments/627676127 var1787)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var3729 var3382 var71!3)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var3729!1 var3971)
(declare-const var3382!1 var3601)
(declare-const var71!4 String)
(define-const var1559 var3601 (encodedQueryNamesAndValues/627676127 var1787)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var1559 null-var3601)) ; Cond: $r28 == null 
(define-const var2032 String (encodedFragment/627676127 var1787)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2032 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var1286 String (toString/-2075883882 var71!4)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2281_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2776 var1286) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var1286!1 String)
(declare-const var3291 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2281_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2776=([java.lang.String], java.lang.Object)}
; {var2493=okhttp3.HttpUrl$Builder, var1787=r1, var71=$r29, var3043=$r2, var3963=null_type, var1791=$r24, var1246=$r3, var1404=$r4, var3853=$i0, var3483=$z1, var2302=$r22, var3798=$r23, var514=$i4, var2668=$z2, var73=$r25, var1965=$i5, var2152=$i7, var1854=$r16, var3971=okhttp3.HttpUrl$Companion, var1077=okhttp3.HttpUrl, var3729=$r26, var3601=java.util.List, var3382=$r27, var1559=$r28, var2032=$r9, var1286=$r10, var2281=kotlin.jvm.internal.Intrinsics, var2776=java.lang.Object, var3291="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var2493, r1=var1787, $r29=var71, $r2=var3043, null_type=var3963, $r24=var1791, $r3=var1246, $r4=var1404, $i0=var3853, $z1=var3483, $r22=var2302, $r23=var3798, $i4=var514, $z2=var2668, $r25=var73, $i5=var1965, $i7=var2152, $r16=var1854, okhttp3.HttpUrl$Companion=var3971, okhttp3.HttpUrl=var1077, $r26=var3729, java.util.List=var3601, $r27=var3382, $r28=var1559, $r9=var2032, $r10=var1286, kotlin.jvm.internal.Intrinsics=var2281, java.lang.Object=var2776, "StringBuilder().apply(builderAction).toString()"=var3291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://");	goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>];	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14