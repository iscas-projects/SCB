(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1185 0)
(declare-sort var1143 0)
(declare-sort var650 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1143_checkNotNullParameter/-2060636419 (var650 String) void)
(declare-fun cast-from-String-to-var650 (String) var650)
(declare-fun var2043_indexOfFirstNonAsciiWhitespace/-807313487 (String Int Int) Int)
(declare-fun var2043_indexOfLastNonAsciiWhitespace/-307236393 (String Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1143_checkNotNullExpressionValue/47304269 (var650 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var862 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var862 null-String)))
(declare-const var1379 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1379 null-Int)))
(declare-const var2491 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2491 null-Int)))
;(assert (var1143_checkNotNullParameter/-2060636419 (cast-from-String-to-var650 var862) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var862!1 String)
(declare-const var2953 String)
(define-const var3033 Int (var2043_indexOfFirstNonAsciiWhitespace/-807313487 var862!1 var1379 var2491)) ; Statement: i2 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace(java.lang.String,int,int)>($r0, i0, i1) 
(define-const var1506 Int (var2043_indexOfLastNonAsciiWhitespace/-307236393 var862!1 var3033 var2491)) ; Statement: i3 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace(java.lang.String,int,int)>($r0, i2, i1) 
(assert (and true (and (>= var3033 0) (>= (str.len var862!1) var1506) (>= var1506 var3033))))
(define-const var3478 String (substring/-1240304868 var862!1 var3033 var1506)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i2, i3) 
;(assert (var1143_checkNotNullExpressionValue/47304269 (cast-from-String-to-var650 var3478) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r1, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var3478!1 String)
(declare-const var114 String)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1143_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var650=([java.lang.String], java.lang.Object), var2043_indexOfFirstNonAsciiWhitespace/-807313487=([java.lang.String, int, int], int), var2043_indexOfLastNonAsciiWhitespace/-307236393=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1143_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void)}
; {var862=$r0, var1185=null_type, var1379=i0, var2491=i1, var1143=kotlin.jvm.internal.Intrinsics, var650=java.lang.Object, var2953="<this>", var2043=okhttp3.internal.Util, var3033=i2, var1506=i3, var3478=$r1, var114="this as java.lang.String\u2026ing(startIndex, endIndex)"}
; {$r0=var862, null_type=var1185, i0=var1379, i1=var2491, kotlin.jvm.internal.Intrinsics=var1143, java.lang.Object=var650, "<this>"=var2953, okhttp3.internal.Util=var2043, i2=var3033, i3=var1506, $r1=var3478, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var114}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts $r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	i2 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace(java.lang.String,int,int)>($r0, i0, i1);	i3 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace(java.lang.String,int,int)>($r0, i2, i1);	$r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int,int)>(i2, i3);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r1, "this as java.lang.String\u2026ing(startIndex, endIndex)");	return $r1
;block_num 1