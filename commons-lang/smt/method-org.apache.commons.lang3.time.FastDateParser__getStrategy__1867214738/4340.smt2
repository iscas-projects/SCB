(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3359 0)
(declare-sort var3442 0)
(declare-sort var1389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3359 var3359)
(declare-const null-Int Int)
(declare-const null-var3442 var3442)
(declare-const var3359-HOUR24_OF_DAY_STRATEGY var1389)
(declare-const var3235 var3359) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var3235 null-var3359)))
(declare-const var1319 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1319 null-Int)))
(declare-const var957 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var957 null-Int)))
(declare-const var1676 var3442) ; Statement: r1 := @parameter2: java.util.Calendar 
(assert (not (= var1676 null-var3442)))
(define-const var894 Int (cast-from-Int-to-Int var1319)) ; Statement: $i2 = (int) c0 
 ; Statement: tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; } 
(assert (and (= var894 107) (and (not (= var894 106)) (and (not (= var894 105)) (and (not (= var894 104)) (and (not (= var894 103)) (and (not (= var894 102)) (and (not (= var894 101)) (and (not (= var894 100)) (and (not (= var894 99)) (and (not (= var894 98)) (and (not (= var894 97)) (and (not (= var894 96)) (and (not (= var894 95)) (and (not (= var894 94)) (and (not (= var894 93)) (and (not (= var894 92)) (and (not (= var894 91)) (and (not (= var894 90)) (and (not (= var894 89)) (and (not (= var894 88)) (and (not (= var894 87)) (and (not (= var894 86)) (and (not (= var894 85)) (and (not (= var894 84)) (and (not (= var894 83)) (and (not (= var894 82)) (and (not (= var894 81)) (and (not (= var894 80)) (and (not (= var894 79)) (and (not (= var894 78)) (and (not (= var894 77)) (and (not (= var894 76)) (and (not (= var894 75)) (and (not (= var894 74)) (and (not (= var894 73)) (and (not (= var894 72)) (and (not (= var894 71)) (and (not (= var894 70)) (and (not (= var894 69)) (and (not (= var894 68)) true))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i2 == 107  and Intersect: Negate: Cond: $i2 == 106   and Intersect: Negate: Cond: $i2 == 105   and Intersect: Negate: Cond: $i2 == 104   and Intersect: Negate: Cond: $i2 == 103   and Intersect: Negate: Cond: $i2 == 102   and Intersect: Negate: Cond: $i2 == 101   and Intersect: Negate: Cond: $i2 == 100   and Intersect: Negate: Cond: $i2 == 99   and Intersect: Negate: Cond: $i2 == 98   and Intersect: Negate: Cond: $i2 == 97   and Intersect: Negate: Cond: $i2 == 96   and Intersect: Negate: Cond: $i2 == 95   and Intersect: Negate: Cond: $i2 == 94   and Intersect: Negate: Cond: $i2 == 93   and Intersect: Negate: Cond: $i2 == 92   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 90   and Intersect: Negate: Cond: $i2 == 89   and Intersect: Negate: Cond: $i2 == 88   and Intersect: Negate: Cond: $i2 == 87   and Intersect: Negate: Cond: $i2 == 86   and Intersect: Negate: Cond: $i2 == 85   and Intersect: Negate: Cond: $i2 == 84   and Intersect: Negate: Cond: $i2 == 83   and Intersect: Negate: Cond: $i2 == 82   and Intersect: Negate: Cond: $i2 == 81   and Intersect: Negate: Cond: $i2 == 80   and Intersect: Negate: Cond: $i2 == 79   and Intersect: Negate: Cond: $i2 == 78   and Intersect: Negate: Cond: $i2 == 77   and Intersect: Negate: Cond: $i2 == 76   and Intersect: Negate: Cond: $i2 == 75   and Intersect: Negate: Cond: $i2 == 74   and Intersect: Negate: Cond: $i2 == 73   and Intersect: Negate: Cond: $i2 == 72   and Intersect: Negate: Cond: $i2 == 71   and Intersect: Negate: Cond: $i2 == 70   and Intersect: Negate: Cond: $i2 == 69   and Intersect: Negate: Cond: $i2 == 68   and Non Conditional                                        
(define-const var367 var1389 var3359-HOUR24_OF_DAY_STRATEGY) ; Statement: $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY> 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int)}
; {var3359=org.apache.commons.lang3.time.FastDateParser, var3235=r0, var1319=c0, var957=i1, var3442=java.util.Calendar, var1676=r1, var894=$i2, var1389=org.apache.commons.lang3.time.FastDateParser$Strategy, var367=$r7}
; {org.apache.commons.lang3.time.FastDateParser=var3359, r0=var3235, c0=var1319, i1=var957, java.util.Calendar=var3442, r1=var1676, $i2=var894, org.apache.commons.lang3.time.FastDateParser$Strategy=var1389, $r7=var367}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser;	c0 := @parameter0: char;	i1 := @parameter1: int;	r1 := @parameter2: java.util.Calendar;	$i2 = (int) c0;	tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; };	$r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;	return $r7
;block_num 2