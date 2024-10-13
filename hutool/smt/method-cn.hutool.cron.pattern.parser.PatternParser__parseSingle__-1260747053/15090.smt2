(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort var3363 0)
(declare-sort var3009 0)
(declare-sort var1839 0)
(declare-sort var3485 0)
(declare-sort var2393 0)
(declare-sort var2965 0)
(declare-sort var3054 0)
(declare-sort var3988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3009_bootstrap$/-1886679087 (String) var3363)
(declare-fun var1839_checkBetween/-1819433976 (Int Int Int var3363) Int)
(declare-fun cast-from-var2393-to-var3485 (var2393) var3485)
(declare-fun var2965-init () var2965)
(declare-fun parse/2088945785 (var3054 String) var3485)
(declare-fun <init>/-774169046 (var2965 var3485 var3485 var3485 var3485 var3485 var3485 var3485) void)
(declare-const null-String String)
(declare-const var2393-INSTANCE var2393)
(declare-const var3988-SECOND_VALUE_PARSER var3054)
(declare-const var3988-MINUTE_VALUE_PARSER var3054)
(declare-const var3988-HOUR_VALUE_PARSER var3054)
(declare-const var3988-DAY_OF_MONTH_VALUE_PARSER var3054)
(declare-const var3988-MONTH_VALUE_PARSER var3054)
(declare-const var3988-DAY_OF_WEEK_VALUE_PARSER var3054)
(declare-const var563 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var563 null-String)))
(assert true)
(define-const var1731 (Array Int String) (split/-636890950 var563 "\u005cs+")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var563 "\u005cs+") i) (re.++ (re.* re.all) (re.+ (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (re.* re.all))))))
(define-const var2881 Int (getLength-Arr-String-1 var1731)) ; Statement: $i0 = lengthof r1 
(define-const var12 var3363 (var3009_bootstrap$/-1886679087 var563)) ; Statement: $r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0) 
;(assert (var1839_checkBetween/-1819433976 var2881 5 7 var12)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2) 

(declare-const var2881!1 Int)
(declare-const var2235 Int)
(declare-const var1157 Int)
(declare-const var12!1 var3363)
(define-const var3190 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2555 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var3242 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var575 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1290 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2934 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3638 Int 0) ; Statement: b8 = 0 
(define-const var1820 Int (getLength-Arr-String-1 var1731)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 == 6 goto z0 = 1 
(assert (not (= var1820 6))) ; Negate: Cond: $i1 == 6  
(define-const var3428 Int (getLength-Arr-String-1 var1731)) ; Statement: $i7 = lengthof r1 
 ; Statement: if $i7 != 7 goto (branch) 
(assert (not (= var3428 7))) ; Cond: $i7 != 7 
 ; Statement: if 1 != z2 goto $r24 = "0" 
(assert (not (not (= 1 (ite var1290 1 0))))) ; Negate: Cond: 1 != z2  
(define-const var365 String (select var1731 0)) ; Statement: $r24 = r1[0] 
 ; Statement: goto [?= r3 = $r24] 
(assert true) ; Non Conditional
(define-const var1480 String var365) ; Statement: r3 = $r24 
(define-const var1047 Int (getLength-Arr-String-1 var1731)) ; Statement: $i2 = lengthof r1 
 ; Statement: if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert (not (= var1047 7))) ; Cond: $i2 != 7 
