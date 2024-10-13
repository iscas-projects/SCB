(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var1254 0)
(declare-sort var3840 0)
(declare-sort var744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1254-init () var1254)
(declare-fun formattingInfo/1478879420 (var937) var3840)
(declare-fun <init>/-1929147889 (var1254 var937 var3840 Int) void)
(declare-fun cast-from-var1254-to-var744 (var1254) var744)
(declare-fun currentLiteral/1478879420 (var937) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun addConverter/-274326691 (var937 var744) void)
(declare-const null-var937 var937)
(declare-const null-Int Int)
(declare-const var994 var937) ; Statement: r1 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var994 null-var937)))
(declare-const var2390 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2390 null-Int)))
(define-const var2207 Int (cast-from-Int-to-Int var2390)) ; Statement: $i4 = (int) c0 
 ; Statement: tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; } 
(assert (and (= var2207 77) (and (not (= var2207 76)) (and (not (= var2207 75)) (and (not (= var2207 74)) (and (not (= var2207 73)) (and (not (= var2207 72)) (and (not (= var2207 71)) (and (not (= var2207 70)) (and (not (= var2207 69)) (and (not (= var2207 68)) (and (not (= var2207 67)) true)))))))))))) ; Intersect: Cond: $i4 == 77  and Intersect: Negate: Cond: $i4 == 76   and Intersect: Negate: Cond: $i4 == 75   and Intersect: Negate: Cond: $i4 == 74   and Intersect: Negate: Cond: $i4 == 73   and Intersect: Negate: Cond: $i4 == 72   and Intersect: Negate: Cond: $i4 == 71   and Intersect: Negate: Cond: $i4 == 70   and Intersect: Negate: Cond: $i4 == 69   and Intersect: Negate: Cond: $i4 == 68   and Intersect: Negate: Cond: $i4 == 67   and Non Conditional           
(define-const var1100 var1254 var1254-init) ; Statement: $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter 
(define-const var262 var3840 (formattingInfo/1478879420 var994)) ; Statement: $r31 = r1.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo> 
(assert true)
;(assert (<init>/-1929147889 var1100 var994 var262 1001)) ; Statement: specialinvoke $r80.<org.apache.log4j.helpers.PatternParser$LocationPatternConverter: void <init>(org.apache.log4j.helpers.PatternParser,org.apache.log4j.helpers.FormattingInfo,int)>(r1, $r31, 1001) 

(declare-const var1100!1 var1254)
(declare-const var994!1 var937)
(declare-const var262!1 var3840)
(declare-const var1003 Int)
(define-const var2164 var744 (cast-from-var1254-to-var744 var1100!1)) ; Statement: r60 = $r80 
(define-const var449 String (currentLiteral/1478879420 var994!1)) ; Statement: $r32 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
;(assert (setLength/163251007 var449 0)) ; Statement: virtualinvoke $r32.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var449!1 String)
(declare-const var2045 Int)
 ; Statement: goto [?= virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60)] 
(assert true) ; Non Conditional
(assert true)
;(assert (addConverter/-274326691 var994!1 var2164)) ; Statement: virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60) 

(declare-const var994!2 var937)
(declare-const var2164!1 var744)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var1254-init=([], org.apache.log4j.helpers.PatternParser$LocationPatternConverter), formattingInfo/1478879420=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.FormattingInfo), <init>/-1929147889=([org.apache.log4j.helpers.PatternParser$LocationPatternConverter, org.apache.log4j.helpers.PatternParser, org.apache.log4j.helpers.FormattingInfo, int], void), cast-from-var1254-to-var744=([org.apache.log4j.helpers.PatternParser$LocationPatternConverter], org.apache.log4j.helpers.PatternConverter), currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), addConverter/-274326691=([org.apache.log4j.helpers.PatternParser, org.apache.log4j.helpers.PatternConverter], void)}
; {var937=org.apache.log4j.helpers.PatternParser, var994=r1, var2390=c0, var2207=$i4, var1254=org.apache.log4j.helpers.PatternParser$LocationPatternConverter, var1100=$r80, var3840=org.apache.log4j.helpers.FormattingInfo, var262=$r31, var1003=1001, var744=org.apache.log4j.helpers.PatternConverter, var2164=r60, var449=$r32, var2045=0}
; {org.apache.log4j.helpers.PatternParser=var937, r1=var994, c0=var2390, $i4=var2207, org.apache.log4j.helpers.PatternParser$LocationPatternConverter=var1254, $r80=var1100, org.apache.log4j.helpers.FormattingInfo=var3840, $r31=var262, 1001=var1003, org.apache.log4j.helpers.PatternConverter=var744, r60=var2164, $r32=var449, 0=var2045}
;seq <java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.PatternParser;	c0 := @parameter0: char;	$i4 = (int) c0;	tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; };	$r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;	$r31 = r1.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo>;	specialinvoke $r80.<org.apache.log4j.helpers.PatternParser$LocationPatternConverter: void <init>(org.apache.log4j.helpers.PatternParser,org.apache.log4j.helpers.FormattingInfo,int)>(r1, $r31, 1001);	r60 = $r80;	$r32 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	virtualinvoke $r32.<java.lang.StringBuffer: void setLength(int)>(0);	goto [?= virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60)];	virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60);	return
;block_num 3