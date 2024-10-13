(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1780 0)
(declare-sort var1385 0)
(declare-sort var423 0)
(declare-sort var634 0)
(declare-sort var3795 0)
(declare-sort var647 0)
(declare-sort var100 0)
(declare-sort var3274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var423_bootstrap$/-1886679087 (String) var1385)
(declare-fun var634_checkBetween/-1819433976 (Int Int Int var1385) Int)
(declare-fun parse/2088945785 (var3795 String) var100)
(declare-fun var3274-init () var3274)
(declare-fun <init>/-774169046 (var3274 var100 var100 var100 var100 var100 var100 var100) void)
(declare-const null-String String)
(declare-const var647-YEAR_VALUE_PARSER var3795)
(declare-const var647-SECOND_VALUE_PARSER var3795)
(declare-const var647-MINUTE_VALUE_PARSER var3795)
(declare-const var647-HOUR_VALUE_PARSER var3795)
(declare-const var647-DAY_OF_MONTH_VALUE_PARSER var3795)
(declare-const var647-MONTH_VALUE_PARSER var3795)
(declare-const var647-DAY_OF_WEEK_VALUE_PARSER var3795)
(declare-const var1940 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1940 null-String)))
(assert true)
(define-const var169 (Array Int String) (split/-636890950 var1940 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1940 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var2775 Int (getLength-Arr-String-1 var169)) ; Statement: $i0 = lengthof r1 
(define-const var3514 var1385 (var423_bootstrap$/-1886679087 var1940)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var634_checkBetween/-1819433976 var2775 5 7 var3514)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var2775!1 Int)
(declare-const var422 Int)
(declare-const var1823 Int)
(declare-const var3514!1 var1385)
(define-const var1660 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2901 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var980 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2181 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2662 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2144 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var135 Int 0) ; Statement: b8 = 0 
(define-const var3329 Int (getLength-Arr-String-1 var169)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (= var3329 6)) ; Cond: $i1 == 6 
(define-const var1660!1 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var2901!1 Bool (ite (= 1 1) true false)) ; Statement: z5 = 1 
(define-const var980!1 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var2181!1 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var2662!1 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var2144!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var135!1 Int 1) ; Statement: b8 = 1 
(assert true) ; Non Conditional
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (= 1 (ite var2662!1 1 0)))) ; Cond: 1 != z2 
(define-const var1446 String "0") ; Statement: $r24 = "0" 
(assert true) ; Non Conditional
(define-const var3072 String var1446) ; Statement: r3 = $r24 
(define-const var673 Int (getLength-Arr-String-1 var169)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (not (= var673 7)))) ; Negate: Cond: $i2 != 7  
(define-const var3059 var3795 var647-YEAR_VALUE_PARSER) ; Statement: $r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER> 
(define-const var1326 String (select var169 6)) ; Statement: $r22 = r1[6] 
(assert true)
(define-const var2128 var100 (parse/2088945785 var3059 var1326)) ; Statement: r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22) 
 ; Statement: goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher] 
(assert true) ; Non Conditional
(define-const var1692 var3274 var3274-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var276 var3795 var647-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var2232 var100 (parse/2088945785 var276 var3072)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var524 var3795 var647-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var1247 String (select var169 var135!1)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var1366 var100 (parse/2088945785 var524 var1247)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var1295 var3795 var647-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var3260 Int (+ 1 (ite var2144!1 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var3352 String (select var169 var3260)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var568 var100 (parse/2088945785 var1295 var3352)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var477 var3795 var647-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var2672 Int (+ 2 (ite var2181!1 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var3756 String (select var169 var2672)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var2697 var100 (parse/2088945785 var477 var3756)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var3397 var3795 var647-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var1057 Int (+ 3 (ite var980!1 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var1220 String (select var169 var1057)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var3251 var100 (parse/2088945785 var3397 var1220)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var2090 var3795 var647-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var2784 Int (+ 4 (ite var2901!1 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var2799 String (select var169 var2784)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var1637 var100 (parse/2088945785 var2090 var2799)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var1692 var2232 var1366 var568 var2697 var3251 var1637 var2128)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var1692!1 var3274)
(declare-const var2232!1 var100)
(declare-const var1366!1 var100)
(declare-const var568!1 var100)
(declare-const var2697!1 var100)
(declare-const var3251!1 var100)
(declare-const var1637!1 var100)
(declare-const var2128!1 var100)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var423_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var634_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), var3274-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var1940=r0, var1780=null_type, var169=r1, var2775=$i0, var1385=java.util.function.Supplier, var423=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var3514=$r2, var634=cn.hutool.core.lang.Assert, var422=5, var1823=7, var1660=z0, var2901=z5, var980=z4, var2181=z3, var2662=z2, var2144=z1, var135=b8, var3329=$i1, var1446=$r24, var3072=r3, var673=$i2, var3795=cn.hutool.cron.pattern.parser.PartParser, var647=cn.hutool.cron.pattern.parser.PatternParser, var3059=$r23, var1326=$r22, var100=cn.hutool.cron.pattern.matcher.PartMatcher, var2128=r25, var3274=cn.hutool.cron.pattern.matcher.PatternMatcher, var1692=$r4, var276=$r5, var2232=$r21, var524=$r7, var1247=$r6, var1366=$r20, var1295=$r9, var3260=$i3, var3352=$r8, var568=$r19, var477=$r11, var2672=$i4, var3756=$r10, var2697=$r18, var3397=$r13, var1057=$i5, var1220=$r12, var3251=$r17, var2090=$r15, var2784=$i6, var2799=$r14, var1637=$r16}
; {r0=var1940, null_type=var1780, r1=var169, $i0=var2775, java.util.function.Supplier=var1385, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var423, $r2=var3514, cn.hutool.core.lang.Assert=var634, 5=var422, 7=var1823, z0=var1660, z5=var2901, z4=var980, z3=var2181, z2=var2662, z1=var2144, b8=var135, $i1=var3329, $r24=var1446, r3=var3072, $i2=var673, cn.hutool.cron.pattern.parser.PartParser=var3795, cn.hutool.cron.pattern.parser.PatternParser=var647, $r23=var3059, $r22=var1326, cn.hutool.cron.pattern.matcher.PartMatcher=var100, r25=var2128, cn.hutool.cron.pattern.matcher.PatternMatcher=var3274, $r4=var1692, $r5=var276, $r21=var2232, $r7=var524, $r6=var1247, $r20=var1366, $r9=var1295, $i3=var3260, $r8=var3352, $r19=var568, $r11=var477, $i4=var2672, $r10=var3756, $r18=var2697, $r13=var3397, $i5=var1057, $r12=var1220, $r17=var3251, $r15=var2090, $i6=var2784, $r14=var2799, $r16=var1637}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	z0 = 1;	z5 = 1;	z4 = 1;	z3 = 1;	z2 = 1;	z1 = 1;	b8 = 1;	if 1 != z2 goto $r24 = "0";	$r24 = "0";	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER>;	$r22 = r1[6];	r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22);	goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher];	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7