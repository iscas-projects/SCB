(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2565 0)
(declare-sort var331 0)
(declare-sort var2587 0)
(declare-sort var3568 0)
(declare-sort var1271 0)
(declare-sort var2559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2587_checkNotNullParameter/-2060636419 (var331 String) void)
(declare-fun cast-from-String-to-var331 (String) var331)
(declare-fun cast-from-__Array__Int__var331__-to-var331 ((Array Int var331)) var331)
(declare-fun getLength-Arr-var331-1 ((Array Int var331)) Int)
(declare-fun var2559_copyOf/-1140654950 ((Array Int var331) Int) (Array Int var331))
(declare-fun String_format/-647569892 (var1271 String (Array Int var331)) String)
(declare-fun var2587_checkNotNullExpressionValue/47304269 (var331 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var331__ (Array Int var331))
(declare-const var3568-INSTANCE var3568)
(declare-const var1271-US var1271)
(declare-const var2443 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2443 null-String)))
(declare-const var71 (Array Int var331)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var71 null-__Array__Int__var331__)))
;(assert (var2587_checkNotNullParameter/-2060636419 (cast-from-String-to-var331 var2443) "format")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "format") 

(declare-const var2443!1 String)
(declare-const var2120 String)
;(assert (var2587_checkNotNullParameter/-2060636419 (cast-from-__Array__Int__var331__-to-var331 var71) "args")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "args") 

(declare-const var71!1 (Array Int var331))
(declare-const var797 String)
(define-const var3937 var3568 var3568-INSTANCE) ; Statement: $r2 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE> 
(define-const var2829 var1271 var1271-US) ; Statement: r3 = <java.util.Locale: java.util.Locale US> 
(define-const var2841 Int (getLength-Arr-var331-1 var71!1)) ; Statement: $i0 = lengthof r1 
(define-const var1201 (Array Int var331) (var2559_copyOf/-1140654950 var71!1 var2841)) ; Statement: r4 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r1, $i0) 
(define-const var234 Int (getLength-Arr-var331-1 var1201)) ; Statement: $i1 = lengthof r4 
(define-const var1041 (Array Int var331) (var2559_copyOf/-1140654950 var1201 var234)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r4, $i1) 
(define-const var2330 String (String_format/-647569892 var2829 var2443!1 var1041)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>(r3, r0, $r5) 
;(assert (var2587_checkNotNullExpressionValue/47304269 (cast-from-String-to-var331 var2330) "format(locale, format, *args)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "format(locale, format, *args)") 

(declare-const var2330!1 String)
(declare-const var3367 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2587_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var331=([java.lang.String], java.lang.Object), cast-from-__Array__Int__var331__-to-var331=([java.lang.Object[]], java.lang.Object), getLength-Arr-var331-1=([java.lang.Object[]], int), var2559_copyOf/-1140654950=([java.lang.Object[], int], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var2587_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void)}
; {var2443=r0, var2565=null_type, var331=java.lang.Object, var71=r1, var2587=kotlin.jvm.internal.Intrinsics, var2120="format", var797="args", var3568=kotlin.jvm.internal.StringCompanionObject, var3937=$r2, var1271=java.util.Locale, var2829=r3, var2841=$i0, var2559=java.util.Arrays, var1201=r4, var234=$i1, var1041=$r5, var2330=$r6, var3367="format(locale, format, *args)"}
; {r0=var2443, null_type=var2565, java.lang.Object=var331, r1=var71, kotlin.jvm.internal.Intrinsics=var2587, "format"=var2120, "args"=var797, kotlin.jvm.internal.StringCompanionObject=var3568, $r2=var3937, java.util.Locale=var1271, r3=var2829, $i0=var2841, java.util.Arrays=var2559, r4=var1201, $i1=var234, $r5=var1041, $r6=var2330, "format(locale, format, *args)"=var3367}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "format");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "args");	$r2 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE>;	r3 = <java.util.Locale: java.util.Locale US>;	$i0 = lengthof r1;	r4 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r1, $i0);	$i1 = lengthof r4;	$r5 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r4, $i1);	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>(r3, r0, $r5);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "format(locale, format, *args)");	return $r6
;block_num 1