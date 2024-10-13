(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3119 0)
(declare-sort var950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun standard/714102448 (var3119) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun daylight/714102448 (var3119) String)
(declare-fun var950_max/1360571700 (Int Int) Int)
(declare-const null-var3119 var3119)
(declare-const var3930 var3119) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule 
(assert (not (= var3930 null-var3119)))
(define-const var3532 String (standard/714102448 var3930)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule: java.lang.String standard> 
(assert true)
(define-const var687 Int (length/-134980193 var3532)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2083 String (daylight/714102448 var3930)) ; Statement: $r2 = r0.<org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule: java.lang.String daylight> 
(assert true)
(define-const var2372 Int (length/-134980193 var2083)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var594 Int (var950_max/1360571700 var687 var2372)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i1, $i0) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {standard/714102448=([org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule], java.lang.String), length/-134980193=([java.lang.String], int), daylight/714102448=([org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule], java.lang.String), var950_max/1360571700=([int, int], int)}
; {var3119=org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule, var3930=r0, var3532=$r1, var687=$i1, var2083=$r2, var2372=$i0, var950=java.lang.Math, var594=$i2}
; {org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule=var3119, r0=var3930, $r1=var3532, $i1=var687, $r2=var2083, $i0=var2372, java.lang.Math=var950, $i2=var594}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule;	$r1 = r0.<org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule: java.lang.String standard>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule: java.lang.String daylight>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i1, $i0);	return $i2
;block_num 1