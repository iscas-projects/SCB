(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3760 0)
(declare-sort var1683 0)
(declare-sort var2448 0)
(declare-sort var1845 0)
(declare-sort var3820 0)
(declare-sort var1842 0)
(declare-sort var3108 0)
(declare-sort var319 0)
(declare-sort var3544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1845_checkNotNull/909222700 (var3820 var3820) var3820)
(declare-fun cast-from-var1683-to-var3820 (var1683) var3820)
(declare-fun cast-from-String-to-var3820 (String) var3820)
(declare-fun cast-from-var2448-to-var3820 (var2448) var3820)
(declare-fun roundToDoubleArbitrarily/1352104461 (var3760 var1683) Float64)
(declare-fun Float64_isInfinite/-1606028367 (Float64) Bool)
(declare-fun toX/-395197302 (var3760 Float64 var2448) var1683)
(declare-fun cast-from-var1683-to-var1842 (var1683) var1842)
(declare-fun var1842_compareTo/903719057 (var1842 var3820) Int)
(declare-fun ordinal/-291641772 (var319) Int)
(declare-fun cast-from-var2448-to-var319 (var2448) var319)
(declare-fun var3544-init () var3544)
(declare-fun <init>/582965326 (var3544 var3820) void)
(declare-const null-var3760 var3760)
(declare-const null-var1683 var1683)
(declare-const null-var2448 var2448)
(declare-const var2448-UNNECESSARY var2448)
(declare-const var3108-$SwitchMap$java$math$RoundingMode (Array Int Int))
(declare-const var2790 var3760) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder 
(assert (not (= var2790 null-var3760)))
(declare-const var1541 var1683) ; Statement: r0 := @parameter0: java.lang.Number 
(assert (not (= var1541 null-var1683)))
(declare-const var1434 var2448) ; Statement: r1 := @parameter1: java.math.RoundingMode 
(assert (not (= var1434 null-var2448)))
;(assert (var1845_checkNotNull/909222700 (cast-from-var1683-to-var3820 var1541) (cast-from-String-to-var3820 "x"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "x") 

(declare-const var1541!1 var1683)
(declare-const var1186 String)
;(assert (var1845_checkNotNull/909222700 (cast-from-var2448-to-var3820 var1434) (cast-from-String-to-var3820 "mode"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "mode") 

(declare-const var1434!1 var2448)
(declare-const var326 String)
(assert true)
(define-const var925 Float64 (roundToDoubleArbitrarily/1352104461 var2790 var1541!1)) ; Statement: d0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: double roundToDoubleArbitrarily(java.lang.Number)>(r0) 
(define-const var3385 Bool (Float64_isInfinite/-1606028367 var925)) ; Statement: $z0 = staticinvoke <java.lang.Double: boolean isInfinite(double)>(d0) 
 ; Statement: if $z0 == 0 goto $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY> 
(assert (= (ite var3385 1 0) 0)) ; Cond: $z0 == 0 
(define-const var135 var2448 var2448-UNNECESSARY) ; Statement: $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY> 
(assert true)
(define-const var2492 var1683 (toX/-395197302 var2790 var925 var135)) ; Statement: $r20 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: java.lang.Number toX(double,java.math.RoundingMode)>(d0, $r3) 
(define-const var1878 var1842 (cast-from-var1683-to-var1842 var1541!1)) ; Statement: $r4 = (java.lang.Comparable) r0 
(define-const var3777 Int (var1842_compareTo/903719057 var1878 (cast-from-var1683-to-var3820 var2492))) ; Statement: $i19 = interfaceinvoke $r4.<java.lang.Comparable: int compareTo(java.lang.Object)>($r20) 
(define-const var3535 (Array Int Int) var3108-$SwitchMap$java$math$RoundingMode) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1: int[] $SwitchMap$java$math$RoundingMode> 
(assert true)
(define-const var947 Int (ordinal/-291641772 (cast-from-var2448-to-var319 var1434!1))) ; Statement: $i0 = virtualinvoke r1.<java.math.RoundingMode: int ordinal()>() 
(define-const var3955 Int (select var3535 var947)) ; Statement: $i1 = $r5[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $i13 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 2: goto if $i19 < 0 goto d12 = d0;     case 3: goto if $i19 < 0 goto d12 = d0;     case 4: goto if $i19 < 0 goto d12 = d0;     case 5: goto if $i19 < 0 goto $d5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.DoubleUtils: double nextDown(double)>(d0);     case 6: goto if $i19 > 0 goto $d6 = staticinvoke <java.lang.Math: double nextUp(double)>(d0);     case 7: goto $i2 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 8: goto if $i19 != 0 goto $z1 = 0;     default: goto $r13 = new java.lang.AssertionError; } 
(assert (and (not (= var3955 8)) (and (not (= var3955 7)) (and (not (= var3955 6)) (and (not (= var3955 5)) (and (not (= var3955 4)) (and (not (= var3955 3)) (and (not (= var3955 2)) (and (not (= var3955 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var2723 var3544 var3544-init) ; Statement: $r13 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var2723 (cast-from-String-to-var3820 "impossible"))) ; Statement: specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>("impossible") 

(declare-const var2723!1 var3544)
(declare-const var2269 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1845_checkNotNull/909222700=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1683-to-var3820=([java.lang.Number], java.lang.Object), cast-from-String-to-var3820=([java.lang.String], java.lang.Object), cast-from-var2448-to-var3820=([java.math.RoundingMode], java.lang.Object), roundToDoubleArbitrarily/1352104461=([com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder, java.lang.Number], double), Float64_isInfinite/-1606028367=([double], boolean), toX/-395197302=([com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder, double, java.math.RoundingMode], java.lang.Number), cast-from-var1683-to-var1842=([java.lang.Number], java.lang.Comparable), var1842_compareTo/903719057=([java.lang.Comparable, java.lang.Object], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2448-to-var319=([java.math.RoundingMode], java.lang.Enum), var3544-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void)}
; {var3760=com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder, var2790=r2, var1683=java.lang.Number, var1541=r0, var2448=java.math.RoundingMode, var1434=r1, var1845=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3820=java.lang.Object, var1186="x", var326="mode", var925=d0, var3385=$z0, var135=$r3, var2492=$r20, var1842=java.lang.Comparable, var1878=$r4, var3777=$i19, var3108=com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1, var3535=$r5, var319=java.lang.Enum, var947=$i0, var3955=$i1, var3544=java.lang.AssertionError, var2723=$r13, var2269="impossible"}
; {com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder=var3760, r2=var2790, java.lang.Number=var1683, r0=var1541, java.math.RoundingMode=var2448, r1=var1434, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1845, java.lang.Object=var3820, "x"=var1186, "mode"=var326, d0=var925, $z0=var3385, $r3=var135, $r20=var2492, java.lang.Comparable=var1842, $r4=var1878, $i19=var3777, com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1=var3108, $r5=var3535, java.lang.Enum=var319, $i0=var947, $i1=var3955, java.lang.AssertionError=var3544, $r13=var2723, "impossible"=var2269}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder;	r0 := @parameter0: java.lang.Number;	r1 := @parameter1: java.math.RoundingMode;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "x");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "mode");	d0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: double roundToDoubleArbitrarily(java.lang.Number)>(r0);	$z0 = staticinvoke <java.lang.Double: boolean isInfinite(double)>(d0);	if $z0 == 0 goto $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY>;	$r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY>;	$r20 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: java.lang.Number toX(double,java.math.RoundingMode)>(d0, $r3);	$r4 = (java.lang.Comparable) r0;	$i19 = interfaceinvoke $r4.<java.lang.Comparable: int compareTo(java.lang.Object)>($r20);	$r5 = <com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1: int[] $SwitchMap$java$math$RoundingMode>;	$i0 = virtualinvoke r1.<java.math.RoundingMode: int ordinal()>();	$i1 = $r5[$i0];	tableswitch($i1) {     case 1: goto $i13 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 2: goto if $i19 < 0 goto d12 = d0;     case 3: goto if $i19 < 0 goto d12 = d0;     case 4: goto if $i19 < 0 goto d12 = d0;     case 5: goto if $i19 < 0 goto $d5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.DoubleUtils: double nextDown(double)>(d0);     case 6: goto if $i19 > 0 goto $d6 = staticinvoke <java.lang.Math: double nextUp(double)>(d0);     case 7: goto $i2 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 8: goto if $i19 != 0 goto $z1 = 0;     default: goto $r13 = new java.lang.AssertionError; };	$r13 = new java.lang.AssertionError;	specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>("impossible");	throw $r13
;block_num 3