(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var584 0)
(declare-sort var1855 0)
(declare-sort var3998 0)
(declare-sort var2154 0)
(declare-sort var2973 0)
(declare-sort var3754 0)
(declare-sort var1567 0)
(declare-sort var124 0)
(declare-sort var1750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2154_checkNotNullParameter/-2060636419 (var2973 String) void)
(declare-fun cast-from-String-to-var2973 (String) var2973)
(declare-fun var3754_indexOfFirstNonAsciiWhitespace$default/1788129714 (String Int Int Int var2973) Int)
(declare-fun var3754_indexOfLastNonAsciiWhitespace$default/453564748 (String Int Int Int var2973) Int)
(declare-fun var1567_access$schemeDelimiterOffset/-1082311082 (var1567 String Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var124_take/-1080846716 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1750-init () var1750)
(declare-fun <init>/875830710 (var1750 String) void)
(declare-const null-var584 var584)
(declare-const null-var1855 var1855)
(declare-const null-String String)
(declare-const null-var2973 var2973)
(declare-const var584-Companion var1567)
(declare-const var1558 var584) ; Statement: r12 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1558 null-var584)))
(declare-const var3953 var1855) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var3953 null-var1855)))
(declare-const var281 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var281 null-String)))
;(assert (var2154_checkNotNullParameter/-2060636419 (cast-from-String-to-var2973 var281) "input")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "input") 

(declare-const var281!1 String)
(declare-const var3441 String)
(define-const var524 Int (var3754_indexOfFirstNonAsciiWhitespace$default/1788129714 var281!1 0 0 3 null-var2973)) ; Statement: i16 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, 0, 0, 3, null) 
(define-const var2446 Int (var3754_indexOfLastNonAsciiWhitespace$default/453564748 var281!1 var524 0 2 null-var2973)) ; Statement: i0 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, i16, 0, 2, null) 
(define-const var712 var1567 var584-Companion) ; Statement: $r1 = <okhttp3.HttpUrl$Builder: okhttp3.HttpUrl$Builder$Companion Companion> 
(define-const var3549 Int (var1567_access$schemeDelimiterOffset/-1082311082 var712 var281!1 var524 var2446)) ; Statement: i1 = staticinvoke <okhttp3.HttpUrl$Builder$Companion: int access$schemeDelimiterOffset(okhttp3.HttpUrl$Builder$Companion,java.lang.String,int,int)>($r1, r0, i16, i0) 
(define-const var3657 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i27 = (int) -1 
 ; Statement: if i1 == $i27 goto (branch) 
(assert (= var3549 var3657)) ; Cond: i1 == $i27 
 ; Statement: if r2 == null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= var3953 null-var1855)) ; Cond: r2 == null 
(assert true)
(define-const var1593 Int (length/-134980193 var281!1)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i2 <= 6 goto $r79 = r0 
(assert (not (<= var1593 6))) ; Negate: Cond: $i2 <= 6  
(define-const var3860 String String-init) ; Statement: $r86 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3860)) ; Statement: specialinvoke $r86.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3860!1 String)
(assert (= var3860!1 ""))
(define-const var44 String (var124_take/-1080846716 var281!1 6)) ; Statement: $r9 = staticinvoke <kotlin.text.StringsKt: java.lang.String take(java.lang.String,int)>(r0, 6) 
(assert true)
(define-const var1333 String (append/672562846 var3860!1 var44)) ; Statement: $r10 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3860!2 String)
(assert (= var3860!2 (str.++ var3860!1 var44)))
(assert true)
(define-const var274 String (append/672562846 var1333 "...")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var1333!1 String)
(assert (= var1333!1 (str.++ var1333 "...")))
(assert true)
(define-const var3756 String (toString/-2075883882 var274)) ; Statement: $r79 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r88 = new java.lang.IllegalArgumentException] 
(assert true) ; Non Conditional
(define-const var3444 var1750 var1750-init) ; Statement: $r88 = new java.lang.IllegalArgumentException 
(define-const var3778 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3778)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3778!1 String)
(assert (= var3778!1 ""))
(assert true)
(define-const var3215 String (append/672562846 var3778!1 "Expected URL scheme \u0027http\u0027 or \u0027https\u0027 but no scheme was found for ")) ; Statement: $r5 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected URL scheme \'http\' or \'https\' but no scheme was found for ") 
(declare-const var3778!2 String)
(assert (= var3778!2 (str.++ var3778!1 "Expected URL scheme \u0027http\u0027 or \u0027https\u0027 but no scheme was found for ")))
(assert true)
(define-const var1377 String (append/672562846 var3215 var3756)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var3215!1 String)
(assert (= var3215!1 (str.++ var3215 var3756)))
(assert true)
(define-const var34 String (toString/-2075883882 var1377)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3444 var34)) ; Statement: specialinvoke $r88.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3444!1 var1750)
(declare-const var34!1 String)
 ; Statement: throw $r88 
