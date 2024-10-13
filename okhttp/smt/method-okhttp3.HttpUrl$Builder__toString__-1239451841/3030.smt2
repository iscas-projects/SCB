(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3916 0)
(declare-sort var3954 0)
(declare-sort var3036 0)
(declare-sort var3762 0)
(declare-sort var577 0)
(declare-sort var2539 0)
(declare-sort var1114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var3916) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var3916) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var3916) String)
(declare-fun host/627676127 (var3916) String)
(declare-fun port/627676127 (var3916) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var3916) var577)
(declare-fun toPathString$okhttp/-1179892480 (var3036 var577 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var3916) var577)
(declare-fun encodedFragment/627676127 (var3916) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2539_checkNotNullExpressionValue/47304269 (var1114 String) void)
(declare-fun cast-from-String-to-var1114 (String) var1114)
(declare-const null-var3916 var3916)
(declare-const null-String String)
(declare-const var3762-Companion var3036)
(declare-const null-var577 var577)
(declare-const var2658 var3916) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2658 null-var3916)))
(define-const var2804 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2804)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2804!1 String)
(assert (= var2804!1 ""))
(define-const var449 String (scheme/627676127 var2658)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (not (= var449 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1879 String (scheme/627676127 var2658)) ; Statement: $r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
(assert true)
;(assert (append/672562846 var2804!1 var1879)) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2804!2 String)
(assert (= var2804!2 (str.++ var2804!1 var1879)))
(assert true)
;(assert (append/672562846 var2804!2 "://")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://") 
(declare-const var2804!3 String)
(assert (= var2804!3 (str.++ var2804!2 "://")))
 ; Statement: goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>] 
(assert true) ; Non Conditional
(define-const var3705 String (encodedUsername/627676127 var2658)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var661 String (cast-from-String-to-String var3705)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var1101 Int (String_length/-667254855 var661)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (not (<= var1101 0))) ; Negate: Cond: $i0 <= 0  
(define-const var150 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var150 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var765 String (encodedPassword/627676127 var2658)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var392 String (cast-from-String-to-String var765)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var2239 Int (String_length/-667254855 var392)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (not (<= var2239 0))) ; Negate: Cond: $i4 <= 0  
(define-const var166 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var166 1 0) 0)) ; Cond: $z2 == 0 
(define-const var275 String (host/627676127 var2658)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var275 null-String)) ; Cond: $r25 == null 
(define-const var2261 Int (port/627676127 var2658)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var747 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var2261 var747)))) ; Negate: Cond: $i5 != $i7  
(define-const var3188 String (scheme/627676127 var2658)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var3188 null-String)) ; Cond: $r16 == null 
(define-const var3803 var3036 var3762-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3414 var577 (encodedPathSegments/627676127 var2658)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var3803 var3414 var2804!3)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var3803!1 var3036)
(declare-const var3414!1 var577)
(declare-const var2804!4 String)
(define-const var3380 var577 (encodedQueryNamesAndValues/627676127 var2658)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var3380 null-var577)) ; Cond: $r28 == null 
(define-const var2873 String (encodedFragment/627676127 var2658)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2873 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var2802 String (toString/-2075883882 var2804!4)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2539_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1114 var2802) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var2802!1 String)
(declare-const var2145 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2539_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1114=([java.lang.String], java.lang.Object)}
; {var3916=okhttp3.HttpUrl$Builder, var2658=r1, var2804=$r29, var449=$r2, var3954=null_type, var1879=$r24, var3705=$r3, var661=$r4, var1101=$i0, var150=$z1, var765=$r22, var392=$r23, var2239=$i4, var166=$z2, var275=$r25, var2261=$i5, var747=$i7, var3188=$r16, var3036=okhttp3.HttpUrl$Companion, var3762=okhttp3.HttpUrl, var3803=$r26, var577=java.util.List, var3414=$r27, var3380=$r28, var2873=$r9, var2802=$r10, var2539=kotlin.jvm.internal.Intrinsics, var1114=java.lang.Object, var2145="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var3916, r1=var2658, $r29=var2804, $r2=var449, null_type=var3954, $r24=var1879, $r3=var3705, $r4=var661, $i0=var1101, $z1=var150, $r22=var765, $r23=var392, $i4=var2239, $z2=var166, $r25=var275, $i5=var2261, $i7=var747, $r16=var3188, okhttp3.HttpUrl$Companion=var3036, okhttp3.HttpUrl=var3762, $r26=var3803, java.util.List=var577, $r27=var3414, $r28=var3380, $r9=var2873, $r10=var2802, kotlin.jvm.internal.Intrinsics=var2539, java.lang.Object=var1114, "StringBuilder().apply(builderAction).toString()"=var2145}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://");	goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>];	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14