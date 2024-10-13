(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var289 0)
(declare-sort var2505 0)
(declare-sort var201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var289 var289)
(declare-const null-Int Int)
(declare-const null-var2505 var2505)
(declare-const var289-MILLISECOND_STRATEGY var201)
(declare-const var338 var289) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var338 null-var289)))
(declare-const var1437 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1437 null-Int)))
(declare-const var3781 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3781 null-Int)))
(declare-const var1688 var2505) ; Statement: r1 := @parameter2: java.util.Calendar 
(assert (not (= var1688 null-var2505)))
(define-const var1726 Int (cast-from-Int-to-Int var1437)) ; Statement: $i2 = (int) c0 
 ; Statement: tableswitch($i2) {     case 68: goto $r20 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto $r30 = new java.lang.IllegalArgumentException;     case 77: goto if i1 < 3 goto $r27 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy: cn.hutool.core.date.format.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1726 83) (and (not (= var1726 82)) (and (not (= var1726 81)) (and (not (= var1726 80)) (and (not (= var1726 79)) (and (not (= var1726 78)) (and (not (= var1726 77)) (and (not (= var1726 76)) (and (not (= var1726 75)) (and (not (= var1726 74)) (and (not (= var1726 73)) (and (not (= var1726 72)) (and (not (= var1726 71)) (and (not (= var1726 70)) (and (not (= var1726 69)) (and (not (= var1726 68)) true))))))))))))))))) ; Intersect: Cond: $i2 == 83  and Intersect: Negate: Cond: $i2 == 82   and Intersect: Negate: Cond: $i2 == 81   and Intersect: Negate: Cond: $i2 == 80   and Intersect: Negate: Cond: $i2 == 79   and Intersect: Negate: Cond: $i2 == 78   and Intersect: Negate: Cond: $i2 == 77   and Intersect: Negate: Cond: $i2 == 76   and Intersect: Negate: Cond: $i2 == 75   and Intersect: Negate: Cond: $i2 == 74   and Intersect: Negate: Cond: $i2 == 73   and Intersect: Negate: Cond: $i2 == 72   and Intersect: Negate: Cond: $i2 == 71   and Intersect: Negate: Cond: $i2 == 70   and Intersect: Negate: Cond: $i2 == 69   and Intersect: Negate: Cond: $i2 == 68   and Non Conditional                
(define-const var622 var201 var289-MILLISECOND_STRATEGY) ; Statement: $r14 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MILLISECOND_STRATEGY> 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int)}
; {var289=cn.hutool.core.date.format.FastDateParser, var338=r0, var1437=c0, var3781=i1, var2505=java.util.Calendar, var1688=r1, var1726=$i2, var201=cn.hutool.core.date.format.FastDateParser$Strategy, var622=$r14}
; {cn.hutool.core.date.format.FastDateParser=var289, r0=var338, c0=var1437, i1=var3781, java.util.Calendar=var2505, r1=var1688, $i2=var1726, cn.hutool.core.date.format.FastDateParser$Strategy=var201, $r14=var622}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser;	c0 := @parameter0: char;	i1 := @parameter1: int;	r1 := @parameter2: java.util.Calendar;	$i2 = (int) c0;	tableswitch($i2) {     case 68: goto $r20 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_YEAR_STRATEGY>;     case 69: goto $r19 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(7, r1);     case 70: goto $r18 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY>;     case 71: goto $r17 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(0, r1);     case 72: goto $r16 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_OF_DAY_STRATEGY>;     case 73: goto $r30 = new java.lang.IllegalArgumentException;     case 74: goto $r30 = new java.lang.IllegalArgumentException;     case 75: goto $r15 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR_STRATEGY>;     case 76: goto $r30 = new java.lang.IllegalArgumentException;     case 77: goto if i1 < 3 goto $r27 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy NUMBER_MONTH_STRATEGY>;     case 78: goto $r30 = new java.lang.IllegalArgumentException;     case 79: goto $r30 = new java.lang.IllegalArgumentException;     case 80: goto $r30 = new java.lang.IllegalArgumentException;     case 81: goto $r30 = new java.lang.IllegalArgumentException;     case 82: goto $r30 = new java.lang.IllegalArgumentException;     case 83: goto $r14 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MILLISECOND_STRATEGY>;     case 84: goto $r30 = new java.lang.IllegalArgumentException;     case 85: goto $r30 = new java.lang.IllegalArgumentException;     case 86: goto $r30 = new java.lang.IllegalArgumentException;     case 87: goto $r13 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_MONTH_STRATEGY>;     case 88: goto $r12 = staticinvoke <cn.hutool.core.date.format.FastDateParser$ISO8601TimeZoneStrategy: cn.hutool.core.date.format.FastDateParser$Strategy getStrategy(int)>(i1);     case 89: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 90: goto if i1 != 2 goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     case 91: goto $r30 = new java.lang.IllegalArgumentException;     case 92: goto $r30 = new java.lang.IllegalArgumentException;     case 93: goto $r30 = new java.lang.IllegalArgumentException;     case 94: goto $r30 = new java.lang.IllegalArgumentException;     case 95: goto $r30 = new java.lang.IllegalArgumentException;     case 96: goto $r30 = new java.lang.IllegalArgumentException;     case 97: goto $r10 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(9, r1);     case 98: goto $r30 = new java.lang.IllegalArgumentException;     case 99: goto $r30 = new java.lang.IllegalArgumentException;     case 100: goto $r9 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_MONTH_STRATEGY>;     case 101: goto $r30 = new java.lang.IllegalArgumentException;     case 102: goto $r30 = new java.lang.IllegalArgumentException;     case 103: goto $r30 = new java.lang.IllegalArgumentException;     case 104: goto $r8 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR12_STRATEGY>;     case 105: goto $r30 = new java.lang.IllegalArgumentException;     case 106: goto $r30 = new java.lang.IllegalArgumentException;     case 107: goto $r7 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy HOUR24_OF_DAY_STRATEGY>;     case 108: goto $r30 = new java.lang.IllegalArgumentException;     case 109: goto $r6 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MINUTE_STRATEGY>;     case 110: goto $r30 = new java.lang.IllegalArgumentException;     case 111: goto $r30 = new java.lang.IllegalArgumentException;     case 112: goto $r30 = new java.lang.IllegalArgumentException;     case 113: goto $r30 = new java.lang.IllegalArgumentException;     case 114: goto $r30 = new java.lang.IllegalArgumentException;     case 115: goto $r5 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy SECOND_STRATEGY>;     case 116: goto $r30 = new java.lang.IllegalArgumentException;     case 117: goto $r4 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy DAY_OF_WEEK_STRATEGY>;     case 118: goto $r30 = new java.lang.IllegalArgumentException;     case 119: goto $r3 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy WEEK_OF_YEAR_STRATEGY>;     case 120: goto $r30 = new java.lang.IllegalArgumentException;     case 121: goto if i1 <= 2 goto $r28 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy ABBREVIATED_YEAR_STRATEGY>;     case 122: goto $r2 = specialinvoke r0.<cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy getLocaleSpecificStrategy(int,java.util.Calendar)>(15, r1);     default: goto $r30 = new java.lang.IllegalArgumentException; };	$r14 = <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy MILLISECOND_STRATEGY>;	return $r14
;block_num 2