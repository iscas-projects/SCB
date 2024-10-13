(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3479 0)
(declare-sort var1183 0)
(declare-sort var85 0)
(declare-sort var1688 0)
(declare-sort var2618 0)
(declare-sort var1792 0)
(declare-sort var2284 0)
(declare-sort var3913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var85_checkNotNullParameter/-2060636419 (var1688 String) void)
(declare-fun cast-from-String-to-var1688 (String) var1688)
(define-fun cast-from-var3479-to-var3479 ((arg var3479)) var3479 arg)
(declare-fun var2618_percentDecode$okhttp$default/1912586137 (var2618 String Int Int Bool Int var1688) String)
(declare-fun var2284_toCanonicalHost/367558819 (String) String)
(declare-fun var3913-init () var3913)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3913 String) void)
(declare-const null-var3479 var3479)
(declare-const null-String String)
(declare-const var1792-Companion var2618)
(declare-const null-var1688 var1688)
(declare-const var2045 var3479) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2045 null-var3479)))
(declare-const var532 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var532 null-String)))
;(assert (var85_checkNotNullParameter/-2060636419 (cast-from-String-to-var1688 var532) "host")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "host") 

(declare-const var532!1 String)
(declare-const var2521 String)
(define-const var3794 var3479 (cast-from-var3479-to-var3479 var2045)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var3159 var2618 var1792-Companion) ; Statement: $r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var240 String (var2618_percentDecode$okhttp$default/1912586137 var3159 var532!1 0 0 (ite (= 1 0) true false) 7 null-var1688)) ; Statement: $r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String percentDecode$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,boolean,int,java.lang.Object)>($r3, r0, 0, 0, 0, 7, null) 
(define-const var285 String (var2284_toCanonicalHost/367558819 var240)) ; Statement: $r5 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>($r4) 
 ; Statement: if $r5 != null goto $r2.<okhttp3.HttpUrl$Builder: java.lang.String host> = $r5 
(assert (not (not (= var285 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var2006 var3913 var3913-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1295 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1295)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1295!1 String)
(assert (= var1295!1 ""))
(assert true)
(define-const var3796 String (append/672562846 var1295!1 "unexpected host: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected host: ") 
(declare-const var1295!2 String)
(assert (= var1295!2 (str.++ var1295!1 "unexpected host: ")))
(assert true)
(define-const var790 String (append/672562846 var3796 var532!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3796!1 String)
(assert (= var3796!1 (str.++ var3796 var532!1)))
(assert true)
(define-const var2511 String (toString/-2075883882 var790)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2006 var2511)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2006!1 var3913)
(declare-const var2511!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var85_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1688=([java.lang.String], java.lang.Object), cast-from-var3479-to-var3479=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var2618_percentDecode$okhttp$default/1912586137=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, boolean, int, java.lang.Object], java.lang.String), var2284_toCanonicalHost/367558819=([java.lang.String], java.lang.String), var3913-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3479=okhttp3.HttpUrl$Builder, var2045=r1, var532=r0, var1183=null_type, var85=kotlin.jvm.internal.Intrinsics, var1688=java.lang.Object, var2521="host", var3794=$r2, var2618=okhttp3.HttpUrl$Companion, var1792=okhttp3.HttpUrl, var3159=$r3, var240=$r4, var2284=okhttp3.internal.HostnamesKt, var285=$r5, var3913=java.lang.IllegalArgumentException, var2006=$r7, var1295=$r8, var3796=$r9, var790=$r10, var2511=$r11}
; {okhttp3.HttpUrl$Builder=var3479, r1=var2045, r0=var532, null_type=var1183, kotlin.jvm.internal.Intrinsics=var85, java.lang.Object=var1688, "host"=var2521, $r2=var3794, okhttp3.HttpUrl$Companion=var2618, okhttp3.HttpUrl=var1792, $r3=var3159, $r4=var240, okhttp3.internal.HostnamesKt=var2284, $r5=var285, java.lang.IllegalArgumentException=var3913, $r7=var2006, $r8=var1295, $r9=var3796, $r10=var790, $r11=var2511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "host");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String percentDecode$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,boolean,int,java.lang.Object)>($r3, r0, 0, 0, 0, 7, null);	$r5 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>($r4);	if $r5 != null goto $r2.<okhttp3.HttpUrl$Builder: java.lang.String host> = $r5;	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected host: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2