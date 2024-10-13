(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1093 0)
(declare-sort var70 0)
(declare-sort var2576 0)
(declare-sort var246 0)
(declare-sort var472 0)
(declare-sort var987 0)
(declare-sort var1986 0)
(declare-sort var1448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2576_bootstrap$/-1886679087 (String) var70)
(declare-fun var246_checkBetween/-1819433976 (Int Int Int var70) Int)
(declare-fun parse/2088945785 (var472 String) var1986)
(declare-fun var1448-init () var1448)
(declare-fun <init>/-774169046 (var1448 var1986 var1986 var1986 var1986 var1986 var1986 var1986) void)
(declare-const null-String String)
(declare-const var987-YEAR_VALUE_PARSER var472)
(declare-const var987-SECOND_VALUE_PARSER var472)
(declare-const var987-MINUTE_VALUE_PARSER var472)
(declare-const var987-HOUR_VALUE_PARSER var472)
(declare-const var987-DAY_OF_MONTH_VALUE_PARSER var472)
(declare-const var987-MONTH_VALUE_PARSER var472)
(declare-const var987-DAY_OF_WEEK_VALUE_PARSER var472)
(declare-const var1250 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1250 null-String)))
(assert true)
(define-const var1095 (Array Int String) (split/-636890950 var1250 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1250 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var2664 Int (getLength-Arr-String-1 var1095)) ; Statement: $i0 = lengthof r1 
(define-const var1353 var70 (var2576_bootstrap$/-1886679087 var1250)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var246_checkBetween/-1819433976 var2664 5 7 var1353)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var2664!1 Int)
(declare-const var3127 Int)
(declare-const var3362 Int)
(declare-const var1353!1 var70)
(define-const var2567 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2021 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var427 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2423 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1445 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2984 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1765 Int 0) ; Statement: b8 = 0 
(define-const var3632 Int (getLength-Arr-String-1 var1095)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (= var3632 6)) ; Cond: $i1 == 6 
(define-const var2567!1 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var2021!1 Bool (ite (= 1 1) true false)) ; Statement: z5 = 1 
(define-const var427!1 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var2423!1 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var1445!1 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var2984!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var1765!1 Int 1) ; Statement: b8 = 1 
(assert true) ; Non Conditional
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (not (= 1 (ite var1445!1 1 0))))) ; Negate: Cond: 1 != z2  
(define-const var1359 String (select var1095 0)) ; Statement: $r24 = r1[0] 
 ; Statement: goto [?= r3 = $r24] 
(assert true) ; Non Conditional
(define-const var1588 String var1359) ; Statement: r3 = $r24 
(define-const var1049 Int (getLength-Arr-String-1 var1095)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (not (= var1049 7)))) ; Negate: Cond: $i2 != 7  
(define-const var3375 var472 var987-YEAR_VALUE_PARSER) ; Statement: $r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER> 
(define-const var397 String (select var1095 6)) ; Statement: $r22 = r1[6] 
(assert true)
(define-const var3915 var1986 (parse/2088945785 var3375 var397)) ; Statement: r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22) 
 ; Statement: goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher] 
(assert true) ; Non Conditional
(define-const var333 var1448 var1448-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var742 var472 var987-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var3774 var1986 (parse/2088945785 var742 var1588)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var2745 var472 var987-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var1881 String (select var1095 var1765!1)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var2237 var1986 (parse/2088945785 var2745 var1881)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var1482 var472 var987-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var735 Int (+ 1 (ite var2984!1 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var3947 String (select var1095 var735)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var877 var1986 (parse/2088945785 var1482 var3947)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var1341 var472 var987-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var28 Int (+ 2 (ite var2423!1 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var3137 String (select var1095 var28)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var593 var1986 (parse/2088945785 var1341 var3137)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var3014 var472 var987-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var273 Int (+ 3 (ite var427!1 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var945 String (select var1095 var273)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var2127 var1986 (parse/2088945785 var3014 var945)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var828 var472 var987-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var1825 Int (+ 4 (ite var2021!1 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var3277 String (select var1095 var1825)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var3840 var1986 (parse/2088945785 var828 var3277)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var333 var3774 var2237 var877 var593 var2127 var3840 var3915)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var333!1 var1448)
(declare-const var3774!1 var1986)
(declare-const var2237!1 var1986)
(declare-const var877!1 var1986)
(declare-const var593!1 var1986)
(declare-const var2127!1 var1986)
(declare-const var3840!1 var1986)
(declare-const var3915!1 var1986)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2576_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var246_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), var1448-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var1250=r0, var1093=null_type, var1095=r1, var2664=$i0, var70=java.util.function.Supplier, var2576=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var1353=$r2, var246=cn.hutool.core.lang.Assert, var3127=5, var3362=7, var2567=z0, var2021=z5, var427=z4, var2423=z3, var1445=z2, var2984=z1, var1765=b8, var3632=$i1, var1359=$r24, var1588=r3, var1049=$i2, var472=cn.hutool.cron.pattern.parser.PartParser, var987=cn.hutool.cron.pattern.parser.PatternParser, var3375=$r23, var397=$r22, var1986=cn.hutool.cron.pattern.matcher.PartMatcher, var3915=r25, var1448=cn.hutool.cron.pattern.matcher.PatternMatcher, var333=$r4, var742=$r5, var3774=$r21, var2745=$r7, var1881=$r6, var2237=$r20, var1482=$r9, var735=$i3, var3947=$r8, var877=$r19, var1341=$r11, var28=$i4, var3137=$r10, var593=$r18, var3014=$r13, var273=$i5, var945=$r12, var2127=$r17, var828=$r15, var1825=$i6, var3277=$r14, var3840=$r16}
; {r0=var1250, null_type=var1093, r1=var1095, $i0=var2664, java.util.function.Supplier=var70, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var2576, $r2=var1353, cn.hutool.core.lang.Assert=var246, 5=var3127, 7=var3362, z0=var2567, z5=var2021, z4=var427, z3=var2423, z2=var1445, z1=var2984, b8=var1765, $i1=var3632, $r24=var1359, r3=var1588, $i2=var1049, cn.hutool.cron.pattern.parser.PartParser=var472, cn.hutool.cron.pattern.parser.PatternParser=var987, $r23=var3375, $r22=var397, cn.hutool.cron.pattern.matcher.PartMatcher=var1986, r25=var3915, cn.hutool.cron.pattern.matcher.PatternMatcher=var1448, $r4=var333, $r5=var742, $r21=var3774, $r7=var2745, $r6=var1881, $r20=var2237, $r9=var1482, $i3=var735, $r8=var3947, $r19=var877, $r11=var1341, $i4=var28, $r10=var3137, $r18=var593, $r13=var3014, $i5=var273, $r12=var945, $r17=var2127, $r15=var828, $i6=var1825, $r14=var3277, $r16=var3840}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	z0 = 1;	z5 = 1;	z4 = 1;	z3 = 1;	z2 = 1;	z1 = 1;	b8 = 1;	if 1 != z2 goto $r24 = "0";	$r24 = r1[0];	goto [?= r3 = $r24];	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r23 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser YEAR_VALUE_PARSER>;	$r22 = r1[6];	r25 = virtualinvoke $r23.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r22);	goto [?= $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher];	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7