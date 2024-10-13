(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2853 0)
(declare-sort var960 0)
(declare-sort var3392 0)
(declare-sort var3744 0)
(declare-sort var3565 0)
(declare-sort var1810 0)
(declare-sort var1756 0)
(declare-sort var910 0)
(declare-sort var1483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3392_bootstrap$/-1886679087 (String) var960)
(declare-fun var3744_checkBetween/-1819433976 (Int Int Int var960) Int)
(declare-fun cast-from-var1810-to-var3565 (var1810) var3565)
(declare-fun var1756-init () var1756)
(declare-fun parse/2088945785 (var910 String) var3565)
(declare-fun <init>/-774169046 (var1756 var3565 var3565 var3565 var3565 var3565 var3565 var3565) void)
(declare-const null-String String)
(declare-const var1810-INSTANCE var1810)
(declare-const var1483-SECOND_VALUE_PARSER var910)
(declare-const var1483-MINUTE_VALUE_PARSER var910)
(declare-const var1483-HOUR_VALUE_PARSER var910)
(declare-const var1483-DAY_OF_MONTH_VALUE_PARSER var910)
(declare-const var1483-MONTH_VALUE_PARSER var910)
(declare-const var1483-DAY_OF_WEEK_VALUE_PARSER var910)
(declare-const var2318 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2318 null-String)))
(assert true)
(define-const var922 (Array Int String) (split/-636890950 var2318 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2318 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var51 Int (getLength-Arr-String-1 var922)) ; Statement: $i0 = lengthof r1 
(define-const var1364 var960 (var3392_bootstrap$/-1886679087 var2318)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var3744_checkBetween/-1819433976 var51 5 7 var1364)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var51!1 Int)
(declare-const var1278 Int)
(declare-const var425 Int)
(declare-const var1364!1 var960)
(define-const var533 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2111 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1740 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var1486 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1988 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2205 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var574 Int 0) ; Statement: b8 = 0 
(define-const var1411 Int (getLength-Arr-String-1 var922)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (= var1411 6)) ; Cond: $i1 == 6 
(define-const var533!1 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var2111!1 Bool (ite (= 1 1) true false)) ; Statement: z5 = 1 
(define-const var1740!1 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var1486!1 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var1988!1 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var2205!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var574!1 Int 1) ; Statement: b8 = 1 
(assert true) ; Non Conditional
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (not (= 1 (ite var1988!1 1 0))))) ; Negate: Cond: 1 != z2  
(define-const var1440 String (select var922 0)) ; Statement: $r24 = r1[0] 
 ; Statement: goto [?= r3 = $r24] 
(assert true) ; Non Conditional
(define-const var891 String var1440) ; Statement: r3 = $r24 
(define-const var2272 Int (getLength-Arr-String-1 var922)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (= var2272 7))) ; Cond: $i2 != 7 
(define-const var1121 var3565 (cast-from-var1810-to-var3565 var1810-INSTANCE)) ; Statement: r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert true) ; Non Conditional
(define-const var1237 var1756 var1756-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var3764 var910 var1483-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var1408 var3565 (parse/2088945785 var3764 var891)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var2144 var910 var1483-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var2890 String (select var922 var574!1)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var3076 var3565 (parse/2088945785 var2144 var2890)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var873 var910 var1483-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var1791 Int (+ 1 (ite var2205!1 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var1080 String (select var922 var1791)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var461 var3565 (parse/2088945785 var873 var1080)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var2424 var910 var1483-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var1361 Int (+ 2 (ite var1486!1 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var2914 String (select var922 var1361)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var1899 var3565 (parse/2088945785 var2424 var2914)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var150 var910 var1483-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var373 Int (+ 3 (ite var1740!1 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var2783 String (select var922 var373)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var3810 var3565 (parse/2088945785 var150 var2783)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var2646 var910 var1483-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var2176 Int (+ 4 (ite var2111!1 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var3507 String (select var922 var2176)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var88 var3565 (parse/2088945785 var2646 var3507)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var1237 var1408 var3076 var461 var1899 var3810 var88 var1121)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var1237!1 var1756)
(declare-const var1408!1 var3565)
(declare-const var3076!1 var3565)
(declare-const var461!1 var3565)
(declare-const var1899!1 var3565)
(declare-const var3810!1 var3565)
(declare-const var88!1 var3565)
(declare-const var1121!1 var3565)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var3392_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var3744_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), cast-from-var1810-to-var3565=([cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher], cn.hutool.cron.pattern.matcher.PartMatcher), var1756-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var2318=r0, var2853=null_type, var922=r1, var51=$i0, var960=java.util.function.Supplier, var3392=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var1364=$r2, var3744=cn.hutool.core.lang.Assert, var1278=5, var425=7, var533=z0, var2111=z5, var1740=z4, var1486=z3, var1988=z2, var2205=z1, var574=b8, var1411=$i1, var1440=$r24, var891=r3, var2272=$i2, var3565=cn.hutool.cron.pattern.matcher.PartMatcher, var1810=cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher, var1121=r25, var1756=cn.hutool.cron.pattern.matcher.PatternMatcher, var1237=$r4, var910=cn.hutool.cron.pattern.parser.PartParser, var1483=cn.hutool.cron.pattern.parser.PatternParser, var3764=$r5, var1408=$r21, var2144=$r7, var2890=$r6, var3076=$r20, var873=$r9, var1791=$i3, var1080=$r8, var461=$r19, var2424=$r11, var1361=$i4, var2914=$r10, var1899=$r18, var150=$r13, var373=$i5, var2783=$r12, var3810=$r17, var2646=$r15, var2176=$i6, var3507=$r14, var88=$r16}
; {r0=var2318, null_type=var2853, r1=var922, $i0=var51, java.util.function.Supplier=var960, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var3392, $r2=var1364, cn.hutool.core.lang.Assert=var3744, 5=var1278, 7=var425, z0=var533, z5=var2111, z4=var1740, z3=var1486, z2=var1988, z1=var2205, b8=var574, $i1=var1411, $r24=var1440, r3=var891, $i2=var2272, cn.hutool.cron.pattern.matcher.PartMatcher=var3565, cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher=var1810, r25=var1121, cn.hutool.cron.pattern.matcher.PatternMatcher=var1756, $r4=var1237, cn.hutool.cron.pattern.parser.PartParser=var910, cn.hutool.cron.pattern.parser.PatternParser=var1483, $r5=var3764, $r21=var1408, $r7=var2144, $r6=var2890, $r20=var3076, $r9=var873, $i3=var1791, $r8=var1080, $r19=var461, $r11=var2424, $i4=var1361, $r10=var2914, $r18=var1899, $r13=var150, $i5=var373, $r12=var2783, $r17=var3810, $r15=var2646, $i6=var2176, $r14=var3507, $r16=var88}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	z0 = 1;	z5 = 1;	z4 = 1;	z3 = 1;	z2 = 1;	z1 = 1;	b8 = 1;	if 1 != z2 goto $r24 = "0";	$r24 = r1[0];	goto [?= r3 = $r24];	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7