(check-sat)
(get-model)
(get-unsat-core)
; {var2154_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2973=([java.lang.String], java.lang.Object), var3754_indexOfFirstNonAsciiWhitespace$default/1788129714=([java.lang.String, int, int, int, java.lang.Object], int), var3754_indexOfLastNonAsciiWhitespace$default/453564748=([java.lang.String, int, int, int, java.lang.Object], int), var1567_access$schemeDelimiterOffset/-1082311082=([okhttp3.HttpUrl$Builder$Companion, java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var124_take/-1080846716=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1750-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var584=okhttp3.HttpUrl$Builder, var1558=r12, var1855=okhttp3.HttpUrl, var3953=r2, var281=r0, var3998=null_type, var2154=kotlin.jvm.internal.Intrinsics, var2973=java.lang.Object, var3441="input", var3754=okhttp3.internal.Util, var524=i16, var2446=i0, var1567=okhttp3.HttpUrl$Builder$Companion, var712=$r1, var3549=i1, var3657=$i27, var1593=$i2, var3860=$r86, var124=kotlin.text.StringsKt, var44=$r9, var1333=$r10, var274=$r11, var3756=$r79, var1750=java.lang.IllegalArgumentException, var3444=$r88, var3778=$r87, var3215=$r5, var1377=$r6, var34=$r7}
; {okhttp3.HttpUrl$Builder=var584, r12=var1558, okhttp3.HttpUrl=var1855, r2=var3953, r0=var281, null_type=var3998, kotlin.jvm.internal.Intrinsics=var2154, java.lang.Object=var2973, "input"=var3441, okhttp3.internal.Util=var3754, i16=var524, i0=var2446, okhttp3.HttpUrl$Builder$Companion=var1567, $r1=var712, i1=var3549, $i27=var3657, $i2=var1593, $r86=var3860, kotlin.text.StringsKt=var124, $r9=var44, $r10=var1333, $r11=var274, $r79=var3756, java.lang.IllegalArgumentException=var1750, $r88=var3444, $r87=var3778, $r5=var3215, $r6=var1377, $r7=var34}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r12 := @this: okhttp3.HttpUrl$Builder;	r2 := @parameter0: okhttp3.HttpUrl;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "input");	i16 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, 0, 0, 3, null);	i0 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, i16, 0, 2, null);	$r1 = <okhttp3.HttpUrl$Builder: okhttp3.HttpUrl$Builder$Companion Companion>;	i1 = staticinvoke <okhttp3.HttpUrl$Builder$Companion: int access$schemeDelimiterOffset(okhttp3.HttpUrl$Builder$Companion,java.lang.String,int,int)>($r1, r0, i16, i0);	$i27 = (int) -1;	if i1 == $i27 goto (branch);	if r2 == null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if $i2 <= 6 goto $r79 = r0;	$r86 = new java.lang.StringBuilder;	specialinvoke $r86.<java.lang.StringBuilder: void <init>()>();	$r9 = staticinvoke <kotlin.text.StringsKt: java.lang.String take(java.lang.String,int)>(r0, 6);	$r10 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	$r79 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r88 = new java.lang.IllegalArgumentException];	$r88 = new java.lang.IllegalArgumentException;	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected URL scheme \'http\' or \'https\' but no scheme was found for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r88.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r88
;block_num 5