(define-const var3633 var3485 (cast-from-var2393-to-var3485 var2393-INSTANCE)) ; Statement: r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE> 
(assert true) ; Non Conditional
(define-const var1395 var2965 var2965-init) ; Statement: $r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher 
(define-const var2244 var3054 var3988-SECOND_VALUE_PARSER) ; Statement: $r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER> 
(assert true)
(define-const var2532 var3485 (parse/2088945785 var2244 var1480)) ; Statement: $r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3) 
(define-const var2108 var3054 var3988-MINUTE_VALUE_PARSER) ; Statement: $r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER> 
(define-const var993 String (select var1731 var3638)) ; Statement: $r6 = r1[b8] 
(assert true)
(define-const var458 var3485 (parse/2088945785 var2108 var993)) ; Statement: $r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6) 
(define-const var3733 var3054 var3988-HOUR_VALUE_PARSER) ; Statement: $r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER> 
(define-const var2800 Int (+ 1 (ite var2934 1 0))) ; Statement: $i3 = 1 + z1 
(define-const var1989 String (select var1731 var2800)) ; Statement: $r8 = r1[$i3] 
(assert true)
(define-const var3985 var3485 (parse/2088945785 var3733 var1989)) ; Statement: $r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8) 
(define-const var1984 var3054 var3988-DAY_OF_MONTH_VALUE_PARSER) ; Statement: $r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER> 
(define-const var1476 Int (+ 2 (ite var575 1 0))) ; Statement: $i4 = 2 + z3 
(define-const var1889 String (select var1731 var1476)) ; Statement: $r10 = r1[$i4] 
(assert true)
(define-const var378 var3485 (parse/2088945785 var1984 var1889)) ; Statement: $r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10) 
(define-const var3836 var3054 var3988-MONTH_VALUE_PARSER) ; Statement: $r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER> 
(define-const var1548 Int (+ 3 (ite var3242 1 0))) ; Statement: $i5 = 3 + z4 
(define-const var821 String (select var1731 var1548)) ; Statement: $r12 = r1[$i5] 
(assert true)
(define-const var3281 var3485 (parse/2088945785 var3836 var821)) ; Statement: $r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12) 
(define-const var626 var3054 var3988-DAY_OF_WEEK_VALUE_PARSER) ; Statement: $r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER> 
(define-const var609 Int (+ 4 (ite var2555 1 0))) ; Statement: $i6 = 4 + z5 
(define-const var1960 String (select var1731 var609)) ; Statement: $r14 = r1[$i6] 
(assert true)
(define-const var1596 var3485 (parse/2088945785 var626 var1960)) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-774169046 var1395 var2532 var458 var3985 var378 var3281 var1596 var3633)) ; Statement: specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25) 

