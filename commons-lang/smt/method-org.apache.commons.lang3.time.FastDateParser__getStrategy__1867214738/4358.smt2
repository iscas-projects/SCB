(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3315 0)
(declare-sort var2650 0)
(declare-sort var2291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3315 var3315)
(declare-const null-Int Int)
(declare-const null-var2650 var2650)
(declare-const var3315-SECOND_STRATEGY var2291)
(declare-const var3274 var3315) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var3274 null-var3315)))
(declare-const var2180 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2180 null-Int)))
(declare-const var2214 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2214 null-Int)))
(declare-const var1036 var2650) ; Statement: r1 := @parameter2: java.util.Calendar 
(assert (not (= var1036 null-var2650)))
(define-const var1090 Int (cast-from-Int-to-Int var2180)) ; Statement: $i2 = (int) c0 
 ; Statement: tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1090 115) (and (not (= var1090 114)) (and (not (= var1090 113)) (and (not (= var1090 112)) (and (not (= var1090 111)) (and (not (= var1090 110)) (and (not (= var1090 109)) (and (not (= var1090 108)) (and (not (= var1090 107)) (and (not (= var1090 106)) (and (not (= var1090 105)) (and (not (= var1090 104)) (and (not (= var1090 103)) (and (not (= var1090 102)) (and (not (= var1090 101)) (and (not (= var1090 100)) (and (not (= var1090 99)) (and (not (= var1090 98)) (and (not (= var1090 97)) (and (not (= var1090 96)) (and (not (= var1090 95)) (and (not (= var1090 94)) (and (not (= var1090 93)) (and (not (= var1090 92)) (and (not (= var1090 91)) (and (not (= var1090 90)) (and (not (= var1090 89)) (and (not (= var1090 88)) (and (not (= var1090 87)) (and (not (= var1090 86)) (and (not (= var1090 85)) (and (not (= var1090 84)) (and (not (= var1090 83)) (and (not (= var1090 82)) (and (not (= var1090 81)) (and (not (= var1090 80)) (and (not (= var1090 79)) (and (not (= var1090 78)) (and (not (= var1090 77)) (and (not (= var1090 76)) (and (not (= var1090 75)) (and (not (= var1090 74)) (and (not (= var1090 73)) (and (not (= var1090 72)) (and (not (= var1090 71)) (and (not (= var1090 70)) (and (not (= var1090 69)) (and (not (= var1090 68)) true))))))))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i2 == 115  and Intersect: Negate: Cond: $i2 == 114   and Intersect: Negate: Cond: $i2 == 113   and Intersect: Negate: Cond: $i2 == 112   and Intersect: Negate: Cond: $i2 == 111   and Intersect: Negate: Cond: $i2 == 110   and Intersect: Negate: Cond: $i2 == 109   and Intersect: Negate: Cond: $i2 == 108   and Intersect: Negate: Cond: $i2 == 107   and Intersect: Negate: Cond: $i2 == 106   and Intersect: Negate: Cond: $i2 == 105   and Intersect: Negate: Cond: $i2 == 104   and Intersect: Negate: Cond: $i2 == 103   and Intersect: Negate: Cond: $i2 == 102   and Intersect: Negate: Cond: $i2 == 101   and Intersect: Negate: Cond: $i2 == 100   and Intersect: Negate: Cond: $i2 == 99   and Intersect: Negate: Cond: $i2 == 98   and Intersect: Negate: Cond: $i2 == 97   and Intersect: Negate: Cond: $i2 == 96   and Intersect: Negate: Cond: $i2 == 95   and Intersect: Negate: Cond: $i2 == 94   and Intersect: Negate: Cond: $i2 == 93   and Intersect: Negate: Cond: $i2 == 92   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 90   and Intersect: Negate: Cond: $i2 == 89   and Intersect: Negate: Cond: $i2 == 88   and Intersect: Negate: Cond: $i2 == 87   and Intersect: Negate: Cond: $i2 == 86   and Intersect: Negate: Cond: $i2 == 85   and Intersect: Negate: Cond: $i2 == 84   and Intersect: Negate: Cond: $i2 == 83   and Intersect: Negate: Cond: $i2 == 82   and Intersect: Negate: Cond: $i2 == 81   and Intersect: Negate: Cond: $i2 == 80   and Intersect: Negate: Cond: $i2 == 79   and Intersect: Negate: Cond: $i2 == 78   and Intersect: Negate: Cond: $i2 == 77   and Intersect: Negate: Cond: $i2 == 76   and Intersect: Negate: Cond: $i2 == 75   and Intersect: Negate: Cond: $i2 == 74   and Intersect: Negate: Cond: $i2 == 73   and Intersect: Negate: Cond: $i2 == 72   and Intersect: Negate: Cond: $i2 == 71   and Intersect: Negate: Cond: $i2 == 70   and Intersect: Negate: Cond: $i2 == 69   and Intersect: Negate: Cond: $i2 == 68   and Non Conditional                                                
(define-const var85 var2291 var3315-SECOND_STRATEGY) ; Statement: $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int)}
; {var3315=org.apache.commons.lang3.time.FastDateParser, var3274=r0, var2180=c0, var2214=i1, var2650=java.util.Calendar, var1036=r1, var1090=$i2, var2291=org.apache.commons.lang3.time.FastDateParser$Strategy, var85=$r5}
; {org.apache.commons.lang3.time.FastDateParser=var3315, r0=var3274, c0=var2180, i1=var2214, java.util.Calendar=var2650, r1=var1036, $i2=var1090, org.apache.commons.lang3.time.FastDateParser$Strategy=var2291, $r5=var85}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser;	c0 := @parameter0: char;	i1 := @parameter1: int;	r1 := @parameter2: java.util.Calendar;	$i2 = (int) c0;	tableswitch($i2) {     case 68: goto $r20 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 77: goto if i1 < 3 goto $r27 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser$ISO8601TimeZoneStrategy: org.apache.commons.lang3.time.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; };	$r5 = <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy SECOND_STRATEGY>;	return $r5
;block_num 2