(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var863 0)
(declare-sort var1360 0)
(declare-sort var2657 0)
(declare-sort var756 0)
(declare-sort var1508 0)
(declare-sort var2517 0)
(declare-sort var1797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scheme/627676127 (var863) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun encodedUsername/627676127 (var863) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun encodedPassword/627676127 (var863) String)
(declare-fun host/627676127 (var863) String)
(declare-fun port/627676127 (var863) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var863) var1508)
(declare-fun toPathString$okhttp/-1179892480 (var2657 var1508 String) void)
(declare-fun encodedQueryNamesAndValues/627676127 (var863) var1508)
(declare-fun encodedFragment/627676127 (var863) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2517_checkNotNullExpressionValue/47304269 (var1797 String) void)
(declare-fun cast-from-String-to-var1797 (String) var1797)
(declare-const null-var863 var863)
(declare-const null-String String)
(declare-const var756-Companion var2657)
(declare-const null-var1508 var1508)
(declare-const var1487 var863) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1487 null-var863)))
(define-const var3643 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3643)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3643!1 String)
(assert (= var3643!1 ""))
(define-const var3071 String (scheme/627676127 var1487)) ; Statement: $r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(assert (= var3071 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var3643!1 "//")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(declare-const var3643!2 String)
(assert (= var3643!2 (str.++ var3643!1 "//")))
(assert true) ; Non Conditional
(define-const var3616 String (encodedUsername/627676127 var1487)) ; Statement: $r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(define-const var3191 String (cast-from-String-to-String var3616)) ; Statement: $r4 = (java.lang.CharSequence) $r3 
(define-const var3910 Int (String_length/-667254855 var3191)) ; Statement: $i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z1 = 0 
(assert (not (<= var3910 0))) ; Negate: Cond: $i0 <= 0  
(define-const var604 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername> 
(assert (not (not (= (ite var604 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2100 String (encodedPassword/627676127 var1487)) ; Statement: $r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword> 
(define-const var1499 String (cast-from-String-to-String var2100)) ; Statement: $r23 = (java.lang.CharSequence) $r22 
(define-const var3820 Int (String_length/-667254855 var1499)) ; Statement: $i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i4 <= 0 goto $z2 = 0 
(assert (<= var3820 0)) ; Cond: $i4 <= 0 
(define-const var2136 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
(assert (= (ite var2136 1 0) 0)) ; Cond: $z2 == 0 
(define-const var933 String (host/627676127 var1487)) ; Statement: $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host> 
 ; Statement: if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(assert (= var933 null-String)) ; Cond: $r25 == null 
(define-const var1011 Int (port/627676127 var1487)) ; Statement: $i5 = r1.<okhttp3.HttpUrl$Builder: int port> 
(define-const var2825 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>() 
(assert (not (not (= var1011 var2825)))) ; Negate: Cond: $i5 != $i7  
(define-const var42 String (scheme/627676127 var1487)) ; Statement: $r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme> 
 ; Statement: if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(assert (= var42 null-String)) ; Cond: $r16 == null 
(define-const var3902 var2657 var756-Companion) ; Statement: $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var1726 var1508 (encodedPathSegments/627676127 var1487)) ; Statement: $r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert true)
;(assert (toPathString$okhttp/-1179892480 var3902 var1726 var3643!2)) ; Statement: virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29) 

(declare-const var3902!1 var2657)
(declare-const var1726!1 var1508)
(declare-const var3643!3 String)
(define-const var3022 var1508 (encodedQueryNamesAndValues/627676127 var1487)) ; Statement: $r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues> 
 ; Statement: if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
(assert (= var3022 null-var1508)) ; Cond: $r28 == null 
(define-const var1458 String (encodedFragment/627676127 var1487)) ; Statement: $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1458 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var1547 String (toString/-2075883882 var3643!3)) ; Statement: $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2517_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1797 var1547) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()") 

(declare-const var1547!1 String)
(declare-const var1018 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scheme/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), encodedUsername/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), encodedPassword/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), port/627676127=([okhttp3.HttpUrl$Builder], int), cast-from-Int-to-Int=([int], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), toPathString$okhttp/-1179892480=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), encodedQueryNamesAndValues/627676127=([okhttp3.HttpUrl$Builder], java.util.List), encodedFragment/627676127=([okhttp3.HttpUrl$Builder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2517_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1797=([java.lang.String], java.lang.Object)}
; {var863=okhttp3.HttpUrl$Builder, var1487=r1, var3643=$r29, var3071=$r2, var1360=null_type, var3616=$r3, var3191=$r4, var3910=$i0, var604=$z1, var2100=$r22, var1499=$r23, var3820=$i4, var2136=$z2, var933=$r25, var1011=$i5, var2825=$i7, var42=$r16, var2657=okhttp3.HttpUrl$Companion, var756=okhttp3.HttpUrl, var3902=$r26, var1508=java.util.List, var1726=$r27, var3022=$r28, var1458=$r9, var1547=$r10, var2517=kotlin.jvm.internal.Intrinsics, var1797=java.lang.Object, var1018="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.HttpUrl$Builder=var863, r1=var1487, $r29=var3643, $r2=var3071, null_type=var1360, $r3=var3616, $r4=var3191, $i0=var3910, $z1=var604, $r22=var2100, $r23=var1499, $i4=var3820, $z2=var2136, $r25=var933, $i5=var1011, $i7=var2825, $r16=var42, okhttp3.HttpUrl$Companion=var2657, okhttp3.HttpUrl=var756, $r26=var3902, java.util.List=var1508, $r27=var1726, $r28=var3022, $r9=var1458, $r10=var1547, kotlin.jvm.internal.Intrinsics=var2517, java.lang.Object=var1797, "StringBuilder().apply(builderAction).toString()"=var1018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r2 == null goto virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r3 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r4 = (java.lang.CharSequence) $r3;	$i0 = interfaceinvoke $r4.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedUsername>;	$r22 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedPassword>;	$r23 = (java.lang.CharSequence) $r22;	$i4 = interfaceinvoke $r23.<java.lang.CharSequence: int length()>();	if $i4 <= 0 goto $z2 = 0;	$z2 = 0;	if $z2 == 0 goto $r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	$r25 = r1.<okhttp3.HttpUrl$Builder: java.lang.String host>;	if $r25 == null goto $i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i5 = r1.<okhttp3.HttpUrl$Builder: int port>;	$i7 = (int) -1;	if $i5 != $i7 goto $i3 = specialinvoke r1.<okhttp3.HttpUrl$Builder: int effectivePort()>();	$r16 = r1.<okhttp3.HttpUrl$Builder: java.lang.String scheme>;	if $r16 == null goto $r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r26 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r27 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	virtualinvoke $r26.<okhttp3.HttpUrl$Companion: void toPathString$okhttp(java.util.List,java.lang.StringBuilder)>($r27, $r29);	$r28 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedQueryNamesAndValues>;	if $r28 == null goto $r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	$r9 = r1.<okhttp3.HttpUrl$Builder: java.lang.String encodedFragment>;	if $r9 == null goto $r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r10, "StringBuilder().apply(builderAction).toString()");	return $r10
;block_num 14