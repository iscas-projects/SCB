(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3583 0)
(declare-sort var2909 0)
(declare-sort var1933 0)
(declare-sort var3972 0)
(declare-sort var224 0)
(declare-sort var501 0)
(declare-sort var3258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1933_checkNotNullParameter/-2060636419 (var3972 String) void)
(declare-fun cast-from-String-to-var3972 (String) var3972)
(define-fun cast-from-var3583-to-var3583 ((arg var3583)) var3583 arg)
(declare-fun var224_percentDecode$okhttp$default/1912586137 (var224 String Int Int Bool Int var3972) String)
(declare-fun var3258_toCanonicalHost/367558819 (String) String)
(declare-fun host/627676127 (var3583) String)
(declare-const null-var3583 var3583)
(declare-const null-String String)
(declare-const var501-Companion var224)
(declare-const null-var3972 var3972)
(declare-const var1844 var3583) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1844 null-var3583)))
(declare-const var2920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2920 null-String)))
;(assert (var1933_checkNotNullParameter/-2060636419 (cast-from-String-to-var3972 var2920) "host")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "host") 

(declare-const var2920!1 String)
(declare-const var3088 String)
(define-const var1566 var3583 (cast-from-var3583-to-var3583 var1844)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var3908 var224 var501-Companion) ; Statement: $r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3731 String (var224_percentDecode$okhttp$default/1912586137 var3908 var2920!1 0 0 (ite (= 1 0) true false) 7 null-var3972)) ; Statement: $r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String percentDecode$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,boolean,int,java.lang.Object)>($r3, r0, 0, 0, 0, 7, null) 
(define-const var322 String (var3258_toCanonicalHost/367558819 var3731)) ; Statement: $r5 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>($r4) 
 ; Statement: if $r5 != null goto $r2.<okhttp3.HttpUrl$Builder: java.lang.String host> = $r5 
(assert (not (= var322 null-String))) ; Cond: $r5 != null 
(declare-const var1566!1 var3583)
(assert (not (= var1566!1 null-var3583)))
(assert (= (host/627676127 var1566!1) var322)) ; Statement: $r2.<okhttp3.HttpUrl$Builder: java.lang.String host> = $r5 
(define-const var1215 var3583 (cast-from-var3583-to-var3583 var1844)) ; Statement: $r6 = (okhttp3.HttpUrl$Builder) r1 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1933_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3972=([java.lang.String], java.lang.Object), cast-from-var3583-to-var3583=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var224_percentDecode$okhttp$default/1912586137=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, boolean, int, java.lang.Object], java.lang.String), var3258_toCanonicalHost/367558819=([java.lang.String], java.lang.String), host/627676127=([okhttp3.HttpUrl$Builder], java.lang.String)}
; {var3583=okhttp3.HttpUrl$Builder, var1844=r1, var2920=r0, var2909=null_type, var1933=kotlin.jvm.internal.Intrinsics, var3972=java.lang.Object, var3088="host", var1566=$r2, var224=okhttp3.HttpUrl$Companion, var501=okhttp3.HttpUrl, var3908=$r3, var3731=$r4, var3258=okhttp3.internal.HostnamesKt, var322=$r5, var1215=$r6}
; {okhttp3.HttpUrl$Builder=var3583, r1=var1844, r0=var2920, null_type=var2909, kotlin.jvm.internal.Intrinsics=var1933, java.lang.Object=var3972, "host"=var3088, $r2=var1566, okhttp3.HttpUrl$Companion=var224, okhttp3.HttpUrl=var501, $r3=var3908, $r4=var3731, okhttp3.internal.HostnamesKt=var3258, $r5=var322, $r6=var1215}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "host");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String percentDecode$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,boolean,int,java.lang.Object)>($r3, r0, 0, 0, 0, 7, null);	$r5 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>($r4);	if $r5 != null goto $r2.<okhttp3.HttpUrl$Builder: java.lang.String host> = $r5;	$r2.<okhttp3.HttpUrl$Builder: java.lang.String host> = $r5;	$r6 = (okhttp3.HttpUrl$Builder) r1;	return $r6
;block_num 2