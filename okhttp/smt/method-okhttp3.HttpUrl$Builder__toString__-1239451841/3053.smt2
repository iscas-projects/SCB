(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3912 0)
(declare-sort var296 0)
(declare-sort var1226 0)
(declare-sort var291 0)
(declare-sort var497 0)
(declare-sort var634 0)
(declare-sort var1352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var3912) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var3912) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var3912) String)
(declare-fun host/627676127 (var3912) String)
(declare-fun port/627676127 (var3912) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var3912) var497)
(declare-fun toPathString$okhttp/-1179892480 (var1226 var497 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var3912) var497)
(declare-fun encodedFragment/627676127 (var3912) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var634_checkNotNullExpressionValue/47304269 (var1352 String) void)
(declare-fun cast-from-String-to-var1352 (String) var1352)
(declare-const null-var3912 var3912)
(declare-const null-String String)
(declare-const var291-Companion var1226)
(declare-const null-var497 var497)
(declare-const var711 var3912) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var711 null-var3912)))
(define-const var3235 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3235)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3235!1 String)
(assert (= var3235!1 ""))
(define-const var793 String (scheme/627676127 var711)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (= var793 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var3235!1 "//")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(declare-const var3235!2 String)
(assert (= var3235!2 (str.++ var3235!1 "//")))
(assert true) ; Non Conditional
(define-const var1558 String (encodedUsername/627676127 var711)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var9 String (cast-from-String-to-String var1558)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var2494 Int (String_length/-667254855 var9)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (not (<= var2494 0))) ; Negate: Cond: $i0 <= 0  
(define-const var459 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var459 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3736 String (encodedPassword/627676127 var711)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var1160 String (cast-from-String-to-String var3736)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var584 Int (String_length/-667254855 var1160)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (not (<= var584 0))) ; Negate: Cond: $i4 <= 0  
(define-const var489 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var489 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1581 String (host/627676127 var711)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var1581 null-String)) ; Cond: $r25 == null 
(define-const var1496 Int (port/627676127 var711)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var452 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var1496 var452)))) ; Negate: Cond: $i5 != $i7  
(define-const var2724 String (scheme/627676127 var711)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var2724 null-String)) ; Cond: $r16 == null 
(define-const var2402 var1226 var291-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var882 var497 (encodedPathSegments/627676127 var711)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var2402 var882 var3235!2)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var2402!1 var1226)
(declare-const var882!1 var497)
(declare-const var3235!3 String)
(define-const var3370 var497 (encodedQueryNamesAndValues/627676127 var711)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var3370 null-var497)) ; Cond: $r28 == null 
(define-const var2922 String (encodedFragment/627676127 var711)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2922 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var3107 String (toString/-2075883882 var3235!3)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var634_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1352 var3107) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var3107!1 String)
(declare-const var38 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var634_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1352=([java.lang.String], java.lang.Object)}
; {var3912=okhttp3.HttpUrl$Builder, var711=r1, var3235=$r29, var793=$r2, var296=null_type, var1558=$r3, var9=$r4, var2494=$i0, var459=$z1, var3736=$r22, var1160=$r23, var584=$i4, var489=$z2, var1581=$r25, var1496=$i5, var452=$i7, var2724=$r16, var1226=okhttp3.HttpUrl$Companion, var291=okhttp3.HttpUrl, var2402=$r26, var497=java.util.List, var882=$r27, var3370=$r28, var2922=$r9, var3107=$r10, var634=kotlin.jvm.internal.Intrinsics, var1352=java.lang.Object, var38="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var3912, r1=var711, $r29=var3235, $r2=var793, null_type=var296, $r3=var1558, $r4=var9, $i0=var2494, $z1=var459, $r22=var3736, $r23=var1160, $i4=var584, $z2=var489, $r25=var1581, $i5=var1496, $i7=var452, $r16=var2724, okhttp3.HttpUrl$Companion=var1226, okhttp3.HttpUrl=var291, $r26=var2402, java.util.List=var497, $r27=var882, $r28=var3370, $r9=var2922, $r10=var3107, kotlin.jvm.internal.Intrinsics=var634, java.lang.Object=var1352, "StringBuilder().apply(builderAction).toString()"=var38}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14