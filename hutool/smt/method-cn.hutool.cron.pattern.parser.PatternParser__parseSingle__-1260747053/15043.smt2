(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3372 0)
(declare-sort var414 0)
(declare-sort var1679 0)
(declare-sort var1374 0)
(declare-sort var2872 0)
(declare-sort var1294 0)
(declare-sort var2415 0)
(declare-sort var3623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1679_bootstrap$/-1886679087 (String) var414)
(declare-fun var1374_checkBetween/-1819433976 (Int Int Int var414) Int)
(declare-fun parse/2088945785 (var2872 String) var2415)
(declare-fun var3623-init () var3623)
(declare-fun <init>/-774169046 (var3623 var2415 var2415 var2415 var2415 var2415 var2415 var2415) void)
(declare-const null-String String)
(declare-const var1294-YEAR_VALUE_PARSER var2872)
(declare-const var1294-SECOND_VALUE_PARSER var2872)
(declare-const var1294-MINUTE_VALUE_PARSER var2872)
(declare-const var1294-HOUR_VALUE_PARSER var2872)
(declare-const var1294-DAY_OF_MONTH_VALUE_PARSER var2872)
(declare-const var1294-MONTH_VALUE_PARSER var2872)
(declare-const var1294-DAY_OF_WEEK_VALUE_PARSER var2872)
(declare-const var62 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var62 null-String)))
(assert true)
(define-const var688 (Array Int String) (split/-636890950 var62 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var62 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var2914 Int (getLength-Arr-String-1 var688)) ; Statement: $i0 = lengthof r1 
(define-const var2692 var414 (var1679_bootstrap$/-1886679087 var62)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var1374_checkBetween/-1819433976 var2914 5 7 var2692)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var2914!1 Int)
(declare-const var496 Int)
(declare-const var2429 Int)
(declare-const var2692!1 var414)
(define-const var1445 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var695 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var3017 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3157 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2608 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2138 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3558 Int 0) ; Statement: b8 = 0 
(define-const var796 Int (getLength-Arr-String-1 var688)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (not (= var796 6))) ; Negate: Cond: $i1 == 6  
(define-const var2665 Int (getLength-Arr-String-1 var688)) ; Statement: $i7 = lengthof r1 
 ; Statement: if $i7 != 7 goto (branch) 
(assert (not (= var2665 7))) ; Cond: $i7 != 7 
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (not (= 1 (ite var2608 1 0))))) ; Negate: Cond: 1 != z2  
(define-const var2113 String (select var688 0)) ; Statement: $r24 = r1[0] 
 ; Statement: goto [?= r3 = $r24] 
(assert true) ; Non Conditional
(define-const var1965 String var2113) ; Statement: r3 = $r24 
(define-const var1836 Int (getLength-Arr-String-1 var688)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (not (= var1836 7)))) ; Negate: Cond: $i2 != 7  
(define-const var1260 var2872 var1294-YEAR_VALUE_PARSER) ; Statement: $r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER> 
(define-const var3905 String (select var688 6)) ; Statement: $r22 = r1[6] 
(assert true)
(define-const var791 var2415 (parse/2088945785 var1260 var3905)) ; Statement: r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22) 
 ; Statement: goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher] 
(assert true) ; Non Conditional
(define-const var2911 var3623 var3623-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var640 var2872 var1294-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var2810 var2415 (parse/2088945785 var640 var1965)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var2687 var2872 var1294-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var2201 String (select var688 var3558)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var3570 var2415 (parse/2088945785 var2687 var2201)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var3301 var2872 var1294-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var2677 Int (+ 1 (ite var2138 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var1085 String (select var688 var2677)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var2655 var2415 (parse/2088945785 var3301 var1085)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var1200 var2872 var1294-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var2502 Int (+ 2 (ite var3157 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var101 String (select var688 var2502)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var785 var2415 (parse/2088945785 var1200 var101)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var2775 var2872 var1294-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var3855 Int (+ 3 (ite var3017 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var2652 String (select var688 var3855)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var686 var2415 (parse/2088945785 var2775 var2652)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var1609 var2872 var1294-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var665 Int (+ 4 (ite var695 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var1614 String (select var688 var665)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var241 var2415 (parse/2088945785 var1609 var1614)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var2911 var2810 var3570 var2655 var785 var686 var241 var791)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var2911!1 var3623)
(declare-const var2810!1 var2415)
(declare-const var3570!1 var2415)
(declare-const var2655!1 var2415)
(declare-const var785!1 var2415)
(declare-const var686!1 var2415)
(declare-const var241!1 var2415)
(declare-const var791!1 var2415)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1679_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var1374_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), var3623-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var62=r0, var3372=null_type, var688=r1, var2914=$i0, var414=java.util.function.Supplier, var1679=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var2692=$r2, var1374=cn.hutool.core.lang.Assert, var496=5, var2429=7, var1445=z0, var695=z5, var3017=z4, var3157=z3, var2608=z2, var2138=z1, var3558=b8, var796=$i1, var2665=$i7, var2113=$r24, var1965=r3, var1836=$i2, var2872=cn.hutool.cron.pattern.parser.PartParser, var1294=cn.hutool.cron.pattern.parser.PatternParser, var1260=$r23, var3905=$r22, var2415=cn.hutool.cron.pattern.matcher.PartMatcher, var791=r25, var3623=cn.hutool.cron.pattern.matcher.PatternMatcher, var2911=$r4, var640=$r5, var2810=$r21, var2687=$r7, var2201=$r6, var3570=$r20, var3301=$r9, var2677=$i3, var1085=$r8, var2655=$r19, var1200=$r11, var2502=$i4, var101=$r10, var785=$r18, var2775=$r13, var3855=$i5, var2652=$r12, var686=$r17, var1609=$r15, var665=$i6, var1614=$r14, var241=$r16}
; {r0=var62, null_type=var3372, r1=var688, $i0=var2914, java.util.function.Supplier=var414, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var1679, $r2=var2692, cn.hutool.core.lang.Assert=var1374, 5=var496, 7=var2429, z0=var1445, z5=var695, z4=var3017, z3=var3157, z2=var2608, z1=var2138, b8=var3558, $i1=var796, $i7=var2665, $r24=var2113, r3=var1965, $i2=var1836, cn.hutool.cron.pattern.parser.PartParser=var2872, cn.hutool.cron.pattern.parser.PatternParser=var1294, $r23=var1260, $r22=var3905, cn.hutool.cron.pattern.matcher.PartMatcher=var2415, r25=var791, cn.hutool.cron.pattern.matcher.PatternMatcher=var3623, $r4=var2911, $r5=var640, $r21=var2810, $r7=var2687, $r6=var2201, $r20=var3570, $r9=var3301, $i3=var2677, $r8=var1085, $r19=var2655, $r11=var1200, $i4=var2502, $r10=var101, $r18=var785, $r13=var2775, $i5=var3855, $r12=var2652, $r17=var686, $r15=var1609, $i6=var665, $r14=var1614, $r16=var241}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	$i7 = lengthof r1;	if $i7 != 7 goto (branch);	if 1 != z2 goto $r24 = "0";	$r24 = r1[0];	goto [?= r3 = $r24];	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER>;	$r22 = r1[6];	r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22);	goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher];	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7