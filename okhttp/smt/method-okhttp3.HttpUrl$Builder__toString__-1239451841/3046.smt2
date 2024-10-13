(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1029 0)
(declare-sort var3257 0)
(declare-sort var1423 0)
(declare-sort var961 0)
(declare-sort var2095 0)
(declare-sort var1741 0)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var1029) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var1029) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var1029) String)
(declare-fun host/627676127 (var1029) String)
(declare-fun port/627676127 (var1029) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var1029) var2095)
(declare-fun toPathString$okhttp/-1179892480 (var1423 var2095 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var1029) var2095)
(declare-fun encodedFragment/627676127 (var1029) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1741_checkNotNullExpressionValue/47304269 (var3408 String) void)
(declare-fun cast-from-String-to-var3408 (String) var3408)
(declare-const null-var1029 var1029)
(declare-const null-String String)
(declare-const var961-Companion var1423)
(declare-const null-var2095 var2095)
(declare-const var3689 var1029) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3689 null-var1029)))
(define-const var2205 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2205)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2205!1 String)
(assert (= var2205!1 ""))
(define-const var1511 String (scheme/627676127 var3689)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (not (= var1511 null-String))) ; Negate: Cond: $r2 == null  
(define-const var1117 String (scheme/627676127 var3689)) ; Statement: $r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
(assert true)
;(assert (append/672562846 var2205!1 var1117)) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2205!2 String)
(assert (= var2205!2 (str.++ var2205!1 var1117)))
(assert true)
;(assert (append/672562846 var2205!2 "://")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://") 
(declare-const var2205!3 String)
(assert (= var2205!3 (str.++ var2205!2 "://")))
 ; Statement: goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>] 
(assert true) ; Non Conditional
(define-const var1568 String (encodedUsername/627676127 var3689)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var10 String (cast-from-String-to-String var1568)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var1508 Int (String_length/-667254855 var10)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (<= var1508 0)) ; Cond: $i0 <= 0 
(define-const var784 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var784 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var650 String (encodedPassword/627676127 var3689)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var3903 String (cast-from-String-to-String var650)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var3114 Int (String_length/-667254855 var3903)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (not (<= var3114 0))) ; Negate: Cond: $i4 <= 0  
(define-const var435 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var435 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2785 String (host/627676127 var3689)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var2785 null-String)) ; Cond: $r25 == null 
(define-const var358 Int (port/627676127 var3689)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var2921 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var358 var2921)))) ; Negate: Cond: $i5 != $i7  
(define-const var237 String (scheme/627676127 var3689)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var237 null-String)) ; Cond: $r16 == null 
(define-const var569 var1423 var961-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var1543 var2095 (encodedPathSegments/627676127 var3689)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var569 var1543 var2205!3)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var569!1 var1423)
(declare-const var1543!1 var2095)
(declare-const var2205!4 String)
(define-const var1487 var2095 (encodedQueryNamesAndValues/627676127 var3689)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var1487 null-var2095)) ; Cond: $r28 == null 
(define-const var2863 String (encodedFragment/627676127 var3689)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2863 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var2214 String (toString/-2075883882 var2205!4)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1741_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3408 var2214) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var2214!1 String)
(declare-const var2300 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1741_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3408=([java.lang.String], java.lang.Object)}
; {var1029=okhttp3.HttpUrl$Builder, var3689=r1, var2205=$r29, var1511=$r2, var3257=null_type, var1117=$r24, var1568=$r3, var10=$r4, var1508=$i0, var784=$z1, var650=$r22, var3903=$r23, var3114=$i4, var435=$z2, var2785=$r25, var358=$i5, var2921=$i7, var237=$r16, var1423=okhttp3.HttpUrl$Companion, var961=okhttp3.HttpUrl, var569=$r26, var2095=java.util.List, var1543=$r27, var1487=$r28, var2863=$r9, var2214=$r10, var1741=kotlin.jvm.internal.Intrinsics, var3408=java.lang.Object, var2300="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var1029, r1=var3689, $r29=var2205, $r2=var1511, null_type=var3257, $r24=var1117, $r3=var1568, $r4=var10, $i0=var1508, $z1=var784, $r22=var650, $r23=var3903, $i4=var3114, $z2=var435, $r25=var2785, $i5=var358, $i7=var2921, $r16=var237, okhttp3.HttpUrl$Companion=var1423, okhttp3.HttpUrl=var961, $r26=var569, java.util.List=var2095, $r27=var1543, $r28=var1487, $r9=var2863, $r10=var2214, kotlin.jvm.internal.Intrinsics=var1741, java.lang.Object=var3408, "StringBuilder().apply(builderAction).toString()"=var2300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r24 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("://");	goto [?= $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>];	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14