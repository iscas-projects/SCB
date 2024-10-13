(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var829 0)
(declare-sort var1042 0)
(declare-sort var1491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLocaleSpecificStrategy/-1436523368 (var829 Int var1042) var1491)
(declare-const null-var829 var829)
(declare-const null-Int Int)
(declare-const null-var1042 var1042)
(declare-const var1247 var829) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var1247 null-var829)))
(declare-const var682 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var682 null-Int)))
(declare-const var3480 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3480 null-Int)))
(declare-const var3338 var1042) ; Statement: r1 := @parameter2: java.util.Calendar 
(assert (not (= var3338 null-var1042)))
(define-const var2056 Int (cast-from-Int-to-Int var682)) ; Statement: $i2 = (int) c0 
 ; Statement: tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2056 122) (and (not (= var2056 121)) (and (not (= var2056 120)) (and (not (= var2056 119)) (and (not (= var2056 118)) (and (not (= var2056 117)) (and (not (= var2056 116)) (and (not (= var2056 115)) (and (not (= var2056 114)) (and (not (= var2056 113)) (and (not (= var2056 112)) (and (not (= var2056 111)) (and (not (= var2056 110)) (and (not (= var2056 109)) (and (not (= var2056 108)) (and (not (= var2056 107)) (and (not (= var2056 106)) (and (not (= var2056 105)) (and (not (= var2056 104)) (and (not (= var2056 103)) (and (not (= var2056 102)) (and (not (= var2056 101)) (and (not (= var2056 100)) (and (not (= var2056 99)) (and (not (= var2056 98)) (and (not (= var2056 97)) (and (not (= var2056 96)) (and (not (= var2056 95)) (and (not (= var2056 94)) (and (not (= var2056 93)) (and (not (= var2056 92)) (and (not (= var2056 91)) (and (not (= var2056 90)) (and (not (= var2056 89)) (and (not (= var2056 88)) (and (not (= var2056 87)) (and (not (= var2056 86)) (and (not (= var2056 85)) (and (not (= var2056 84)) (and (not (= var2056 83)) (and (not (= var2056 82)) (and (not (= var2056 81)) (and (not (= var2056 80)) (and (not (= var2056 79)) (and (not (= var2056 78)) (and (not (= var2056 77)) (and (not (= var2056 76)) (and (not (= var2056 75)) (and (not (= var2056 74)) (and (not (= var2056 73)) (and (not (= var2056 72)) (and (not (= var2056 71)) (and (not (= var2056 70)) (and (not (= var2056 69)) (and (not (= var2056 68)) true)))))))))))))))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i2 == 122  and Intersect: Negate: Cond: $i2 == 121   and Intersect: Negate: Cond: $i2 == 120   and Intersect: Negate: Cond: $i2 == 119   and Intersect: Negate: Cond: $i2 == 118   and Intersect: Negate: Cond: $i2 == 117   and Intersect: Negate: Cond: $i2 == 116   and Intersect: Negate: Cond: $i2 == 115   and Intersect: Negate: Cond: $i2 == 114   and Intersect: Negate: Cond: $i2 == 113   and Intersect: Negate: Cond: $i2 == 112   and Intersect: Negate: Cond: $i2 == 111   and Intersect: Negate: Cond: $i2 == 110   and Intersect: Negate: Cond: $i2 == 109   and Intersect: Negate: Cond: $i2 == 108   and Intersect: Negate: Cond: $i2 == 107   and Intersect: Negate: Cond: $i2 == 106   and Intersect: Negate: Cond: $i2 == 105   and Intersect: Negate: Cond: $i2 == 104   and Intersect: Negate: Cond: $i2 == 103   and Intersect: Negate: Cond: $i2 == 102   and Intersect: Negate: Cond: $i2 == 101   and Intersect: Negate: Cond: $i2 == 100   and Intersect: Negate: Cond: $i2 == 99   and Intersect: Negate: Cond: $i2 == 98   and Intersect: Negate: Cond: $i2 == 97   and Intersect: Negate: Cond: $i2 == 96   and Intersect: Negate: Cond: $i2 == 95   and Intersect: Negate: Cond: $i2 == 94   and Intersect: Negate: Cond: $i2 == 93   and Intersect: Negate: Cond: $i2 == 92   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 90   and Intersect: Negate: Cond: $i2 == 89   and Intersect: Negate: Cond: $i2 == 88   and Intersect: Negate: Cond: $i2 == 87   and Intersect: Negate: Cond: $i2 == 86   and Intersect: Negate: Cond: $i2 == 85   and Intersect: Negate: Cond: $i2 == 84   and Intersect: Negate: Cond: $i2 == 83   and Intersect: Negate: Cond: $i2 == 82   and Intersect: Negate: Cond: $i2 == 81   and Intersect: Negate: Cond: $i2 == 80   and Intersect: Negate: Cond: $i2 == 79   and Intersect: Negate: Cond: $i2 == 78   and Intersect: Negate: Cond: $i2 == 77   and Intersect: Negate: Cond: $i2 == 76   and Intersect: Negate: Cond: $i2 == 75   and Intersect: Negate: Cond: $i2 == 74   and Intersect: Negate: Cond: $i2 == 73   and Intersect: Negate: Cond: $i2 == 72   and Intersect: Negate: Cond: $i2 == 71   and Intersect: Negate: Cond: $i2 == 70   and Intersect: Negate: Cond: $i2 == 69   and Intersect: Negate: Cond: $i2 == 68   and Non Conditional                                                       
(assert true)
(define-const var759 var1491 (getLocaleSpecificStrategy/-1436523368 var1247 15 var3338)) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), getLocaleSpecificStrategy/-1436523368=([org.apache.commons.lang3.time.FastDateParser, int, java.util.Calendar], org.apache.commons.lang3.time.FastDateParser$Strategy)}
; {var829=org.apache.commons.lang3.time.FastDateParser, var1247=r0, var682=c0, var3480=i1, var1042=java.util.Calendar, var3338=r1, var2056=$i2, var1491=org.apache.commons.lang3.time.FastDateParser$Strategy, var759=$r2}
; {org.apache.commons.lang3.time.FastDateParser=var829, r0=var1247, c0=var682, i1=var3480, java.util.Calendar=var1042, r1=var3338, $i2=var2056, org.apache.commons.lang3.time.FastDateParser$Strategy=var1491, $r2=var759}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser;	c0 := @parameter0: char;	i1 := @parameter1: int;	r1 := @parameter2: java.util.Calendar;	$i2 = (int) c0;	tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; };	$r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);	return $r2
;block_num 2