(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1403 0)
(declare-sort var301 0)
(declare-sort var1773 0)
(declare-sort var1240 0)
(declare-sort var117 0)
(declare-sort var1567 0)
(declare-sort var2702 0)
(declare-sort var2771 0)
(declare-sort var2000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1773_bootstrap$/-1886679087 (String) var301)
(declare-fun var1240_checkBetween/-1819433976 (Int Int Int var301) Int)
(declare-fun cast-from-var1567-to-var117 (var1567) var117)
(declare-fun var2702-init () var2702)
(declare-fun parse/2088945785 (var2771 String) var117)
(declare-fun <init>/-774169046 (var2702 var117 var117 var117 var117 var117 var117 var117) void)
(declare-const null-String String)
(declare-const var1567-INSTANCE var1567)
(declare-const var2000-SECOND_VALUE_PARSER var2771)
(declare-const var2000-MINUTE_VALUE_PARSER var2771)
(declare-const var2000-HOUR_VALUE_PARSER var2771)
(declare-const var2000-DAY_OF_MONTH_VALUE_PARSER var2771)
(declare-const var2000-MONTH_VALUE_PARSER var2771)
(declare-const var2000-DAY_OF_WEEK_VALUE_PARSER var2771)
(declare-const var67 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var67 null-String)))
(assert true)
(define-const var2315 (Array Int String) (split/-636890950 var67 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var67 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var89 Int (getLength-Arr-String-1 var2315)) ; Statement: $i0 = lengthof r1 
(define-const var2766 var301 (var1773_bootstrap$/-1886679087 var67)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var1240_checkBetween/-1819433976 var89 5 7 var2766)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var89!1 Int)
(declare-const var593 Int)
(declare-const var296 Int)
(declare-const var2766!1 var301)
(define-const var2621 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2762 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var2553 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2034 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var423 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2552 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1751 Int 0) ; Statement: b8 = 0 
(define-const var411 Int (getLength-Arr-String-1 var2315)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (not (= var411 6))) ; Negate: Cond: $i1 == 6  
(define-const var3274 Int (getLength-Arr-String-1 var2315)) ; Statement: $i7 = lengthof r1 
 ; Statement: if $i7 != 7 goto (branch) 
(assert (not (= var3274 7))) ; Cond: $i7 != 7 
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (= 1 (ite var423 1 0)))) ; Cond: 1 != z2 
(define-const var2870 String "0") ; Statement: $r24 = "0" 
(assert true) ; Non Conditional
(define-const var1123 String var2870) ; Statement: r3 = $r24 
(define-const var484 Int (getLength-Arr-String-1 var2315)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (= var484 7))) ; Cond: $i2 != 7 
(define-const var539 var117 (cast-from-var1567-to-var117 var1567-INSTANCE)) ; Statement: r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert true) ; Non Conditional
(define-const var207 var2702 var2702-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var2524 var2771 var2000-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var3190 var117 (parse/2088945785 var2524 var1123)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var8 var2771 var2000-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var2348 String (select var2315 var1751)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var2272 var117 (parse/2088945785 var8 var2348)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var1166 var2771 var2000-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var1868 Int (+ 1 (ite var2552 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var1891 String (select var2315 var1868)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var1845 var117 (parse/2088945785 var1166 var1891)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var1205 var2771 var2000-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var2590 Int (+ 2 (ite var2034 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var2020 String (select var2315 var2590)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var2176 var117 (parse/2088945785 var1205 var2020)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var3032 var2771 var2000-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var3291 Int (+ 3 (ite var2553 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var1682 String (select var2315 var3291)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var3819 var117 (parse/2088945785 var3032 var1682)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var2909 var2771 var2000-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var104 Int (+ 4 (ite var2762 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var3462 String (select var2315 var104)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var556 var117 (parse/2088945785 var2909 var3462)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var207 var3190 var2272 var1845 var2176 var3819 var556 var539)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var207!1 var2702)
(declare-const var3190!1 var117)
(declare-const var2272!1 var117)
(declare-const var1845!1 var117)
(declare-const var2176!1 var117)
(declare-const var3819!1 var117)
(declare-const var556!1 var117)
(declare-const var539!1 var117)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1773_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var1240_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), cast-from-var1567-to-var117=([cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher], cn.hutool.cron.pattern.matcher.PartMatcher), var2702-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var67=r0, var1403=null_type, var2315=r1, var89=$i0, var301=java.util.function.Supplier, var1773=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var2766=$r2, var1240=cn.hutool.core.lang.Assert, var593=5, var296=7, var2621=z0, var2762=z5, var2553=z4, var2034=z3, var423=z2, var2552=z1, var1751=b8, var411=$i1, var3274=$i7, var2870=$r24, var1123=r3, var484=$i2, var117=cn.hutool.cron.pattern.matcher.PartMatcher, var1567=cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher, var539=r25, var2702=cn.hutool.cron.pattern.matcher.PatternMatcher, var207=$r4, var2771=cn.hutool.cron.pattern.parser.PartParser, var2000=cn.hutool.cron.pattern.parser.PatternParser, var2524=$r5, var3190=$r21, var8=$r7, var2348=$r6, var2272=$r20, var1166=$r9, var1868=$i3, var1891=$r8, var1845=$r19, var1205=$r11, var2590=$i4, var2020=$r10, var2176=$r18, var3032=$r13, var3291=$i5, var1682=$r12, var3819=$r17, var2909=$r15, var104=$i6, var3462=$r14, var556=$r16}
; {r0=var67, null_type=var1403, r1=var2315, $i0=var89, java.util.function.Supplier=var301, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var1773, $r2=var2766, cn.hutool.core.lang.Assert=var1240, 5=var593, 7=var296, z0=var2621, z5=var2762, z4=var2553, z3=var2034, z2=var423, z1=var2552, b8=var1751, $i1=var411, $i7=var3274, $r24=var2870, r3=var1123, $i2=var484, cn.hutool.cron.pattern.matcher.PartMatcher=var117, cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher=var1567, r25=var539, cn.hutool.cron.pattern.matcher.PatternMatcher=var2702, $r4=var207, cn.hutool.cron.pattern.parser.PartParser=var2771, cn.hutool.cron.pattern.parser.PatternParser=var2000, $r5=var2524, $r21=var3190, $r7=var8, $r6=var2348, $r20=var2272, $r9=var1166, $i3=var1868, $r8=var1891, $r19=var1845, $r11=var1205, $i4=var2590, $r10=var2020, $r18=var2176, $r13=var3032, $i5=var3291, $r12=var1682, $r17=var3819, $r15=var2909, $i6=var104, $r14=var3462, $r16=var556}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	$i7 = lengthof r1;	if $i7 != 7 goto (branch);	if 1 != z2 goto $r24 = "0";	$r24 = "0";	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7