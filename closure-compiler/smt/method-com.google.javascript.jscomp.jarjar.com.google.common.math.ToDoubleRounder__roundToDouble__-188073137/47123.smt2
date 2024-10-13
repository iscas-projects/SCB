(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2658 0)
(declare-sort var3050 0)
(declare-sort var3340 0)
(declare-sort var950 0)
(declare-sort var3077 0)
(declare-sort var1362 0)
(declare-sort var2797 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var950_checkNotNull/909222700 (var3077 var3077) var3077)
(declare-fun cast-from-var3050-to-var3077 (var3050) var3077)
(declare-fun cast-from-String-to-var3077 (String) var3077)
(declare-fun cast-from-var3340-to-var3077 (var3340) var3077)
(declare-fun roundToDoubleArbitrarily/1352104461 (var2658 var3050) Float64)
(declare-fun Float64_isInfinite/-1606028367 (Float64) Bool)
(declare-fun ordinal/-291641772 (var2797) Int)
(declare-fun cast-from-var3340-to-var2797 (var3340) var2797)
(declare-fun var2891-init () var2891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3077) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var2891 String) void)
(declare-const null-var2658 var2658)
(declare-const null-var3050 var3050)
(declare-const null-var3340 var3340)
(declare-const var1362-$SwitchMap$java$math$RoundingMode (Array Int Int))
(declare-const var783 var2658) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder 
(assert (not (= var783 null-var2658)))
(declare-const var3280 var3050) ; Statement: r0 := @parameter0: java.lang.Number 
(assert (not (= var3280 null-var3050)))
(declare-const var3524 var3340) ; Statement: r1 := @parameter1: java.math.RoundingMode 
(assert (not (= var3524 null-var3340)))
;(assert (var950_checkNotNull/909222700 (cast-from-var3050-to-var3077 var3280) (cast-from-String-to-var3077 "x"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "x") 

(declare-const var3280!1 var3050)
(declare-const var3976 String)
;(assert (var950_checkNotNull/909222700 (cast-from-var3340-to-var3077 var3524) (cast-from-String-to-var3077 "mode"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "mode") 

(declare-const var3524!1 var3340)
(declare-const var602 String)
(assert true)
(define-const var1246 Float64 (roundToDoubleArbitrarily/1352104461 var783 var3280!1)) ; Statement: d0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: double roundToDoubleArbitrarily(java.lang.Number)>(r0) 
(define-const var1168 Bool (Float64_isInfinite/-1606028367 var1246)) ; Statement: $z0 = staticinvoke <java.lang.Double: boolean isInfinite(double)>(d0) 
 ; Statement: if $z0 == 0 goto $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY> 
(assert (not (= (ite var1168 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3137 (Array Int Int) var1362-$SwitchMap$java$math$RoundingMode) ; Statement: $r14 = <com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1: int[] $SwitchMap$java$math$RoundingMode> 
(assert true)
(define-const var3042 Int (ordinal/-291641772 (cast-from-var3340-to-var2797 var3524!1))) ; Statement: $i14 = virtualinvoke r1.<java.math.RoundingMode: int ordinal()>() 
(define-const var1670 Int (select var3137 var3042)) ; Statement: $i15 = $r14[$i14] 
 ; Statement: tableswitch($i15) {     case 1: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 2: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 3: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 4: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 5: goto $b17 = d0 cmpl #Infinity;     case 6: goto $b16 = d0 cmpl #Infinity;     case 7: goto return d0;     case 8: goto $r15 = new java.lang.ArithmeticException;     default: goto $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY>; } 
(assert (and (= var1670 8) (and (not (= var1670 7)) (and (not (= var1670 6)) (and (not (= var1670 5)) (and (not (= var1670 4)) (and (not (= var1670 3)) (and (not (= var1670 2)) (and (not (= var1670 1)) true))))))))) ; Intersect: Cond: $i15 == 8  and Intersect: Negate: Cond: $i15 == 7   and Intersect: Negate: Cond: $i15 == 6   and Intersect: Negate: Cond: $i15 == 5   and Intersect: Negate: Cond: $i15 == 4   and Intersect: Negate: Cond: $i15 == 3   and Intersect: Negate: Cond: $i15 == 2   and Intersect: Negate: Cond: $i15 == 1   and Non Conditional        
(define-const var267 var2891 var2891-init) ; Statement: $r15 = new java.lang.ArithmeticException 
(define-const var444 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var444)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var444!1 String)
(assert (= var444!1 ""))
(assert true)
(define-const var1 String (append/-1031950772 var444!1 (cast-from-var3050-to-var3077 var3280!1))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var444!2 String)
(assert (str.prefixof var444!1 var444!2))
(assert true)
(define-const var3869 String (append/672562846 var1 " cannot be represented precisely as a double")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be represented precisely as a double") 
(declare-const var1!1 String)
(assert (= var1!1 (str.++ var1 " cannot be represented precisely as a double")))
(assert true)
(define-const var3270 String (toString/-2075883882 var3869)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var267 var3270)) ; Statement: specialinvoke $r15.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r19) 

(declare-const var267!1 var2891)
(declare-const var3270!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var950_checkNotNull/909222700=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3050-to-var3077=([java.lang.Number], java.lang.Object), cast-from-String-to-var3077=([java.lang.String], java.lang.Object), cast-from-var3340-to-var3077=([java.math.RoundingMode], java.lang.Object), roundToDoubleArbitrarily/1352104461=([com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder, java.lang.Number], double), Float64_isInfinite/-1606028367=([double], boolean), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3340-to-var2797=([java.math.RoundingMode], java.lang.Enum), var2891-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var2658=com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder, var783=r2, var3050=java.lang.Number, var3280=r0, var3340=java.math.RoundingMode, var3524=r1, var950=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3077=java.lang.Object, var3976="x", var602="mode", var1246=d0, var1168=$z0, var1362=com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1, var3137=$r14, var2797=java.lang.Enum, var3042=$i14, var1670=$i15, var2891=java.lang.ArithmeticException, var267=$r15, var444=$r16, var1=$r17, var3869=$r18, var3270=$r19}
; {com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder=var2658, r2=var783, java.lang.Number=var3050, r0=var3280, java.math.RoundingMode=var3340, r1=var3524, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var950, java.lang.Object=var3077, "x"=var3976, "mode"=var602, d0=var1246, $z0=var1168, com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1=var1362, $r14=var3137, java.lang.Enum=var2797, $i14=var3042, $i15=var1670, java.lang.ArithmeticException=var2891, $r15=var267, $r16=var444, $r17=var1, $r18=var3869, $r19=var3270}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder;	r0 := @parameter0: java.lang.Number;	r1 := @parameter1: java.math.RoundingMode;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r0, "x");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object,java.lang.Object)>(r1, "mode");	d0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: double roundToDoubleArbitrarily(java.lang.Number)>(r0);	$z0 = staticinvoke <java.lang.Double: boolean isInfinite(double)>(d0);	if $z0 == 0 goto $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY>;	$r14 = <com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder$1: int[] $SwitchMap$java$math$RoundingMode>;	$i14 = virtualinvoke r1.<java.math.RoundingMode: int ordinal()>();	$i15 = $r14[$i14];	tableswitch($i15) {     case 1: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 2: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 3: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 4: goto $i18 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.math.ToDoubleRounder: int sign(java.lang.Number)>(r0);     case 5: goto $b17 = d0 cmpl #Infinity;     case 6: goto $b16 = d0 cmpl #Infinity;     case 7: goto return d0;     case 8: goto $r15 = new java.lang.ArithmeticException;     default: goto $r3 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY>; };	$r15 = new java.lang.ArithmeticException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be represented precisely as a double");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r19);	throw $r15
;block_num 3