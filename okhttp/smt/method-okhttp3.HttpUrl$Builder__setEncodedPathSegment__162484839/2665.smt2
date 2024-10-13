(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3184 0)
(declare-sort var672 0)
(declare-sort var3013 0)
(declare-sort var3117 0)
(declare-sort var747 0)
(declare-sort var3140 0)
(declare-sort var3035 0)
(declare-sort var3047 0)
(declare-sort var708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3013_checkNotNullParameter/-2060636419 (var3117 String) void)
(declare-fun cast-from-String-to-var3117 (String) var3117)
(define-fun cast-from-var3184-to-var3184 ((arg var3184)) var3184 arg)
(declare-fun var747_canonicalize$okhttp$default/-759723081 (var747 String Int Int String Bool Bool Bool Bool var3035 Int var3117) String)
(declare-fun encodedPathSegments/627676127 (var3184) var3047)
(declare-fun var3047_set/-1241329960 (var3047 Int var3117) var3117)
(declare-fun isDot/-1767506460 (var3184 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var708-init () var708)
(declare-fun toString/-522406933 (var3117) String)
(declare-fun <init>/875830710 (var708 String) void)
(declare-const null-var3184 var3184)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3140-Companion var747)
(declare-const null-var3035 var3035)
(declare-const null-var3117 var3117)
(declare-const var885 var3184) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var885 null-var3184)))
(declare-const var2486 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2486 null-Int)))
(declare-const var2456 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2456 null-String)))
;(assert (var3013_checkNotNullParameter/-2060636419 (cast-from-String-to-var3117 var2456) "encodedPathSegment")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPathSegment") 

(declare-const var2456!1 String)
(declare-const var478 String)
(define-const var2191 var3184 (cast-from-var3184-to-var3184 var885)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var3787 var747 var3140-Companion) ; Statement: $r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var1114 String (var747_canonicalize$okhttp$default/-759723081 var3787 var2456!1 0 0 " \u0022<>^`{}|/\u005c?#" (ite (= 1 1) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var3035 243 null-var3117)) ; Statement: r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 1, 0, 0, 0, null, 243, null) 
(define-const var3894 var3047 (encodedPathSegments/627676127 var2191)) ; Statement: $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3047_set/-1241329960 var3894 var2486 (cast-from-String-to-var3117 var1114))) ; Statement: interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i0, r4) 

(declare-const var3894!1 var3047)
(declare-const var2486!1 Int)
(declare-const var1114!1 String)
(assert true)
(define-const var3778 Bool (isDot/-1767506460 var2191 var1114!1)) ; Statement: $z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4) 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3778 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3097 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $r6 = (okhttp3.HttpUrl$Builder) r1 
(assert (not (not (= (ite var3097 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1713 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1713)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1713!1 String)
(assert (= var1713!1 ""))
(assert true)
(define-const var1410 String (append/672562846 var1713!1 "unexpected path segment: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected path segment: ") 
(declare-const var1713!2 String)
(assert (= var1713!2 (str.++ var1713!1 "unexpected path segment: ")))
(assert true)
(define-const var2268 String (append/672562846 var1410 var2456!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1410!1 String)
(assert (= var1410!1 (str.++ var1410 var2456!1)))
(assert true)
(define-const var1467 String (toString/-2075883882 var2268)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2779 var708 var708-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1802 String (toString/-522406933 (cast-from-String-to-var3117 var1467))) ; Statement: $r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2779 var1802)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2779!1 var708)
(declare-const var1802!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3013_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3117=([java.lang.String], java.lang.Object), cast-from-var3184-to-var3184=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var747_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3047_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var708-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3184=okhttp3.HttpUrl$Builder, var885=r1, var2486=i0, var2456=r0, var672=null_type, var3013=kotlin.jvm.internal.Intrinsics, var3117=java.lang.Object, var478="encodedPathSegment", var2191=$r2, var747=okhttp3.HttpUrl$Companion, var3140=okhttp3.HttpUrl, var3787=$r3, var3035=java.nio.charset.Charset, var1114=r4, var3047=java.util.List, var3894=$r5, var3778=$z0, var3097=$z2, var1713=$r7, var1410=$r8, var2268=$r9, var1467=$r12, var708=java.lang.IllegalArgumentException, var2779=$r10, var1802=$r11}
; {okhttp3.HttpUrl$Builder=var3184, r1=var885, i0=var2486, r0=var2456, null_type=var672, kotlin.jvm.internal.Intrinsics=var3013, java.lang.Object=var3117, "encodedPathSegment"=var478, $r2=var2191, okhttp3.HttpUrl$Companion=var747, okhttp3.HttpUrl=var3140, $r3=var3787, java.nio.charset.Charset=var3035, r4=var1114, java.util.List=var3047, $r5=var3894, $z0=var3778, $z2=var3097, $r7=var1713, $r8=var1410, $r9=var2268, $r12=var1467, java.lang.IllegalArgumentException=var708, $r10=var2779, $r11=var1802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPathSegment");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 1, 0, 0, 0, null, 243, null);	$r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i0, r4);	$z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4);	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $r6 = (okhttp3.HttpUrl$Builder) r1;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected path segment: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r10
;block_num 4