(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2095 0)
(declare-sort var3235 0)
(declare-sort var1564 0)
(declare-sort var3237 0)
(declare-sort var562 0)
(declare-sort var476 0)
(declare-sort var876 0)
(declare-sort var2306 0)
(declare-sort var1844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1564_bootstrap$/-1886679087 (String) var3235)
(declare-fun var3237_checkBetween/-1819433976 (Int Int Int var3235) Int)
(declare-fun cast-from-var476-to-var562 (var476) var562)
(declare-fun var876-init () var876)
(declare-fun parse/2088945785 (var2306 String) var562)
(declare-fun <init>/-774169046 (var876 var562 var562 var562 var562 var562 var562 var562) void)
(declare-const null-String String)
(declare-const var476-INSTANCE var476)
(declare-const var1844-SECOND_VALUE_PARSER var2306)
(declare-const var1844-MINUTE_VALUE_PARSER var2306)
(declare-const var1844-HOUR_VALUE_PARSER var2306)
(declare-const var1844-DAY_OF_MONTH_VALUE_PARSER var2306)
(declare-const var1844-MONTH_VALUE_PARSER var2306)
(declare-const var1844-DAY_OF_WEEK_VALUE_PARSER var2306)
(declare-const var3944 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3944 null-String)))
(assert true)
(define-const var2968 (Array Int String) (split/-636890950 var3944 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3944 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var1177 Int (getLength-Arr-String-1 var2968)) ; Statement: $i0 = lengthof r1 
(define-const var966 var3235 (var1564_bootstrap$/-1886679087 var3944)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var3237_checkBetween/-1819433976 var1177 5 7 var966)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var1177!1 Int)
(declare-const var45 Int)
(declare-const var111 Int)
(declare-const var966!1 var3235)
(define-const var3747 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var121 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1562 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3829 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2276 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1207 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2682 Int 0) ; Statement: b8 = 0 
(define-const var2170 Int (getLength-Arr-String-1 var2968)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (= var2170 6)) ; Cond: $i1 == 6 
(define-const var3747!1 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var121!1 Bool (ite (= 1 1) true false)) ; Statement: z5 = 1 
(define-const var1562!1 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var3829!1 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var2276!1 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var1207!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var2682!1 Int 1) ; Statement: b8 = 1 
(assert true) ; Non Conditional
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (= 1 (ite var2276!1 1 0)))) ; Cond: 1 != z2 
(define-const var2643 String "0") ; Statement: $r24 = "0" 
(assert true) ; Non Conditional
(define-const var2405 String var2643) ; Statement: r3 = $r24 
(define-const var1128 Int (getLength-Arr-String-1 var2968)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (= var1128 7))) ; Cond: $i2 != 7 
(define-const var1767 var562 (cast-from-var476-to-var562 var476-INSTANCE)) ; Statement: r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert true) ; Non Conditional
(define-const var3265 var876 var876-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var2444 var2306 var1844-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var2162 var562 (parse/2088945785 var2444 var2405)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var818 var2306 var1844-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var2354 String (select var2968 var2682!1)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var1380 var562 (parse/2088945785 var818 var2354)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var196 var2306 var1844-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var2340 Int (+ 1 (ite var1207!1 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var2787 String (select var2968 var2340)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var1336 var562 (parse/2088945785 var196 var2787)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var2268 var2306 var1844-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var438 Int (+ 2 (ite var3829!1 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var3762 String (select var2968 var438)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var3146 var562 (parse/2088945785 var2268 var3762)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var1689 var2306 var1844-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var1179 Int (+ 3 (ite var1562!1 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var2266 String (select var2968 var1179)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var583 var562 (parse/2088945785 var1689 var2266)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var649 var2306 var1844-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var1362 Int (+ 4 (ite var121!1 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var3350 String (select var2968 var1362)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var824 var562 (parse/2088945785 var649 var3350)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var3265 var2162 var1380 var1336 var3146 var583 var824 var1767)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var3265!1 var876)
(declare-const var2162!1 var562)
(declare-const var1380!1 var562)
(declare-const var1336!1 var562)
(declare-const var3146!1 var562)
(declare-const var583!1 var562)
(declare-const var824!1 var562)
(declare-const var1767!1 var562)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1564_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var3237_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), cast-from-var476-to-var562=([cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher], cn.hutool.cron.pattern.matcher.PartMatcher), var876-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var3944=r0, var2095=null_type, var2968=r1, var1177=$i0, var3235=java.util.function.Supplier, var1564=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var966=$r2, var3237=cn.hutool.core.lang.Assert, var45=5, var111=7, var3747=z0, var121=z5, var1562=z4, var3829=z3, var2276=z2, var1207=z1, var2682=b8, var2170=$i1, var2643=$r24, var2405=r3, var1128=$i2, var562=cn.hutool.cron.pattern.matcher.PartMatcher, var476=cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher, var1767=r25, var876=cn.hutool.cron.pattern.matcher.PatternMatcher, var3265=$r4, var2306=cn.hutool.cron.pattern.parser.PartParser, var1844=cn.hutool.cron.pattern.parser.PatternParser, var2444=$r5, var2162=$r21, var818=$r7, var2354=$r6, var1380=$r20, var196=$r9, var2340=$i3, var2787=$r8, var1336=$r19, var2268=$r11, var438=$i4, var3762=$r10, var3146=$r18, var1689=$r13, var1179=$i5, var2266=$r12, var583=$r17, var649=$r15, var1362=$i6, var3350=$r14, var824=$r16}
; {r0=var3944, null_type=var2095, r1=var2968, $i0=var1177, java.util.function.Supplier=var3235, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var1564, $r2=var966, cn.hutool.core.lang.Assert=var3237, 5=var45, 7=var111, z0=var3747, z5=var121, z4=var1562, z3=var3829, z2=var2276, z1=var1207, b8=var2682, $i1=var2170, $r24=var2643, r3=var2405, $i2=var1128, cn.hutool.cron.pattern.matcher.PartMatcher=var562, cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher=var476, r25=var1767, cn.hutool.cron.pattern.matcher.PatternMatcher=var876, $r4=var3265, cn.hutool.cron.pattern.parser.PartParser=var2306, cn.hutool.cron.pattern.parser.PatternParser=var1844, $r5=var2444, $r21=var2162, $r7=var818, $r6=var2354, $r20=var1380, $r9=var196, $i3=var2340, $r8=var2787, $r19=var1336, $r11=var2268, $i4=var438, $r10=var3762, $r18=var3146, $r13=var1689, $i5=var1179, $r12=var2266, $r17=var583, $r15=var649, $i6=var1362, $r14=var3350, $r16=var824}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	z0 = 1;	z5 = 1;	z4 = 1;	z3 = 1;	z2 = 1;	z1 = 1;	b8 = 1;	if 1 != z2 goto $r24 = "0";	$r24 = "0";	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7