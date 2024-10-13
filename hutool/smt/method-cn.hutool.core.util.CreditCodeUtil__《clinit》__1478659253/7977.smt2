(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort var2910 0)
(declare-sort var1415 0)
(declare-sort var449 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var1415-init () var1415)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/-729189591 (var1415 Int) void)
(declare-fun cast-from-var1415-to-var3468 (var1415) var3468)
(declare-const var2910-CREDIT_CODE var1745)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var449-BASE_CODE_ARRAY (Array Int Int))
(define-const var2012 var1745 var2910-CREDIT_CODE) ; Statement: $r0 = <cn.hutool.core.lang.PatternPool: java.util.regex.Pattern CREDIT_CODE> 
(define-const var2808 var1745 var2012) ; Statement: <cn.hutool.core.util.CreditCodeUtil: java.util.regex.Pattern CREDIT_CODE_PATTERN> = $r0 
(define-const var1987 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[17] 
(declare-const var1987!1 (Array Int Int))
(assert (not (= var1987!1 null-__Array__Int__Int__)))
(assert (= (select var1987!1 0) 1)) ; Statement: $r1[0] = 1 
(declare-const var1987!2 (Array Int Int))
(assert (not (= var1987!2 null-__Array__Int__Int__)))
(assert (= (select var1987!2 1) 3)) ; Statement: $r1[1] = 3 
(declare-const var1987!3 (Array Int Int))
(assert (not (= var1987!3 null-__Array__Int__Int__)))
(assert (= (select var1987!3 2) 9)) ; Statement: $r1[2] = 9 
(declare-const var1987!4 (Array Int Int))
(assert (not (= var1987!4 null-__Array__Int__Int__)))
(assert (= (select var1987!4 3) 27)) ; Statement: $r1[3] = 27 
(declare-const var1987!5 (Array Int Int))
(assert (not (= var1987!5 null-__Array__Int__Int__)))
(assert (= (select var1987!5 4) 19)) ; Statement: $r1[4] = 19 
(declare-const var1987!6 (Array Int Int))
(assert (not (= var1987!6 null-__Array__Int__Int__)))
(assert (= (select var1987!6 5) 26)) ; Statement: $r1[5] = 26 
(declare-const var1987!7 (Array Int Int))
(assert (not (= var1987!7 null-__Array__Int__Int__)))
(assert (= (select var1987!7 6) 16)) ; Statement: $r1[6] = 16 
(declare-const var1987!8 (Array Int Int))
(assert (not (= var1987!8 null-__Array__Int__Int__)))
(assert (= (select var1987!8 7) 17)) ; Statement: $r1[7] = 17 
(declare-const var1987!9 (Array Int Int))
(assert (not (= var1987!9 null-__Array__Int__Int__)))
(assert (= (select var1987!9 8) 20)) ; Statement: $r1[8] = 20 
(declare-const var1987!10 (Array Int Int))
(assert (not (= var1987!10 null-__Array__Int__Int__)))
(assert (= (select var1987!10 9) 29)) ; Statement: $r1[9] = 29 
(declare-const var1987!11 (Array Int Int))
(assert (not (= var1987!11 null-__Array__Int__Int__)))
(assert (= (select var1987!11 10) 25)) ; Statement: $r1[10] = 25 
(declare-const var1987!12 (Array Int Int))
(assert (not (= var1987!12 null-__Array__Int__Int__)))
(assert (= (select var1987!12 11) 13)) ; Statement: $r1[11] = 13 
(declare-const var1987!13 (Array Int Int))
(assert (not (= var1987!13 null-__Array__Int__Int__)))
(assert (= (select var1987!13 12) 8)) ; Statement: $r1[12] = 8 
(declare-const var1987!14 (Array Int Int))
(assert (not (= var1987!14 null-__Array__Int__Int__)))
(assert (= (select var1987!14 13) 24)) ; Statement: $r1[13] = 24 
(declare-const var1987!15 (Array Int Int))
(assert (not (= var1987!15 null-__Array__Int__Int__)))
(assert (= (select var1987!15 14) 10)) ; Statement: $r1[14] = 10 
(declare-const var1987!16 (Array Int Int))
(assert (not (= var1987!16 null-__Array__Int__Int__)))
(assert (= (select var1987!16 15) 30)) ; Statement: $r1[15] = 30 
(declare-const var1987!17 (Array Int Int))
(assert (not (= var1987!17 null-__Array__Int__Int__)))
(assert (= (select var1987!17 16) 28)) ; Statement: $r1[16] = 28 
(define-const var564 (Array Int Int) var1987!17) ; Statement: <cn.hutool.core.util.CreditCodeUtil: int[] WEIGHT> = $r1 
(define-const var789 String "0123456789ABCDEFGHJKLMNPQRTUWXY") ; Statement: $r2 = "0123456789ABCDEFGHJKLMNPQRTUWXY" 
(assert true)
(define-const var3374 (Array Int Int) (toCharArray/415275702 var789)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var2589 (Array Int Int) var3374) ; Statement: <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY> = $r3 
(define-const var1094 var1415 var1415-init) ; Statement: $r4 = new cn.hutool.core.map.SafeConcurrentHashMap 
(define-const var2099 (Array Int Int) var449-BASE_CODE_ARRAY) ; Statement: $r5 = <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY> 
(define-const var23 Int (getLength-Arr-Int-1 var2099)) ; Statement: $i0 = lengthof $r5 
(assert true)
;(assert (<init>/-729189591 var1094 var23)) ; Statement: specialinvoke $r4.<cn.hutool.core.map.SafeConcurrentHashMap: void <init>(int)>($i0) 

(declare-const var1094!1 var1415)
(declare-const var23!1 Int)
(define-const var1216 var3468 (cast-from-var1415-to-var3468 var1094!1)) ; Statement: <cn.hutool.core.util.CreditCodeUtil: java.util.Map CODE_INDEX_MAP> = $r4 
(define-const var1381 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1859 (Array Int Int) var449-BASE_CODE_ARRAY) ; Statement: $r6 = <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY> 
(define-const var1900 Int (getLength-Arr-Int-1 var1859)) ; Statement: $i1 = lengthof $r6 
 ; Statement: if i3 >= $i1 goto return 
(assert (>= var1381 var1900)) ; Cond: i3 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), toCharArray/415275702=([java.lang.String], char[]), var1415-init=([], cn.hutool.core.map.SafeConcurrentHashMap), getLength-Arr-Int-1=([char[]], int), <init>/-729189591=([cn.hutool.core.map.SafeConcurrentHashMap, int], void), cast-from-var1415-to-var3468=([cn.hutool.core.map.SafeConcurrentHashMap], java.util.Map)}
; {var1745=java.util.regex.Pattern, var2910=cn.hutool.core.lang.PatternPool, var2012=$r0, var2808=<cn.hutool.core.util.CreditCodeUtil: java.util.regex.Pattern CREDIT_CODE_PATTERN>, var1987=$r1, var564=<cn.hutool.core.util.CreditCodeUtil: int[] WEIGHT>, var789=$r2, var3374=$r3, var2589=<cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY>, var1415=cn.hutool.core.map.SafeConcurrentHashMap, var1094=$r4, var449=cn.hutool.core.util.CreditCodeUtil, var2099=$r5, var23=$i0, var3468=java.util.Map, var1216=<cn.hutool.core.util.CreditCodeUtil: java.util.Map CODE_INDEX_MAP>, var1381=i3, var1859=$r6, var1900=$i1}
; {java.util.regex.Pattern=var1745, cn.hutool.core.lang.PatternPool=var2910, $r0=var2012, <cn.hutool.core.util.CreditCodeUtil: java.util.regex.Pattern CREDIT_CODE_PATTERN>=var2808, $r1=var1987, <cn.hutool.core.util.CreditCodeUtil: int[] WEIGHT>=var564, $r2=var789, $r3=var3374, <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY>=var2589, cn.hutool.core.map.SafeConcurrentHashMap=var1415, $r4=var1094, cn.hutool.core.util.CreditCodeUtil=var449, $r5=var2099, $i0=var23, java.util.Map=var3468, <cn.hutool.core.util.CreditCodeUtil: java.util.Map CODE_INDEX_MAP>=var1216, i3=var1381, $r6=var1859, $i1=var1900}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = <cn.hutool.core.lang.PatternPool: java.util.regex.Pattern CREDIT_CODE>;	<cn.hutool.core.util.CreditCodeUtil: java.util.regex.Pattern CREDIT_CODE_PATTERN> = $r0;	$r1 = newarray (int)[17];	$r1[0] = 1;	$r1[1] = 3;	$r1[2] = 9;	$r1[3] = 27;	$r1[4] = 19;	$r1[5] = 26;	$r1[6] = 16;	$r1[7] = 17;	$r1[8] = 20;	$r1[9] = 29;	$r1[10] = 25;	$r1[11] = 13;	$r1[12] = 8;	$r1[13] = 24;	$r1[14] = 10;	$r1[15] = 30;	$r1[16] = 28;	<cn.hutool.core.util.CreditCodeUtil: int[] WEIGHT> = $r1;	$r2 = "0123456789ABCDEFGHJKLMNPQRTUWXY";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	<cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY> = $r3;	$r4 = new cn.hutool.core.map.SafeConcurrentHashMap;	$r5 = <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY>;	$i0 = lengthof $r5;	specialinvoke $r4.<cn.hutool.core.map.SafeConcurrentHashMap: void <init>(int)>($i0);	<cn.hutool.core.util.CreditCodeUtil: java.util.Map CODE_INDEX_MAP> = $r4;	i3 = 0;	$r6 = <cn.hutool.core.util.CreditCodeUtil: char[] BASE_CODE_ARRAY>;	$i1 = lengthof $r6;	if i3 >= $i1 goto return;	return
;block_num 3