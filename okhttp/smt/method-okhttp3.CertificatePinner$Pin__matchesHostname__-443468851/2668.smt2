(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1639 0)
(declare-sort var2732 0)
(declare-sort var1516 0)
(declare-sort var2527 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1516_checkNotNullParameter/-2060636419 (var2527 String) void)
(declare-fun cast-from-String-to-var2527 (String) var2527)
(declare-fun pattern/487783471 (var1639) String)
(declare-fun var3466_startsWith$default/493066340 (String String Bool Int var2527) Bool)
(declare-fun var1516_areEqual/-886455880 (var2527 var2527) Bool)
(declare-const null-var1639 var1639)
(declare-const null-String String)
(declare-const null-var2527 var2527)
(declare-const var497 var1639) ; Statement: r1 := @this: okhttp3.CertificatePinner$Pin 
(assert (not (= var497 null-var1639)))
(declare-const var2616 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2616 null-String)))
;(assert (var1516_checkNotNullParameter/-2060636419 (cast-from-String-to-var2527 var2616) "hostname")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "hostname") 

(declare-const var2616!1 String)
(declare-const var2543 String)
(define-const var628 String (pattern/487783471 var497)) ; Statement: $r2 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(define-const var162 Bool (var3466_startsWith$default/493066340 var628 "**." (ite (= 1 0) true false) 2 null-var2527)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r2, "**.", 0, 2, null) 
 ; Statement: if $z0 == 0 goto $r3 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(assert (= (ite var162 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3069 String (pattern/487783471 var497)) ; Statement: $r3 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(define-const var3377 Bool (var3466_startsWith$default/493066340 var3069 "*." (ite (= 1 0) true false) 2 null-var2527)) ; Statement: $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r3, "*.", 0, 2, null) 
 ; Statement: if $z1 == 0 goto $r4 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(assert (= (ite var3377 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2179 String (pattern/487783471 var497)) ; Statement: $r4 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(define-const var2698 Bool (var1516_areEqual/-886455880 (cast-from-String-to-var2527 var2616!1) (cast-from-String-to-var2527 var2179))) ; Statement: $z4 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>(r0, $r4) 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1516_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2527=([java.lang.String], java.lang.Object), pattern/487783471=([okhttp3.CertificatePinner$Pin], java.lang.String), var3466_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), var1516_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean)}
; {var1639=okhttp3.CertificatePinner$Pin, var497=r1, var2616=r0, var2732=null_type, var1516=kotlin.jvm.internal.Intrinsics, var2527=java.lang.Object, var2543="hostname", var628=$r2, var3466=kotlin.text.StringsKt, var162=$z0, var3069=$r3, var3377=$z1, var2179=$r4, var2698=$z4}
; {okhttp3.CertificatePinner$Pin=var1639, r1=var497, r0=var2616, null_type=var2732, kotlin.jvm.internal.Intrinsics=var1516, java.lang.Object=var2527, "hostname"=var2543, $r2=var628, kotlin.text.StringsKt=var3466, $z0=var162, $r3=var3069, $z1=var3377, $r4=var2179, $z4=var2698}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CertificatePinner$Pin;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "hostname");	$r2 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r2, "**.", 0, 2, null);	if $z0 == 0 goto $r3 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$r3 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r3, "*.", 0, 2, null);	if $z1 == 0 goto $r4 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$r4 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$z4 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>(r0, $r4);	return $z4
;block_num 4