(declare-const var1395!1 var2965)
(declare-const var2532!1 var3485)
(declare-const var458!1 var3485)
(declare-const var3985!1 var3485)
(declare-const var378!1 var3485)
(declare-const var3281!1 var3485)
(declare-const var1596!1 var3485)
(declare-const var3633!1 var3485)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var3009_bootstrap$/-1886679087=([java.lang.String], java.util.function.Supplier), var1839_checkBetween/-1819433976=([int, int, int, java.util.function.Supplier], int), cast-from-var2393-to-var3485=([cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher], cn.hutool.cron.pattern.matcher.PartMatcher), var2965-init=([], cn.hutool.cron.pattern.matcher.PatternMatcher), parse/2088945785=([cn.hutool.cron.pattern.parser.PartParser, java.lang.String], cn.hutool.cron.pattern.matcher.PartMatcher), <init>/-774169046=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher, cn.hutool.cron.pattern.matcher.PartMatcher], void)}
; {var563=r0, var379=null_type, var1731=r1, var2881=$i0, var3363=java.util.function.Supplier, var3009=cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597, var12=$r2, var1839=cn.hutool.core.lang.Assert, var2235=5, var1157=7, var3190=z0, var2555=z5, var3242=z4, var575=z3, var1290=z2, var2934=z1, var3638=b8, var1820=$i1, var3428=$i7, var365=$r24, var1480=r3, var1047=$i2, var3485=cn.hutool.cron.pattern.matcher.PartMatcher, var2393=cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher, var3633=r25, var2965=cn.hutool.cron.pattern.matcher.PatternMatcher, var1395=$r4, var3054=cn.hutool.cron.pattern.parser.PartParser, var3988=cn.hutool.cron.pattern.parser.PatternParser, var2244=$r5, var2532=$r21, var2108=$r7, var993=$r6, var458=$r20, var3733=$r9, var2800=$i3, var1989=$r8, var3985=$r19, var1984=$r11, var1476=$i4, var1889=$r10, var378=$r18, var3836=$r13, var1548=$i5, var821=$r12, var3281=$r17, var626=$r15, var609=$i6, var1960=$r14, var1596=$r16}
; {r0=var563, null_type=var379, r1=var1731, $i0=var2881, java.util.function.Supplier=var3363, cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597=var3009, $r2=var12, cn.hutool.core.lang.Assert=var1839, 5=var2235, 7=var1157, z0=var3190, z5=var2555, z4=var3242, z3=var575, z2=var1290, z1=var2934, b8=var3638, $i1=var1820, $i7=var3428, $r24=var365, r3=var1480, $i2=var1047, cn.hutool.cron.pattern.matcher.PartMatcher=var3485, cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher=var2393, r25=var3633, cn.hutool.cron.pattern.matcher.PatternMatcher=var2965, $r4=var1395, cn.hutool.cron.pattern.parser.PartParser=var3054, cn.hutool.cron.pattern.parser.PatternParser=var3988, $r5=var2244, $r21=var2532, $r7=var2108, $r6=var993, $r20=var458, $r9=var3733, $i3=var2800, $r8=var1989, $r19=var3985, $r11=var1984, $i4=var1476, $r10=var1889, $r18=var378, $r13=var3836, $i5=var1548, $r12=var821, $r17=var3281, $r15=var626, $i6=var609, $r14=var1960, $r16=var1596}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s+");	$i0 = lengthof r1;	$r2 = staticinvoke <cn.hutool.cron.pattern.parser.PatternParser$lambda_parseSingle_0__597: java.util.function.Supplier bootstrap$(java.lang.String)>(r0);	staticinvoke <cn.hutool.core.lang.Assert: int checkBetween(int,int,int,java.util.function.Supplier)>($i0, 5, 7, $r2);	z0 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	b8 = 0;	$i1 = lengthof r1;	if $i1 == 6 goto z0 = 1;	$i7 = lengthof r1;	if $i7 != 7 goto (branch);	if 1 != z2 goto $r24 = "0";	$r24 = r1[0];	goto [?= r3 = $r24];	r3 = $r24;	$i2 = lengthof r1;	if $i2 != 7 goto r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	r25 = <cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher: cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher INSTANCE>;	$r4 = new cn.hutool.cron.pattern.matcher.PatternMatcher;	$r5 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser SECOND_VALUE_PARSER>;	$r21 = virtualinvoke $r5.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>(r3);	$r7 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MINUTE_VALUE_PARSER>;	$r6 = r1[b8];	$r20 = virtualinvoke $r7.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r6);	$r9 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser HOUR_VALUE_PARSER>;	$i3 = 1 + z1;	$r8 = r1[$i3];	$r19 = virtualinvoke $r9.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r8);	$r11 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_MONTH_VALUE_PARSER>;	$i4 = 2 + z3;	$r10 = r1[$i4];	$r18 = virtualinvoke $r11.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r10);	$r13 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser MONTH_VALUE_PARSER>;	$i5 = 3 + z4;	$r12 = r1[$i5];	$r17 = virtualinvoke $r13.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r12);	$r15 = <cn.hutool.cron.pattern.parser.PatternParser: cn.hutool.cron.pattern.parser.PartParser DAY_OF_WEEK_VALUE_PARSER>;	$i6 = 4 + z5;	$r14 = r1[$i6];	$r16 = virtualinvoke $r15.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.matcher.PartMatcher parse(java.lang.String)>($r14);	specialinvoke $r4.<cn.hutool.cron.pattern.matcher.PatternMatcher: void <init>(cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher,cn.hutool.cron.pattern.matcher.PartMatcher)>($r21, $r20, $r19, $r18, $r17, $r16, r25);	return $r4
;block_num 7