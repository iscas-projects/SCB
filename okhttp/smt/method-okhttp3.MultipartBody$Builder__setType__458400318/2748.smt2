(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1931 0)
(declare-sort var1068 0)
(declare-sort var3801 0)
(declare-sort var1875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3801_checkNotNullParameter/-2060636419 (var1875 String) void)
(declare-fun cast-from-var1068-to-var1875 (var1068) var1875)
(define-fun cast-from-var1931-to-var1931 ((arg var1931)) var1931 arg)
(declare-fun type/-970379247 (var1068) String)
(declare-fun var3801_areEqual/-886455880 (var1875 var1875) Bool)
(declare-fun cast-from-String-to-var1875 (String) var1875)
(declare-fun type/-633185082 (var1931) var1068)
(declare-const null-var1931 var1931)
(declare-const null-var1068 var1068)
(declare-const var2590 var1931) ; Statement: r1 := @this: okhttp3.MultipartBody$Builder 
(assert (not (= var2590 null-var1931)))
(declare-const var1274 var1068) ; Statement: r0 := @parameter0: okhttp3.MediaType 
(assert (not (= var1274 null-var1068)))
;(assert (var3801_checkNotNullParameter/-2060636419 (cast-from-var1068-to-var1875 var1274) "type")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "type") 

(declare-const var1274!1 var1068)
(declare-const var1431 String)
(define-const var140 var1931 (cast-from-var1931-to-var1931 var2590)) ; Statement: $r2 = (okhttp3.MultipartBody$Builder) r1 
(assert true)
(define-const var3188 String (type/-970379247 var1274!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.MediaType: java.lang.String type()>() 
(define-const var1046 Bool (var3801_areEqual/-886455880 (cast-from-String-to-var1875 var3188) (cast-from-String-to-var1875 "multipart"))) ; Statement: $z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>($r3, "multipart") 
 ; Statement: if $z0 != 0 goto $r2.<okhttp3.MultipartBody$Builder: okhttp3.MediaType type> = r0 
(assert (not (= (ite var1046 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var140!1 var1931)
(assert (not (= var140!1 null-var1931)))
(assert (= (type/-633185082 var140!1) var1274!1)) ; Statement: $r2.<okhttp3.MultipartBody$Builder: okhttp3.MediaType type> = r0 
(define-const var2642 var1931 (cast-from-var1931-to-var1931 var2590)) ; Statement: $r4 = (okhttp3.MultipartBody$Builder) r1 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3801_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1068-to-var1875=([okhttp3.MediaType], java.lang.Object), cast-from-var1931-to-var1931=([okhttp3.MultipartBody$Builder], okhttp3.MultipartBody$Builder), type/-970379247=([okhttp3.MediaType], java.lang.String), var3801_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var1875=([java.lang.String], java.lang.Object), type/-633185082=([okhttp3.MultipartBody$Builder], okhttp3.MediaType)}
; {var1931=okhttp3.MultipartBody$Builder, var2590=r1, var1068=okhttp3.MediaType, var1274=r0, var3801=kotlin.jvm.internal.Intrinsics, var1875=java.lang.Object, var1431="type", var140=$r2, var3188=$r3, var1046=$z0, var2642=$r4}
; {okhttp3.MultipartBody$Builder=var1931, r1=var2590, okhttp3.MediaType=var1068, r0=var1274, kotlin.jvm.internal.Intrinsics=var3801, java.lang.Object=var1875, "type"=var1431, $r2=var140, $r3=var3188, $z0=var1046, $r4=var2642}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.MultipartBody$Builder;	r0 := @parameter0: okhttp3.MediaType;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "type");	$r2 = (okhttp3.MultipartBody$Builder) r1;	$r3 = virtualinvoke r0.<okhttp3.MediaType: java.lang.String type()>();	$z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>($r3, "multipart");	if $z0 != 0 goto $r2.<okhttp3.MultipartBody$Builder: okhttp3.MediaType type> = r0;	$r2.<okhttp3.MultipartBody$Builder: okhttp3.MediaType type> = r0;	$r4 = (okhttp3.MultipartBody$Builder) r1;	return $r4
;block_num 2