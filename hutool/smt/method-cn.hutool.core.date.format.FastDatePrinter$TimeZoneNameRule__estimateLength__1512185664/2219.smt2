(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1188 0)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mStandard/-2857836 (var1188) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun mDaylight/-2857836 (var1188) String)
(declare-fun var1901_max/1360571700 (Int Int) Int)
(declare-const null-var1188 var1188)
(declare-const var3471 var1188) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule 
(assert (not (= var3471 null-var1188)))
(define-const var2335 String (mStandard/-2857836 var3471)) ; Statement: $r1 = r0.<cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule: java.lang.String mStandard> 
(assert true)
(define-const var3003 Int (length/-134980193 var2335)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var65 String (mDaylight/-2857836 var3471)) ; Statement: $r2 = r0.<cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule: java.lang.String mDaylight> 
(assert true)
(define-const var1786 Int (length/-134980193 var65)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2495 Int (var1901_max/1360571700 var3003 var1786)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i1, $i0) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {mStandard/-2857836=([cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule], java.lang.String), length/-134980193=([java.lang.String], int), mDaylight/-2857836=([cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule], java.lang.String), var1901_max/1360571700=([int, int], int)}
; {var1188=cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule, var3471=r0, var2335=$r1, var3003=$i1, var65=$r2, var1786=$i0, var1901=java.lang.Math, var2495=$i2}
; {cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule=var1188, r0=var3471, $r1=var2335, $i1=var3003, $r2=var65, $i0=var1786, java.lang.Math=var1901, $i2=var2495}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule;	$r1 = r0.<cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule: java.lang.String mStandard>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<cn.hutool.core.date.format.FastDatePrinter$TimeZoneNameRule: java.lang.String mDaylight>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i1, $i0);	return $i2
;block_num 1