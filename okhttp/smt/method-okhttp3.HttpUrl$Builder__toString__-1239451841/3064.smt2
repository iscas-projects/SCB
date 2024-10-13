(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var594 0)
(declare-sort var2829 0)
(declare-sort var1754 0)
(declare-sort var3598 0)
(declare-sort var2081 0)
(declare-sort var1081 0)
(declare-sort var3130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var594) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var594) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var594) String)
(declare-fun host/627676127 (var594) String)
(declare-fun port/627676127 (var594) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var594) var2081)
(declare-fun toPathString$okhttp/-1179892480 (var1754 var2081 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var594) var2081)
(declare-fun encodedFragment/627676127 (var594) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1081_checkNotNullExpressionValue/47304269 (var3130 String) void)
(declare-fun cast-from-String-to-var3130 (String) var3130)
(declare-const null-var594 var594)
(declare-const null-String String)
(declare-const var3598-Companion var1754)
(declare-const null-var2081 var2081)
(declare-const var1927 var594) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1927 null-var594)))
(define-const var1892 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1892)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1892!1 String)
(assert (= var1892!1 ""))
(define-const var2561 String (scheme/627676127 var1927)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (= var2561 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var1892!1 "//")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(declare-const var1892!2 String)
(assert (= var1892!2 (str.++ var1892!1 "//")))
(assert true) ; Non Conditional
(define-const var1532 String (encodedUsername/627676127 var1927)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var2883 String (cast-from-String-to-String var1532)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var1603 Int (String_length/-667254855 var2883)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (<= var1603 0)) ; Cond: $i0 <= 0 
(define-const var1437 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var1437 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1567 String (encodedPassword/627676127 var1927)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var2388 String (cast-from-String-to-String var1567)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var3926 Int (String_length/-667254855 var2388)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (not (<= var3926 0))) ; Negate: Cond: $i4 <= 0  
(define-const var2436 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var2436 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2284 String (host/627676127 var1927)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var2284 null-String)) ; Cond: $r25 == null 
(define-const var726 Int (port/627676127 var1927)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var3736 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var726 var3736)))) ; Negate: Cond: $i5 != $i7  
(define-const var1272 String (scheme/627676127 var1927)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var1272 null-String)) ; Cond: $r16 == null 
(define-const var1106 var1754 var3598-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var747 var2081 (encodedPathSegments/627676127 var1927)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var1106 var747 var1892!2)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var1106!1 var1754)
(declare-const var747!1 var2081)
(declare-const var1892!3 String)
(define-const var1211 var2081 (encodedQueryNamesAndValues/627676127 var1927)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var1211 null-var2081)) ; Cond: $r28 == null 
(define-const var680 String (encodedFragment/627676127 var1927)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var680 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var2325 String (toString/-2075883882 var1892!3)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1081_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3130 var2325) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var2325!1 String)
(declare-const var3921 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1081_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3130=([java.lang.String], java.lang.Object)}
; {var594=okhttp3.HttpUrl$Builder, var1927=r1, var1892=$r29, var2561=$r2, var2829=null_type, var1532=$r3, var2883=$r4, var1603=$i0, var1437=$z1, var1567=$r22, var2388=$r23, var3926=$i4, var2436=$z2, var2284=$r25, var726=$i5, var3736=$i7, var1272=$r16, var1754=okhttp3.HttpUrl$Companion, var3598=okhttp3.HttpUrl, var1106=$r26, var2081=java.util.List, var747=$r27, var1211=$r28, var680=$r9, var2325=$r10, var1081=kotlin.jvm.internal.Intrinsics, var3130=java.lang.Object, var3921="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var594, r1=var1927, $r29=var1892, $r2=var2561, null_type=var2829, $r3=var1532, $r4=var2883, $i0=var1603, $z1=var1437, $r22=var1567, $r23=var2388, $i4=var3926, $z2=var2436, $r25=var2284, $i5=var726, $i7=var3736, $r16=var1272, okhttp3.HttpUrl$Companion=var1754, okhttp3.HttpUrl=var3598, $r26=var1106, java.util.List=var2081, $r27=var747, $r28=var1211, $r9=var680, $r10=var2325, kotlin.jvm.internal.Intrinsics=var1081, java.lang.Object=var3130, "StringBuilder().apply(builderAction).toString()"=var3921}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14