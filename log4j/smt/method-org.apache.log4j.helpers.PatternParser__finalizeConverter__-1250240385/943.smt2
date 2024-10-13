(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var972 0)
(declare-sort var3128 0)
(declare-sort var34 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun i/1478879420 (var972) Int)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3128_error/-402343703 (String) void)
(declare-fun var34-init () var34)
(declare-fun currentLiteral/1478879420 (var972) String)
(declare-fun <init>/1367020509 (var34 String) void)
(declare-fun cast-from-var34-to-var916 (var34) var916)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun addConverter/-274326691 (var972 var916) void)
(declare-const null-var972 var972)
(declare-const null-Int Int)
(declare-const var184 var972) ; Statement: r1 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var184 null-var972)))
(declare-const var3926 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3926 null-Int)))
(define-const var3215 Int (cast-from-Int-to-Int var3926)) ; Statement: $i4 = (int) c0 
 ; Statement: tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; } 
(assert (and (not (= var3215 67)) true)) ; Intersect: Negate: Cond: $i4 == 67   and Non Conditional 
(define-const var369 String String-init) ; Statement: $r86 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var369)) ; Statement: specialinvoke $r86.<java.lang.StringBuffer: void <init>()>() 

(declare-const var369!1 String)
(assert true)
(define-const var608 String (append/1560614132 var369!1 "Unexpected char [")) ; Statement: $r43 = virtualinvoke $r86.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unexpected char [") 
(declare-const var369!2 String)
(assert (str.prefixof var369!1 var369!2))
(assert true)
(define-const var3481 String (append/1183289509 var608 var3926)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0) 
(assert true)
(define-const var909 String (append/1560614132 var3481 "] at position ")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] at position ") 
(declare-const var3481!1 String)
(assert (str.prefixof var3481 var3481!1))
(define-const var2912 Int (i/1478879420 var184)) ; Statement: $i3 = r1.<org.apache.log4j.helpers.PatternParser: int i> 
(assert true)
(define-const var360 String (append/1845021834 var909 var2912)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i3) 
(assert true)
(define-const var3777 String (append/1560614132 var360 " in conversion patterrn.")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" in conversion patterrn.") 
(declare-const var360!1 String)
(assert (str.prefixof var360 var360!1))
(assert true)
(define-const var292 String (toString/-222306083 var3777)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3128_error/-402343703 var292)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r48) 

(declare-const var292!1 String)
(define-const var3211 var34 var34-init) ; Statement: $r87 = new org.apache.log4j.helpers.PatternParser$LiteralPatternConverter 
(define-const var3642 String (currentLiteral/1478879420 var184)) ; Statement: $r50 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
(define-const var2515 String (toString/-222306083 var3642)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1367020509 var3211 var2515)) ; Statement: specialinvoke $r87.<org.apache.log4j.helpers.PatternParser$LiteralPatternConverter: void <init>(java.lang.String)>($r51) 

(declare-const var3211!1 var34)
(declare-const var2515!1 String)
(define-const var3288 var916 (cast-from-var34-to-var916 var3211!1)) ; Statement: r60 = $r87 
(define-const var924 String (currentLiteral/1478879420 var184)) ; Statement: $r52 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
;(assert (setLength/163251007 var924 0)) ; Statement: virtualinvoke $r52.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var924!1 String)
(declare-const var2258 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (addConverter/-274326691 var184 var3288)) ; Statement: virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60) 

