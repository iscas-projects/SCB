(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1278 0)
(declare-sort var895 0)
(declare-sort var2271 0)
(declare-sort var2677 0)
(declare-sort var897 0)
(declare-sort var185 0)
(declare-sort var624 0)
(declare-sort var1905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2271_bootstrap$/-1886679087 (String) var895)
(declare-fun var2677_checkBetween/-1819433976 (Int Int Int var895) Int)
(declare-fun parse/2088945785 (var897 String) var624)
(declare-fun var1905-init () var1905)
(declare-fun <init>/-774169046 (var1905 var624 var624 var624 var624 var624 var624 var624) void)
(declare-const null-String String)
(declare-const var185-YEAR_VALUE_PARSER var897)
(declare-const var185-SECOND_VALUE_PARSER var897)
(declare-const var185-MINUTE_VALUE_PARSER var897)
(declare-const var185-HOUR_VALUE_PARSER var897)
(declare-const var185-DAY_OF_MONTH_VALUE_PARSER var897)
(declare-const var185-MONTH_VALUE_PARSER var897)
(declare-const var185-DAY_OF_WEEK_VALUE_PARSER var897)
(declare-const var1086 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1086 null-String)))
(assert true)
(define-const var3319 (Array Int String) (split/-636890950 var1086 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1086 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var585 Int (getLength-Arr-String-1 var3319)) ; Statement: $i0 = lengthof r1 
(define-const var335 var895 (var2271_bootstrap$/-1886679087 var1086)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var2677_checkBetween/-1819433976 var585 5 7 var335)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var585!1 Int)
(declare-const var1208 Int)
(declare-const var2641 Int)
(declare-const var335!1 var895)
(define-const var1287 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var1497 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var86 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2224 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2500 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var818 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3596 Int 0) ; Statement: b8 = 0 
(define-const var3633 Int (getLength-Arr-String-1 var3319)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (not (= var3633 6))) ; Negate: Cond: $i1 == 6  
(define-const var3580 Int (getLength-Arr-String-1 var3319)) ; Statement: $i7 = lengthof r1 
 ; Statement: if $i7 != 7 goto (branch) 
(assert (not (= var3580 7))) ; Cond: $i7 != 7 
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (= 1 (ite var2500 1 0)))) ; Cond: 1 != z2 
(define-const var2201 String "0") ; Statement: $r24 = "0" 
(assert true) ; Non Conditional
(define-const var645 String var2201) ; Statement: r3 = $r24 
(define-const var2887 Int (getLength-Arr-String-1 var3319)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (not (= var2887 7)))) ; Negate: Cond: $i2 != 7  
(define-const var81 var897 var185-YEAR_VALUE_PARSER) ; Statement: $r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER> 
(define-const var2592 String (select var3319 6)) ; Statement: $r22 = r1[6] 
(assert true)
(define-const var2524 var624 (parse/2088945785 var81 var2592)) ; Statement: r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22) 
 ; Statement: goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher] 
(assert true) ; Non Conditional
(define-const var1810 var1905 var1905-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var1997 var897 var185-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var3777 var624 (parse/2088945785 var1997 var645)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var903 var897 var185-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var3105 String (select var3319 var3596)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var2001 var624 (parse/2088945785 var903 var3105)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var3447 var897 var185-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var531 Int (+ 1 (ite var818 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var1709 String (select var3319 var531)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var277 var624 (parse/2088945785 var3447 var1709)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var2916 var897 var185-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var3627 Int (+ 2 (ite var2224 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var385 String (select var3319 var3627)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var1832 var624 (parse/2088945785 var2916 var385)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var2573 var897 var185-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var304 Int (+ 3 (ite var86 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var2245 String (select var3319 var304)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var987 var624 (parse/2088945785 var2573 var2245)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var3822 var897 var185-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var336 Int (+ 4 (ite var1497 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var651 String (select var3319 var336)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var3022 var624 (parse/2088945785 var3822 var651)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var1810 var3777 var2001 var277 var1832 var987 var3022 var2524)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var1810!1 var1905)
(declare-const var3777!1 var624)
(declare-const var2001!1 var624)
(declare-const var277!1 var624)
(declare-const var1832!1 var624)
(declare-const var987!1 var624)
(declare-const var3022!1 var624)
(declare-const var2524!1 var624)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2271_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var2677_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), var1905-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var1086=r0, var1278=null_type, var3319=r1, var585=$i0, var895=java.util.function.Supplier, var2271=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var335=$r2, var2677=cn.hutool.core.lang.Assert, var1208=5, var2641=7, var1287=z0, var1497=z5, var86=z4, var2224=z3, var2500=z2, var818=z1, var3596=b8, var3633=$i1, var3580=$i7, var2201=$r24, var645=r3, var2887=$i2, var897=cn.hutool.cron.pattern.parser.PartParser, var185=cn.hutool.cron.pattern.parser.PatternParser, var81=$r23, var2592=$r22, var624=cn.hutool.cron.pattern.matcher.PartMatcher, var2524=r25, var1905=cn.hutool.cron.pattern.matcher.PatternMatcher, var1810=$r4, var1997=$r5, var3777=$r21, var903=$r7, var3105=$r6, var2001=$r20, var3447=$r9, var531=$i3, var1709=$r8, var277=$r19, var2916=$r11, var3627=$i4, var385=$r10, var1832=$r18, var2573=$r13, var304=$i5, var2245=$r12, var987=$r17, var3822=$r15, var336=$i6, var651=$r14, var3022=$r16}
; {r0=var1086, null_type=var1278, r1=var3319, $i0=var585, java.util.function.Supplier=var895, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var2271, $r2=var335, cn.hutool.core.lang.Assert=var2677, 5=var1208, 7=var2641, z0=var1287, z5=var1497, z4=var86, z3=var2224, z2=var2500, z1=var818, b8=var3596, $i1=var3633, $i7=var3580, $r24=var2201, r3=var645, $i2=var2887, cn.hutool.cron.pattern.parser.PartParser=var897, cn.hutool.cron.pattern.parser.PatternParser=var185, $r23=var81, $r22=var2592, cn.hutool.cron.pattern.matcher.PartMatcher=var624, r25=var2524, cn.hutool.cron.pattern.matcher.PatternMatcher=var1905, $r4=var1810, $r5=var1997, $r21=var3777, $r7=var903, $r6=var3105, $r20=var2001, $r9=var3447, $i3=var531, $r8=var1709, $r19=var277, $r11=var2916, $i4=var3627, $r10=var385, $r18=var1832, $r13=var2573, $i5=var304, $r12=var2245, $r17=var987, $r15=var3822, $i6=var336, $r14=var651, $r16=var3022}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	$i7 = lengthof r1;	if $i7 != 7 goto (branch);	if 1 != z2 goto $r24 = "0";	$r24 = "0";	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER>;	$r22 = r1[6];	r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22);	goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher];	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7