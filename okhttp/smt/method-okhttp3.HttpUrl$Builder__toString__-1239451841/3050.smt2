(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var2684 0)
(declare-sort var45 0)
(declare-sort var143 0)
(declare-sort var2260 0)
(declare-sort var2473 0)
(declare-sort var402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var2471) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var2471) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var2471) String)
(declare-fun host/627676127 (var2471) String)
(declare-fun port/627676127 (var2471) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var2471) var2260)
(declare-fun toPathString$okhttp/-1179892480 (var45 var2260 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var2471) var2260)
(declare-fun encodedFragment/627676127 (var2471) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2473_checkNotNullExpressionValue/47304269 (var402 String) void)
(declare-fun cast-from-String-to-var402 (String) var402)
(declare-const null-var2471 var2471)
(declare-const null-String String)
(declare-const var143-Companion var45)
(declare-const null-var2260 var2260)
(declare-const var3278 var2471) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3278 null-var2471)))
(define-const var235 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var235)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var235!1 String)
(assert (= var235!1 ""))
(define-const var2482 String (scheme/627676127 var3278)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (not (= var2482 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2004 String (scheme/627676127 var3278)) ; Statement: $r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
(assert true)
;(assert (append/672562846 var235!1 var2004)) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var235!2 String)
(assert (= var235!2 (str.++ var235!1 var2004)))
(assert true)
;(assert (append/672562846 var235!2 "://")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://") 
(declare-const var235!3 String)
(assert (= var235!3 (str.++ var235!2 "://")))
 ; Statement: goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>] 
(assert true) ; Non Conditional
(define-const var686 String (encodedUsername/627676127 var3278)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var1542 String (cast-from-String-to-String var686)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var839 Int (String_length/-667254855 var1542)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (<= var839 0)) ; Cond: $i0 <= 0 
(define-const var3899 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var3899 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var163 String (encodedPassword/627676127 var3278)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var166 String (cast-from-String-to-String var163)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var415 Int (String_length/-667254855 var166)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (<= var415 0)) ; Cond: $i4 <= 0 
(define-const var1186 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var1186 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3100 String (host/627676127 var3278)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var3100 null-String)) ; Cond: $r25 == null 
(define-const var2644 Int (port/627676127 var3278)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var2475 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var2644 var2475)))) ; Negate: Cond: $i5 != $i7  
(define-const var726 String (scheme/627676127 var3278)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var726 null-String)) ; Cond: $r16 == null 
(define-const var3599 var45 var143-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var1445 var2260 (encodedPathSegments/627676127 var3278)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var3599 var1445 var235!3)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var3599!1 var45)
(declare-const var1445!1 var2260)
(declare-const var235!4 String)
(define-const var3654 var2260 (encodedQueryNamesAndValues/627676127 var3278)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var3654 null-var2260)) ; Cond: $r28 == null 
(define-const var636 String (encodedFragment/627676127 var3278)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var636 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var596 String (toString/-2075883882 var235!4)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2473_checkNotNullExpressionValue/47304269 (cast-from-String-to-var402 var596) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var596!1 String)
(declare-const var1117 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2473_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var402=([java.lang.String], java.lang.Object)}
; {var2471=okhttp3.HttpUrl$Builder, var3278=r1, var235=$r29, var2482=$r2, var2684=null_type, var2004=$r24, var686=$r3, var1542=$r4, var839=$i0, var3899=$z1, var163=$r22, var166=$r23, var415=$i4, var1186=$z2, var3100=$r25, var2644=$i5, var2475=$i7, var726=$r16, var45=okhttp3.HttpUrl$Companion, var143=okhttp3.HttpUrl, var3599=$r26, var2260=java.util.List, var1445=$r27, var3654=$r28, var636=$r9, var596=$r10, var2473=kotlin.jvm.internal.Intrinsics, var402=java.lang.Object, var1117="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var2471, r1=var3278, $r29=var235, $r2=var2482, null_type=var2684, $r24=var2004, $r3=var686, $r4=var1542, $i0=var839, $z1=var3899, $r22=var163, $r23=var166, $i4=var415, $z2=var1186, $r25=var3100, $i5=var2644, $i7=var2475, $r16=var726, okhttp3.HttpUrl$Companion=var45, okhttp3.HttpUrl=var143, $r26=var3599, java.util.List=var2260, $r27=var1445, $r28=var3654, $r9=var636, $r10=var596, kotlin.jvm.internal.Intrinsics=var2473, java.lang.Object=var402, "StringBuilder().apply(builderAction).toString()"=var1117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://");	goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>];	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14