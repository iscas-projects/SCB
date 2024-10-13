(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var2189 0)
(declare-sort var3327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2615 var2615)
(declare-const null-Int Int)
(declare-const null-var2189 var2189)
(declare-const var2615-SECOND_STRATEGY var3327)
(declare-const var2120 var2615) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var2120 null-var2615)))
(declare-const var2411 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2411 null-Int)))
(declare-const var1312 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1312 null-Int)))
(declare-const var201 var2189) ; Statement: r1 := @parameter2: java.util.Calendar 
(assert (not (= var201 null-var2189)))
(define-const var1379 Int (cast-from-Int-to-Int var2411)) ; Statement: $i2 = (int) c0 
 ; Statement: tableswitch($i2) {     case 68: goto $r20 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto $r30 = new java.lang.IllegalArgumentException;     case 77: goto if i1 < 3 goto $r27 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy: cn.hutool.core.date.format.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1379 115) (and (not (= var1379 114)) (and (not (= var1379 113)) (and (not (= var1379 112)) (and (not (= var1379 111)) (and (not (= var1379 110)) (and (not (= var1379 109)) (and (not (= var1379 108)) (and (not (= var1379 107)) (and (not (= var1379 106)) (and (not (= var1379 105)) (and (not (= var1379 104)) (and (not (= var1379 103)) (and (not (= var1379 102)) (and (not (= var1379 101)) (and (not (= var1379 100)) (and (not (= var1379 99)) (and (not (= var1379 98)) (and (not (= var1379 97)) (and (not (= var1379 96)) (and (not (= var1379 95)) (and (not (= var1379 94)) (and (not (= var1379 93)) (and (not (= var1379 92)) (and (not (= var1379 91)) (and (not (= var1379 90)) (and (not (= var1379 89)) (and (not (= var1379 88)) (and (not (= var1379 87)) (and (not (= var1379 86)) (and (not (= var1379 85)) (and (not (= var1379 84)) (and (not (= var1379 83)) (and (not (= var1379 82)) (and (not (= var1379 81)) (and (not (= var1379 80)) (and (not (= var1379 79)) (and (not (= var1379 78)) (and (not (= var1379 77)) (and (not (= var1379 76)) (and (not (= var1379 75)) (and (not (= var1379 74)) (and (not (= var1379 73)) (and (not (= var1379 72)) (and (not (= var1379 71)) (and (not (= var1379 70)) (and (not (= var1379 69)) (and (not (= var1379 68)) true))))))))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i2 == 115  and Intersect: Negate: Cond: $i2 == 114   and Intersect: Negate: Cond: $i2 == 113   and Intersect: Negate: Cond: $i2 == 112   and Intersect: Negate: Cond: $i2 == 111   and Intersect: Negate: Cond: $i2 == 110   and Intersect: Negate: Cond: $i2 == 109   and Intersect: Negate: Cond: $i2 == 108   and Intersect: Negate: Cond: $i2 == 107   and Intersect: Negate: Cond: $i2 == 106   and Intersect: Negate: Cond: $i2 == 105   and Intersect: Negate: Cond: $i2 == 104   and Intersect: Negate: Cond: $i2 == 103   and Intersect: Negate: Cond: $i2 == 102   and Intersect: Negate: Cond: $i2 == 101   and Intersect: Negate: Cond: $i2 == 100   and Intersect: Negate: Cond: $i2 == 99   and Intersect: Negate: Cond: $i2 == 98   and Intersect: Negate: Cond: $i2 == 97   and Intersect: Negate: Cond: $i2 == 96   and Intersect: Negate: Cond: $i2 == 95   and Intersect: Negate: Cond: $i2 == 94   and Intersect: Negate: Cond: $i2 == 93   and Intersect: Negate: Cond: $i2 == 92   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 90   and Intersect: Negate: Cond: $i2 == 89   and Intersect: Negate: Cond: $i2 == 88   and Intersect: Negate: Cond: $i2 == 87   and Intersect: Negate: Cond: $i2 == 86   and Intersect: Negate: Cond: $i2 == 85   and Intersect: Negate: Cond: $i2 == 84   and Intersect: Negate: Cond: $i2 == 83   and Intersect: Negate: Cond: $i2 == 82   and Intersect: Negate: Cond: $i2 == 81   and Intersect: Negate: Cond: $i2 == 80   and Intersect: Negate: Cond: $i2 == 79   and Intersect: Negate: Cond: $i2 == 78   and Intersect: Negate: Cond: $i2 == 77   and Intersect: Negate: Cond: $i2 == 76   and Intersect: Negate: Cond: $i2 == 75   and Intersect: Negate: Cond: $i2 == 74   and Intersect: Negate: Cond: $i2 == 73   and Intersect: Negate: Cond: $i2 == 72   and Intersect: Negate: Cond: $i2 == 71   and Intersect: Negate: Cond: $i2 == 70   and Intersect: Negate: Cond: $i2 == 69   and Intersect: Negate: Cond: $i2 == 68   and Non Conditional                                                
(define-const var1920 var3327 var2615-SECOND_STRATEGY) ; Statement: $r5 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy SECOND_STRATEGY> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int)}
; {var2615=cn.hutool.core.date.format.FastDateParser, var2120=r0, var2411=c0, var1312=i1, var2189=java.util.Calendar, var201=r1, var1379=$i2, var3327=cn.hutool.core.date.format.FastDateParser$Strategy, var1920=$r5}
; {cn.hutool.core.date.format.FastDateParser=var2615, r0=var2120, c0=var2411, i1=var1312, java.util.Calendar=var2189, r1=var201, $i2=var1379, cn.hutool.core.date.format.FastDateParser$Strategy=var3327, $r5=var1920}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser;	c0 := @parameter0: char;	i1 := @parameter1: int;	r1 := @parameter2: java.util.Calendar;	$i2 = (int) c0;	tableswitch($i2) {     case 68: goto $r20 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto $r30 = new java.lang.IllegalArgumentException;     case 77: goto if i1 < 3 goto $r27 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy: cn.hutool.core.date.format.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; };	$r5 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy SECOND_STRATEGY>;	return $r5
;block_num 2