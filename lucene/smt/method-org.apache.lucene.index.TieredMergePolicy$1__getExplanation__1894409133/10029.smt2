(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2701 0)
(declare-sort var1798 0)
(declare-sort var925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var925-init () (Array Int var925))
(declare-fun val$skew/-1179400924 (var2701) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var925 (Float64) var925)
(declare-fun String_format/-647569892 (var1798 String (Array Int var925)) String)
(declare-fun val$nonDelRatio/-1179400924 (var2701) Float64)
(declare-const null-var2701 var2701)
(declare-const var1798-ROOT var1798)
(declare-const null-__Array__Int__var925__ (Array Int var925))
(declare-const var2125 var2701) ; Statement: r1 := @this: org.apache.lucene.index.TieredMergePolicy$1 
(assert (not (= var2125 null-var2701)))
(define-const var2967 var1798 var1798-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2857 (Array Int var925) arr-var925-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var702 Float64 (val$skew/-1179400924 var2125)) ; Statement: $d0 = r1.<org.apache.lucene.index.TieredMergePolicy$1: double val$skew> 
(define-const var3190 Float64 (Float64_valueOf/679560954 var702)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
(declare-const var2857!1 (Array Int var925))
(assert (not (= var2857!1 null-__Array__Int__var925__)))
(assert (= (select var2857!1 0) (cast-from-Float64-to-var925 var3190))) ; Statement: $r0[0] = $r3 
(define-const var3964 String (String_format/-647569892 var2967 "%.3f" var2857!1)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%.3f", $r0) 
(define-const var2174 var1798 var1798-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3463 (Array Int var925) arr-var925-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(define-const var3991 Float64 (val$nonDelRatio/-1179400924 var2125)) ; Statement: $d1 = r1.<org.apache.lucene.index.TieredMergePolicy$1: double val$nonDelRatio> 
(define-const var1488 Float64 (Float64_valueOf/679560954 var3991)) ; Statement: $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1) 
(declare-const var3463!1 (Array Int var925))
(assert (not (= var3463!1 null-__Array__Int__var925__)))
(assert (= (select var3463!1 0) (cast-from-Float64-to-var925 var1488))) ; Statement: $r4[0] = $r6 
(define-const var2008 String (String_format/-647569892 var2174 "%.3f" var3463!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "%.3f", $r4) 
(define-const var957 String (str.++ "skew=\u0001 nonDelRatio=\u0001" var3964 var2008)) ; Statement: $r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r8, $r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("skew=\u0001 nonDelRatio=\u0001") 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var925-init=([], java.lang.Object[]), val$skew/-1179400924=([org.apache.lucene.index.TieredMergePolicy$1], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var925=([java.lang.Double], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), val$nonDelRatio/-1179400924=([org.apache.lucene.index.TieredMergePolicy$1], double)}
; {var2701=org.apache.lucene.index.TieredMergePolicy$1, var2125=r1, var1798=java.util.Locale, var2967=$r2, var925=java.lang.Object, var2857=$r0, var702=$d0, var3190=$r3, var3964=$r8, var2174=$r5, var3463=$r4, var3991=$d1, var1488=$r6, var2008=$r7, var957=$r9}
; {org.apache.lucene.index.TieredMergePolicy$1=var2701, r1=var2125, java.util.Locale=var1798, $r2=var2967, java.lang.Object=var925, $r0=var2857, $d0=var702, $r3=var3190, $r8=var3964, $r5=var2174, $r4=var3463, $d1=var3991, $r6=var1488, $r7=var2008, $r9=var957}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 2}
;stmts r1 := @this: org.apache.lucene.index.TieredMergePolicy$1;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$d0 = r1.<org.apache.lucene.index.TieredMergePolicy$1: double val$skew>;	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	$r0[0] = $r3;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%.3f", $r0);	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[1];	$d1 = r1.<org.apache.lucene.index.TieredMergePolicy$1: double val$nonDelRatio>;	$r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1);	$r4[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "%.3f", $r4);	$r9 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r8, $r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("skew=\u0001 nonDelRatio=\u0001");	return $r9
;block_num 1