(declare-const var184!1 var972)
(declare-const var3288!1 var916)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), i/1478879420=([org.apache.log4j.helpers.PatternParser], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3128_error/-402343703=([java.lang.String], void), var34-init=([], org.apache.log4j.helpers.PatternParser$LiteralPatternConverter), currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), <init>/1367020509=([org.apache.log4j.helpers.PatternParser$LiteralPatternConverter, java.lang.String], void), cast-from-var34-to-var916=([org.apache.log4j.helpers.PatternParser$LiteralPatternConverter], org.apache.log4j.helpers.PatternConverter), setLength/163251007=([java.lang.StringBuffer, int], void), addConverter/-274326691=([org.apache.log4j.helpers.PatternParser, org.apache.log4j.helpers.PatternConverter], void)}
; {var972=org.apache.log4j.helpers.PatternParser, var184=r1, var3926=c0, var3215=$i4, var369=$r86, var608=$r43, var3481=$r44, var909=$r45, var2912=$i3, var360=$r46, var3777=$r47, var292=$r48, var3128=org.apache.log4j.helpers.LogLog, var34=org.apache.log4j.helpers.PatternParser$LiteralPatternConverter, var3211=$r87, var3642=$r50, var2515=$r51, var916=org.apache.log4j.helpers.PatternConverter, var3288=r60, var924=$r52, var2258=0}
; {org.apache.log4j.helpers.PatternParser=var972, r1=var184, c0=var3926, $i4=var3215, $r86=var369, $r43=var608, $r44=var3481, $r45=var909, $i3=var2912, $r46=var360, $r47=var3777, $r48=var292, org.apache.log4j.helpers.LogLog=var3128, org.apache.log4j.helpers.PatternParser$LiteralPatternConverter=var34, $r87=var3211, $r50=var3642, $r51=var2515, org.apache.log4j.helpers.PatternConverter=var916, r60=var3288, $r52=var924, 0=var2258}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.PatternParser;	c0 := @parameter0: char;	$i4 = (int) c0;	tableswitch($i4) {     case 67: goto $r69 = new org.apache.log4j.helpers.PatternParser$ClassNamePatternConverter;     case 68: goto $r86 = new java.lang.StringBuffer;     case 69: goto $r86 = new java.lang.StringBuffer;     case 70: goto $r76 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 71: goto $r86 = new java.lang.StringBuffer;     case 72: goto $r86 = new java.lang.StringBuffer;     case 73: goto $r86 = new java.lang.StringBuffer;     case 74: goto $r86 = new java.lang.StringBuffer;     case 75: goto $r86 = new java.lang.StringBuffer;     case 76: goto $r78 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 77: goto $r80 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 78: goto $r86 = new java.lang.StringBuffer;     case 79: goto $r86 = new java.lang.StringBuffer;     case 80: goto $r86 = new java.lang.StringBuffer;     case 81: goto $r86 = new java.lang.StringBuffer;     case 82: goto $r86 = new java.lang.StringBuffer;     case 83: goto $r86 = new java.lang.StringBuffer;     case 84: goto $r86 = new java.lang.StringBuffer;     case 85: goto $r86 = new java.lang.StringBuffer;     case 86: goto $r86 = new java.lang.StringBuffer;     case 87: goto $r86 = new java.lang.StringBuffer;     case 88: goto r67 = virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: java.lang.String extractOption()>();     case 89: goto $r86 = new java.lang.StringBuffer;     case 90: goto $r86 = new java.lang.StringBuffer;     case 91: goto $r86 = new java.lang.StringBuffer;     case 92: goto $r86 = new java.lang.StringBuffer;     case 93: goto $r86 = new java.lang.StringBuffer;     case 94: goto $r86 = new java.lang.StringBuffer;     case 95: goto $r86 = new java.lang.StringBuffer;     case 96: goto $r86 = new java.lang.StringBuffer;     case 97: goto $r86 = new java.lang.StringBuffer;     case 98: goto $r86 = new java.lang.StringBuffer;     case 99: goto $r68 = new org.apache.log4j.helpers.PatternParser$CategoryPatternConverter;     case 100: goto r61 = "ISO8601";     case 101: goto $r86 = new java.lang.StringBuffer;     case 102: goto $r86 = new java.lang.StringBuffer;     case 103: goto $r86 = new java.lang.StringBuffer;     case 104: goto $r86 = new java.lang.StringBuffer;     case 105: goto $r86 = new java.lang.StringBuffer;     case 106: goto $r86 = new java.lang.StringBuffer;     case 107: goto $r86 = new java.lang.StringBuffer;     case 108: goto $r77 = new org.apache.log4j.helpers.PatternParser$LocationPatternConverter;     case 109: goto $r79 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 110: goto $r86 = new java.lang.StringBuffer;     case 111: goto $r86 = new java.lang.StringBuffer;     case 112: goto $r81 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 113: goto $r86 = new java.lang.StringBuffer;     case 114: goto $r82 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 115: goto $r86 = new java.lang.StringBuffer;     case 116: goto $r83 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     case 117: goto $r86 = new java.lang.StringBuffer;     case 118: goto $r86 = new java.lang.StringBuffer;     case 119: goto $r86 = new java.lang.StringBuffer;     case 120: goto $r84 = new org.apache.log4j.helpers.PatternParser$BasicPatternConverter;     default: goto $r86 = new java.lang.StringBuffer; };	$r86 = new java.lang.StringBuffer;	specialinvoke $r86.<java.lang.StringBuffer: void <init>()>();	$r43 = virtualinvoke $r86.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unexpected char [");	$r44 = virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0);	$r45 = virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] at position ");	$i3 = r1.<org.apache.log4j.helpers.PatternParser: int i>;	$r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i3);	$r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" in conversion patterrn.");	$r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r48);	$r87 = new org.apache.log4j.helpers.PatternParser$LiteralPatternConverter;	$r50 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r87.<org.apache.log4j.helpers.PatternParser$LiteralPatternConverter: void <init>(java.lang.String)>($r51);	r60 = $r87;	$r52 = r1.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	virtualinvoke $r52.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke r1.<org.apache.log4j.helpers.PatternParser: void addConverter(org.apache.log4j.helpers.PatternConverter)>(r60);	return
;block_num 3