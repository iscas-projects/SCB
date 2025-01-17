(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3707 0)
(declare-sort var2515 0)
(declare-sort var2499 0)
(declare-sort var30 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun extractOption/562191940 (var3707) String)
(declare-fun var2515-init () var2515)
(declare-fun formattingInfo/1478879420 (var3707) var2499)
(declare-fun <init>/-1810922016 (var2515 var2499 String) void)
(declare-fun cast-from-var2515-to-var30 (var2515) var30)
(declare-fun currentLiteral/1478879420 (var3707) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun addConverter/-274326691 (var3707 var30) void)
(declare-const null-var3707 var3707)
(declare-const null-Int Int)
(declare-const var191 var3707) ; Statement: r1 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var191 null-var3707)))
(declare-const var2383 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2383 null-Int)))
(define-const var2568 Int (cast-from-Int-to-Int var2383)) ; Statement: $i4 = (int) c0 
 ; Statement: tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; } 
(assert (and (= var2568 88) (and (not (= var2568 87)) (and (not (= var2568 86)) (and (not (= var2568 85)) (and (not (= var2568 84)) (and (not (= var2568 83)) (and (not (= var2568 82)) (and (not (= var2568 81)) (and (not (= var2568 80)) (and (not (= var2568 79)) (and (not (= var2568 78)) (and (not (= var2568 77)) (and (not (= var2568 76)) (and (not (= var2568 75)) (and (not (= var2568 74)) (and (not (= var2568 73)) (and (not (= var2568 72)) (and (not (= var2568 71)) (and (not (= var2568 70)) (and (not (= var2568 69)) (and (not (= var2568 68)) (and (not (= var2568 67)) true))))))))))))))))))))))) ; Intersect: Cond: $i4 == 88  and Intersect: Negate: Cond: $i4 == 87   and Intersect: Negate: Cond: $i4 == 86   and Intersect: Negate: Cond: $i4 == 85   and Intersect: Negate: Cond: $i4 == 84   and Intersect: Negate: Cond: $i4 == 83   and Intersect: Negate: Cond: $i4 == 82   and Intersect: Negate: Cond: $i4 == 81   and Intersect: Negate: Cond: $i4 == 80   and Intersect: Negate: Cond: $i4 == 79   and Intersect: Negate: Cond: $i4 == 78   and Intersect: Negate: Cond: $i4 == 77   and Intersect: Negate: Cond: $i4 == 76   and Intersect: Negate: Cond: $i4 == 75   and Intersect: Negate: Cond: $i4 == 74   and Intersect: Negate: Cond: $i4 == 73   and Intersect: Negate: Cond: $i4 == 72   and Intersect: Negate: Cond: $i4 == 71   and Intersect: Negate: Cond: $i4 == 70   and Intersect: Negate: Cond: $i4 == 69   and Intersect: Negate: Cond: $i4 == 68   and Intersect: Negate: Cond: $i4 == 67   and Non Conditional                      
(assert true)
(define-const var3315 String (extractOption/562191940 var191)) ; Statement: r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>() 
(define-const var1271 var2515 var2515-init) ; Statement: $r85 = new org.apache.log4j.helpers.PatternParser$MDCPatternConverter 
(define-const var1401 var2499 (formattingInfo/1478879420 var191)) ; Statement: $r28 = r1.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo> 
(assert true)
;(assert (<init>/-1810922016 var1271 var1401 var3315)) ; Statement: specialinvoke $r85.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: void <init>(org.apache.log4j.helpers.FormattingInfo,java.lang.String)>($r28, r67) 

(declare-const var1271!1 var2515)
(declare-const var1401!1 var2499)
(declare-const var3315!1 String)
(define-const var3444 var30 (cast-from-var2515-to-var30 var1271!1)) ; Statement: r60 = $r85 
(define-const var542 String (currentLiteral/1478879420 var191)) ; Statement: $r29 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
;(assert (setLength/163251007 var542 0)) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var542!1 String)
(declare-const var2055 Int)
 ; Statement: goto [?= virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60)] 
(assert true) ; Non Conditional
(assert true)
;(assert (addConverter/-274326691 var191 var3444)) ; Statement: virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60) 

(declare-const var191!1 var3707)
(declare-const var3444!1 var30)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), extractOption/562191940=([org.apache.log4j.helpers.PatternParser], java.lang.String), var2515-init=([], org.apache.log4j.helpers.PatternParser$MDCPatternConverter), formattingInfo/1478879420=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.FormattingInfo), <init>/-1810922016=([org.apache.log4j.helpers.PatternParser$MDCPatternConverter, org.apache.log4j.helpers.FormattingInfo, java.lang.String], void), cast-from-var2515-to-var30=([org.apache.log4j.helpers.PatternParser$MDCPatternConverter], org.apache.log4j.helpers.PatternConverter), currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), addConverter/-274326691=([org.apache.log4j.helpers.PatternParser, org.apache.log4j.helpers.PatternConverter], void)}
; {var3707=org.apache.log4j.helpers.PatternParser, var191=r1, var2383=c0, var2568=$i4, var3315=r67, var2515=org.apache.log4j.helpers.PatternParser$MDCPatternConverter, var1271=$r85, var2499=org.apache.log4j.helpers.FormattingInfo, var1401=$r28, var30=org.apache.log4j.helpers.PatternConverter, var3444=r60, var542=$r29, var2055=0}
; {org.apache.log4j.helpers.PatternParser=var3707, r1=var191, c0=var2383, $i4=var2568, r67=var3315, org.apache.log4j.helpers.PatternParser$MDCPatternConverter=var2515, $r85=var1271, org.apache.log4j.helpers.FormattingInfo=var2499, $r28=var1401, org.apache.log4j.helpers.PatternConverter=var30, r60=var3444, $r29=var542, 0=var2055}
;seq <java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.PatternParser;	c0 := @parameter0: char;	$i4 = (int) c0;	tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; };	r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();	$r85 = new org.apache.log4j.helpers.PatternParser$MDCPatternConverter;	$r28 = r1.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo>;	specialinvoke $r85.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: void <init>(org.apache.log4j.helpers.FormattingInfo,java.lang.String)>($r28, r67);	r60 = $r85;	$r29 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	virtualinvoke $r29.<java.lang.StringBuffer: void setLength(int)>(0);	goto [?= virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60)];	virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60);	return
;block_num 3