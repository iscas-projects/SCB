(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var3543 0)
(declare-sort var624 0)
(declare-sort var3958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var624) void)
(declare-fun cast-from-var851-to-var624 (var851) var624)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun currentLiteral/1478879420 (var851) String)
(declare-fun var3958-init () var3958)
(declare-fun <init>/-280717457 (var3958) void)
(declare-fun formattingInfo/1478879420 (var851) var3958)
(declare-fun pattern/1478879420 (var851) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun patternLength/1478879420 (var851) Int)
(declare-fun state/1478879420 (var851) Int)
(declare-const null-var851 var851)
(declare-const null-String String)
(declare-const var172 var851) ; Statement: r0 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var172 null-var851)))
(declare-const var2298 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2298 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var851-to-var624 var172))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var172!1 var851)
(define-const var3367 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var3367 32)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(32) 

(declare-const var3367!1 String)
(declare-const var3499 Int)
(declare-const var172!2 var851)
(assert (not (= var172!2 null-var851)))
(assert (= (currentLiteral/1478879420 var172!2) var3367!1)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> = $r1 
(define-const var1811 var3958 var3958-init) ; Statement: $r2 = new org.apache.log4j.helpers.FormattingInfo 
(assert true)
;(assert (<init>/-280717457 var1811)) ; Statement: specialinvoke $r2.<org.apache.log4j.helpers.FormattingInfo: void <init>()>() 

(declare-const var1811!1 var3958)
(declare-const var172!3 var851)
(assert (not (= var172!3 null-var851)))
(assert (= (formattingInfo/1478879420 var172!3) var1811!1)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo> = $r2 
(declare-const var172!4 var851)
(assert (not (= var172!4 null-var851)))
(assert (= (pattern/1478879420 var172!4) var2298)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: java.lang.String pattern> = r3 
(assert true)
(define-const var1158 Int (length/-134980193 var2298)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int length()>() 
(declare-const var172!5 var851)
(assert (not (= var172!5 null-var851)))
(assert (= (patternLength/1478879420 var172!5) var1158)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: int patternLength> = $i0 
(declare-const var172!6 var851)
(assert (not (= var172!6 null-var851)))
(assert (= (state/1478879420 var172!6) 0)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: int state> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var851-to-var624=([org.apache.log4j.helpers.PatternParser], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), var3958-init=([], org.apache.log4j.helpers.FormattingInfo), <init>/-280717457=([org.apache.log4j.helpers.FormattingInfo], void), formattingInfo/1478879420=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.FormattingInfo), pattern/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.String), length/-134980193=([java.lang.String], int), patternLength/1478879420=([org.apache.log4j.helpers.PatternParser], int), state/1478879420=([org.apache.log4j.helpers.PatternParser], int)}
; {var851=org.apache.log4j.helpers.PatternParser, var172=r0, var2298=r3, var3543=null_type, var624=java.lang.Object, var3367=$r1, var3499=32, var3958=org.apache.log4j.helpers.FormattingInfo, var1811=$r2, var1158=$i0}
; {org.apache.log4j.helpers.PatternParser=var851, r0=var172, r3=var2298, null_type=var3543, java.lang.Object=var624, $r1=var3367, 32=var3499, org.apache.log4j.helpers.FormattingInfo=var3958, $r2=var1811, $i0=var1158}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.PatternParser;	r3 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(32);	r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> = $r1;	$r2 = new org.apache.log4j.helpers.FormattingInfo;	specialinvoke $r2.<org.apache.log4j.helpers.FormattingInfo: void <init>()>();	r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo> = $r2;	r0.<org.apache.log4j.helpers.PatternParser: java.lang.String pattern> = r3;	$i0 = virtualinvoke r3.<java.lang.String: int length()>();	r0.<org.apache.log4j.helpers.PatternParser: int patternLength> = $i0;	r0.<org.apache.log4j.helpers.PatternParser: int state> = 0;	return
;block_num 1