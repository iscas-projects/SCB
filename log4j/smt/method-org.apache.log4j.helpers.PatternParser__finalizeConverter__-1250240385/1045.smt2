(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var275 0)
(declare-sort var3419 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var275-init () var275)
(declare-fun formattingInfo/1478879420 (var3768) var3419)
(declare-fun <init>/-2052947620 (var275 var3419 Int) void)
(declare-fun cast-from-var275-to-var2963 (var275) var2963)
(declare-fun currentLiteral/1478879420 (var3768) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun addConverter/-274326691 (var3768 var2963) void)
(declare-const null-var3768 var3768)
(declare-const null-Int Int)
(declare-const var3180 var3768) ; Statement: r1 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var3180 null-var3768)))
(declare-const var2234 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2234 null-Int)))
(define-const var667 Int (cast-from-Int-to-Int var2234)) ; Statement: $i4 = (int) c0 
 ; Statement: tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; } 
(assert (and (= var667 116) (and (not (= var667 115)) (and (not (= var667 114)) (and (not (= var667 113)) (and (not (= var667 112)) (and (not (= var667 111)) (and (not (= var667 110)) (and (not (= var667 109)) (and (not (= var667 108)) (and (not (= var667 107)) (and (not (= var667 106)) (and (not (= var667 105)) (and (not (= var667 104)) (and (not (= var667 103)) (and (not (= var667 102)) (and (not (= var667 101)) (and (not (= var667 100)) (and (not (= var667 99)) (and (not (= var667 98)) (and (not (= var667 97)) (and (not (= var667 96)) (and (not (= var667 95)) (and (not (= var667 94)) (and (not (= var667 93)) (and (not (= var667 92)) (and (not (= var667 91)) (and (not (= var667 90)) (and (not (= var667 89)) (and (not (= var667 88)) (and (not (= var667 87)) (and (not (= var667 86)) (and (not (= var667 85)) (and (not (= var667 84)) (and (not (= var667 83)) (and (not (= var667 82)) (and (not (= var667 81)) (and (not (= var667 80)) (and (not (= var667 79)) (and (not (= var667 78)) (and (not (= var667 77)) (and (not (= var667 76)) (and (not (= var667 75)) (and (not (= var667 74)) (and (not (= var667 73)) (and (not (= var667 72)) (and (not (= var667 71)) (and (not (= var667 70)) (and (not (= var667 69)) (and (not (= var667 68)) (and (not (= var667 67)) true))))))))))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i4 == 116  and Intersect: Negate: Cond: $i4 == 115   and Intersect: Negate: Cond: $i4 == 114   and Intersect: Negate: Cond: $i4 == 113   and Intersect: Negate: Cond: $i4 == 112   and Intersect: Negate: Cond: $i4 == 111   and Intersect: Negate: Cond: $i4 == 110   and Intersect: Negate: Cond: $i4 == 109   and Intersect: Negate: Cond: $i4 == 108   and Intersect: Negate: Cond: $i4 == 107   and Intersect: Negate: Cond: $i4 == 106   and Intersect: Negate: Cond: $i4 == 105   and Intersect: Negate: Cond: $i4 == 104   and Intersect: Negate: Cond: $i4 == 103   and Intersect: Negate: Cond: $i4 == 102   and Intersect: Negate: Cond: $i4 == 101   and Intersect: Negate: Cond: $i4 == 100   and Intersect: Negate: Cond: $i4 == 99   and Intersect: Negate: Cond: $i4 == 98   and Intersect: Negate: Cond: $i4 == 97   and Intersect: Negate: Cond: $i4 == 96   and Intersect: Negate: Cond: $i4 == 95   and Intersect: Negate: Cond: $i4 == 94   and Intersect: Negate: Cond: $i4 == 93   and Intersect: Negate: Cond: $i4 == 92   and Intersect: Negate: Cond: $i4 == 91   and Intersect: Negate: Cond: $i4 == 90   and Intersect: Negate: Cond: $i4 == 89   and Intersect: Negate: Cond: $i4 == 88   and Intersect: Negate: Cond: $i4 == 87   and Intersect: Negate: Cond: $i4 == 86   and Intersect: Negate: Cond: $i4 == 85   and Intersect: Negate: Cond: $i4 == 84   and Intersect: Negate: Cond: $i4 == 83   and Intersect: Negate: Cond: $i4 == 82   and Intersect: Negate: Cond: $i4 == 81   and Intersect: Negate: Cond: $i4 == 80   and Intersect: Negate: Cond: $i4 == 79   and Intersect: Negate: Cond: $i4 == 78   and Intersect: Negate: Cond: $i4 == 77   and Intersect: Negate: Cond: $i4 == 76   and Intersect: Negate: Cond: $i4 == 75   and Intersect: Negate: Cond: $i4 == 74   and Intersect: Negate: Cond: $i4 == 73   and Intersect: Negate: Cond: $i4 == 72   and Intersect: Negate: Cond: $i4 == 71   and Intersect: Negate: Cond: $i4 == 70   and Intersect: Negate: Cond: $i4 == 69   and Intersect: Negate: Cond: $i4 == 68   and Intersect: Negate: Cond: $i4 == 67   and Non Conditional                                                  
(define-const var256 var275 var275-init) ; Statement: $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter 
(define-const var3271 var3419 (formattingInfo/1478879420 var3180)) ; Statement: $r5 = r1.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo> 
(assert true)
;(assert (<init>/-2052947620 var256 var3271 2001)) ; Statement: specialinvoke $r83.<org.apache.log4j.helpers.PatternParser$BasicPatternConverter: void <init>(org.apache.log4j.helpers.FormattingInfo,int)>($r5, 2001) 

(declare-const var256!1 var275)
(declare-const var3271!1 var3419)
(declare-const var1602 Int)
(define-const var1660 var2963 (cast-from-var275-to-var2963 var256!1)) ; Statement: r60 = $r83 
(define-const var707 String (currentLiteral/1478879420 var3180)) ; Statement: $r6 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
;(assert (setLength/163251007 var707 0)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var707!1 String)
(declare-const var3080 Int)
 ; Statement: goto [?= virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60)] 
(assert true) ; Non Conditional
(assert true)
;(assert (addConverter/-274326691 var3180 var1660)) ; Statement: virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60) 

(declare-const var3180!1 var3768)
(declare-const var1660!1 var2963)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var275-init=([], org.apache.log4j.helpers.PatternParser$BasicPatternConverter), formattingInfo/1478879420=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.FormattingInfo), <init>/-2052947620=([org.apache.log4j.helpers.PatternParser$BasicPatternConverter, org.apache.log4j.helpers.FormattingInfo, int], void), cast-from-var275-to-var2963=([org.apache.log4j.helpers.PatternParser$BasicPatternConverter], org.apache.log4j.helpers.PatternConverter), currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), addConverter/-274326691=([org.apache.log4j.helpers.PatternParser, org.apache.log4j.helpers.PatternConverter], void)}
; {var3768=org.apache.log4j.helpers.PatternParser, var3180=r1, var2234=c0, var667=$i4, var275=org.apache.log4j.helpers.PatternParser$BasicPatternConverter, var256=$r83, var3419=org.apache.log4j.helpers.FormattingInfo, var3271=$r5, var1602=2001, var2963=org.apache.log4j.helpers.PatternConverter, var1660=r60, var707=$r6, var3080=0}
; {org.apache.log4j.helpers.PatternParser=var3768, r1=var3180, c0=var2234, $i4=var667, org.apache.log4j.helpers.PatternParser$BasicPatternConverter=var275, $r83=var256, org.apache.log4j.helpers.FormattingInfo=var3419, $r5=var3271, 2001=var1602, org.apache.log4j.helpers.PatternConverter=var2963, r60=var1660, $r6=var707, 0=var3080}
;seq <java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.PatternParser;	c0 := @parameter0: char;	$i4 = (int) c0;	tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; };	$r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;	$r5 = r1.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo>;	specialinvoke $r83.<org.apache.log4j.helpers.PatternParser$BasicPatternConverter: void <init>(org.apache.log4j.helpers.FormattingInfo,int)>($r5, 2001);	r60 = $r83;	$r6 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	virtualinvoke $r6.<java.lang.StringBuffer: void setLength(int)>(0);	goto [?= virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60)];	virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60);	return
;block_num 3