(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort var871 0)
(declare-sort var2668 0)
(declare-sort var2034 0)
(declare-sort var3807 0)
(declare-sort var492 0)
(declare-sort var2018 0)
(declare-sort var1863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2668_checkNotNullParameter/-2060636419 (var2034 String) void)
(declare-fun cast-from-String-to-var2034 (String) var2034)
(define-fun cast-from-var978-to-var978 ((arg var978)) var978 arg)
(declare-fun var3807_canonicalize$okhttp$default/-759723081 (var3807 String Int Int String Bool Bool Bool Bool var2018 Int var2034) String)
(declare-fun isDot/-1767506460 (var978 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1863-init () var1863)
(declare-fun toString/-522406933 (var2034) String)
(declare-fun <init>/875830710 (var1863 String) void)
(declare-const null-var978 var978)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var492-Companion var3807)
(declare-const null-var2018 var2018)
(declare-const null-var2034 var2034)
(declare-const var1089 var978) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1089 null-var978)))
(declare-const var2107 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2107 null-Int)))
(declare-const var819 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var819 null-String)))
;(assert (var2668_checkNotNullParameter/-2060636419 (cast-from-String-to-var2034 var819) "pathSegment")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pathSegment") 

(declare-const var819!1 String)
(declare-const var1469 String)
(define-const var832 var978 (cast-from-var978-to-var978 var1089)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var2584 var3807 var492-Companion) ; Statement: $r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3409 String (var3807_canonicalize$okhttp$default/-759723081 var2584 var819!1 0 0 " \u0022<>^`{}|/\u005c?#" (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var2018 251 null-var2034)) ; Statement: r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 0, 0, 0, 0, null, 251, null) 
(assert true)
(define-const var995 Bool (isDot/-1767506460 var832 var3409)) ; Statement: $z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4) 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var995 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2943 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (not (= (ite var2943 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2749 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2749)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2749!1 String)
(assert (= var2749!1 ""))
(assert true)
(define-const var3304 String (append/672562846 var2749!1 "unexpected path segment: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected path segment: ") 
(declare-const var2749!2 String)
(assert (= var2749!2 (str.++ var2749!1 "unexpected path segment: ")))
(assert true)
(define-const var969 String (append/672562846 var3304 var819!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3304!1 String)
(assert (= var3304!1 (str.++ var3304 var819!1)))
(assert true)
(define-const var930 String (toString/-2075883882 var969)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var9 var1863 var1863-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var226 String (toString/-522406933 (cast-from-String-to-var2034 var930))) ; Statement: $r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var9 var226)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var9!1 var1863)
(declare-const var226!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2668_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2034=([java.lang.String], java.lang.Object), cast-from-var978-to-var978=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var3807_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1863-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var978=okhttp3.HttpUrl$Builder, var1089=r1, var2107=i0, var819=r0, var871=null_type, var2668=kotlin.jvm.internal.Intrinsics, var2034=java.lang.Object, var1469="pathSegment", var832=$r2, var3807=okhttp3.HttpUrl$Companion, var492=okhttp3.HttpUrl, var2584=$r3, var2018=java.nio.charset.Charset, var3409=r4, var995=$z0, var2943=$z2, var2749=$r7, var3304=$r8, var969=$r9, var930=$r12, var1863=java.lang.IllegalArgumentException, var9=$r10, var226=$r11}
; {okhttp3.HttpUrl$Builder=var978, r1=var1089, i0=var2107, r0=var819, null_type=var871, kotlin.jvm.internal.Intrinsics=var2668, java.lang.Object=var2034, "pathSegment"=var1469, $r2=var832, okhttp3.HttpUrl$Companion=var3807, okhttp3.HttpUrl=var492, $r3=var2584, java.nio.charset.Charset=var2018, r4=var3409, $z0=var995, $z2=var2943, $r7=var2749, $r8=var3304, $r9=var969, $r12=var930, java.lang.IllegalArgumentException=var1863, $r10=var9, $r11=var226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pathSegment");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 0, 0, 0, 0, null, 251, null);	$z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4);	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected path segment: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r10
;block_num 4