(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1598 0)
(declare-sort var2083 0)
(declare-sort var1314 0)
(declare-sort var897 0)
(declare-sort var2091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var897_checkNotNullParameter/-2060636419 (var2091 String) void)
(declare-fun cast-from-String-to-var2091 (String) var2091)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var897_checkNotNullExpressionValue/47304269 (var2091 String) void)
(declare-const null-var1598 var1598)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1314 var1314)
(declare-const var3946 var1598) ; Statement: r3 := @this: okhttp3.HttpUrl$Companion 
(assert (not (= var3946 null-var1598)))
(declare-const var1110 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var1110 null-String)))
(declare-const var3926 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3926 null-Int)))
(declare-const var3406 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3406 null-Int)))
(declare-const var3365 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3365 null-String)))
(declare-const var1578 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1578 null-Bool)))
(declare-const var3692 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var3692 null-Bool)))
(declare-const var1178 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var1178 null-Bool)))
(declare-const var3154 Bool) ; Statement: z3 := @parameter7: boolean 
(assert (not (= var3154 null-Bool)))
(declare-const var793 var1314) ; Statement: r4 := @parameter8: java.nio.charset.Charset 
(assert (not (= var793 null-var1314)))
;(assert (var897_checkNotNullParameter/-2060636419 (cast-from-String-to-var2091 var1110) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var1110!1 String)
(declare-const var1449 String)
;(assert (var897_checkNotNullParameter/-2060636419 (cast-from-String-to-var2091 var3365) "encodeSet")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "encodeSet") 

(declare-const var3365!1 String)
(declare-const var1015 String)
(define-const var2659 Int var3926) ; Statement: i4 = i0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto $r2 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(assert (>= var2659 var3406)) ; Cond: i4 >= i1 
(assert (and true (and (>= var3926 0) (>= (str.len var1110!1) var3406) (>= var3406 var3926))))
(define-const var2702 String (substring/-1240304868 var1110!1 var3926 var3406)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
;(assert (var897_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2091 var2702) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var2702!1 String)
(declare-const var3321 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var897_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2091=([java.lang.String], java.lang.Object), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var897_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void)}
; {var1598=okhttp3.HttpUrl$Companion, var3946=r3, var1110=$r0, var2083=null_type, var3926=i0, var3406=i1, var3365=r1, var1578=z0, var3692=z1, var1178=z2, var3154=z3, var1314=java.nio.charset.Charset, var793=r4, var897=kotlin.jvm.internal.Intrinsics, var2091=java.lang.Object, var1449="<this>", var1015="encodeSet", var2659=i4, var2702=$r2, var3321="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {okhttp3.HttpUrl$Companion=var1598, r3=var3946, $r0=var1110, null_type=var2083, i0=var3926, i1=var3406, r1=var3365, z0=var1578, z1=var3692, z2=var1178, z3=var3154, java.nio.charset.Charset=var1314, r4=var793, kotlin.jvm.internal.Intrinsics=var897, java.lang.Object=var2091, "<this>"=var1449, "encodeSet"=var1015, i4=var2659, $r2=var2702, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var3321}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: okhttp3.HttpUrl$Companion;	$r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r1 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	z1 := @parameter5: boolean;	z2 := @parameter6: boolean;	z3 := @parameter7: boolean;	r4 := @parameter8: java.nio.charset.Charset;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "encodeSet");	i4 = i0;	if i4 >= i1 goto $r2 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r2 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r2
;block_num 3