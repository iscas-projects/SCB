(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3696 0)
(declare-sort var903 0)
(declare-sort var3943 0)
(declare-sort var3391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3943_checkNotNullParameter/-2060636419 (var3391 String) void)
(declare-fun cast-from-String-to-var3391 (String) var3391)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3943_checkNotNullExpressionValue/47304269 (var3391 String) void)
(declare-const null-var3696 var3696)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1852 var3696) ; Statement: r3 := @this: okhttp3.HttpUrl$Companion 
(assert (not (= var1852 null-var3696)))
(declare-const var3373 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var3373 null-String)))
(declare-const var2865 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2865 null-Int)))
(declare-const var3551 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3551 null-Int)))
(declare-const var999 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var999 null-Bool)))
;(assert (var3943_checkNotNullParameter/-2060636419 (cast-from-String-to-var3391 var3373) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var3373!1 String)
(declare-const var2381 String)
(define-const var320 Int var2865) ; Statement: i3 = i0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(assert (>= var320 var3551)) ; Cond: i3 >= i1 
(assert (and true (and (>= var2865 0) (>= (str.len var3373!1) var3551) (>= var3551 var2865))))
(define-const var1877 String (substring/-1240304868 var3373!1 var2865 var3551)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
;(assert (var3943_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3391 var1877) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r1, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var1877!1 String)
(declare-const var1337 String)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3943_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3391=([java.lang.String], java.lang.Object), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3943_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void)}
; {var3696=okhttp3.HttpUrl$Companion, var1852=r3, var3373=$r0, var903=null_type, var2865=i0, var3551=i1, var999=z0, var3943=kotlin.jvm.internal.Intrinsics, var3391=java.lang.Object, var2381="<this>", var320=i3, var1877=$r1, var1337="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl$Companion=var3696, r3=var1852, $r0=var3373, null_type=var903, i0=var2865, i1=var3551, z0=var999, kotlin.jvm.internal.Intrinsics=var3943, java.lang.Object=var3391, "<this>"=var2381, i3=var320, $r1=var1877, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var1337}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Companion;	$r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	z0 := @parameter3: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	i3 = i0;	if i3 >= i1 goto $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r1, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r1
;block_num 3