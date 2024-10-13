(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1536 0)
(declare-sort var112 0)
(declare-sort var3662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1536 var1536)
(declare-const null-Int Int)
(declare-const null-var112 var112)
(declare-const var1536-DAY_OF_MONTH_STRATEGY var3662)
(declare-const var913 var1536) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var913 null-var1536)))
(declare-const var2211 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2211 null-Int)))
(declare-const var3284 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3284 null-Int)))
(declare-const var1137 var112) ; Statement: r1 := @parameter2: java.util.Calendar 
(assert (not (= var1137 null-var112)))
(define-const var2904 Int (cast-from-Int-to-Int var2211)) ; Statement: $i2 = (int) c0 
 ; Statement: tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2904 100) (and (not (= var2904 99)) (and (not (= var2904 98)) (and (not (= var2904 97)) (and (not (= var2904 96)) (and (not (= var2904 95)) (and (not (= var2904 94)) (and (not (= var2904 93)) (and (not (= var2904 92)) (and (not (= var2904 91)) (and (not (= var2904 90)) (and (not (= var2904 89)) (and (not (= var2904 88)) (and (not (= var2904 87)) (and (not (= var2904 86)) (and (not (= var2904 85)) (and (not (= var2904 84)) (and (not (= var2904 83)) (and (not (= var2904 82)) (and (not (= var2904 81)) (and (not (= var2904 80)) (and (not (= var2904 79)) (and (not (= var2904 78)) (and (not (= var2904 77)) (and (not (= var2904 76)) (and (not (= var2904 75)) (and (not (= var2904 74)) (and (not (= var2904 73)) (and (not (= var2904 72)) (and (not (= var2904 71)) (and (not (= var2904 70)) (and (not (= var2904 69)) (and (not (= var2904 68)) true)))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i2 == 100  and Intersect: Negate: Cond: $i2 == 99   and Intersect: Negate: Cond: $i2 == 98   and Intersect: Negate: Cond: $i2 == 97   and Intersect: Negate: Cond: $i2 == 96   and Intersect: Negate: Cond: $i2 == 95   and Intersect: Negate: Cond: $i2 == 94   and Intersect: Negate: Cond: $i2 == 93   and Intersect: Negate: Cond: $i2 == 92   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 90   and Intersect: Negate: Cond: $i2 == 89   and Intersect: Negate: Cond: $i2 == 88   and Intersect: Negate: Cond: $i2 == 87   and Intersect: Negate: Cond: $i2 == 86   and Intersect: Negate: Cond: $i2 == 85   and Intersect: Negate: Cond: $i2 == 84   and Intersect: Negate: Cond: $i2 == 83   and Intersect: Negate: Cond: $i2 == 82   and Intersect: Negate: Cond: $i2 == 81   and Intersect: Negate: Cond: $i2 == 80   and Intersect: Negate: Cond: $i2 == 79   and Intersect: Negate: Cond: $i2 == 78   and Intersect: Negate: Cond: $i2 == 77   and Intersect: Negate: Cond: $i2 == 76   and Intersect: Negate: Cond: $i2 == 75   and Intersect: Negate: Cond: $i2 == 74   and Intersect: Negate: Cond: $i2 == 73   and Intersect: Negate: Cond: $i2 == 72   and Intersect: Negate: Cond: $i2 == 71   and Intersect: Negate: Cond: $i2 == 70   and Intersect: Negate: Cond: $i2 == 69   and Intersect: Negate: Cond: $i2 == 68   and Non Conditional                                 
(define-const var2890 var3662 var1536-DAY_OF_MONTH_STRATEGY) ; Statement: $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int)}
; {var1536=org.apache.commons.lang3.time.FastDateParser, var913=r0, var2211=c0, var3284=i1, var112=java.util.Calendar, var1137=r1, var2904=$i2, var3662=org.apache.commons.lang3.time.FastDateParser$Strategy, var2890=$r9}
; {org.apache.commons.lang3.time.FastDateParser=var1536, r0=var913, c0=var2211, i1=var3284, java.util.Calendar=var112, r1=var1137, $i2=var2904, org.apache.commons.lang3.time.FastDateParser$Strategy=var3662, $r9=var2890}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser;	c0 := @parameter0: char;	i1 := @parameter1: int;	r1 := @parameter2: java.util.Calendar;	$i2 = (int) c0;	tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; };	$r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;	return $r9
;block_num 2