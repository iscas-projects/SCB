(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var256 0)
(declare-sort var3290 0)
(declare-sort var3161 0)
(declare-sort var3626 0)
(declare-sort var1278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun zoneId/406343091 (var256) var3290)
(declare-fun var3161_floorDiv/-977748924 (Int Int) Int)
(declare-fun var3626_getShanghaiZoneOffsetTotalSeconds/-15560409 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3161_floorMod/1953217845 (Int Int) Int)
(declare-fun var1278-init () var1278)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1907226477 (var1278 String) void)
(declare-const null-var256 var256)
(declare-const null-Int Int)
(declare-const var3626-SHANGHAI_ZONE_ID var3290)
(declare-const var351 var256) ; Statement: r0 := @this: com.alibaba.fastjson2.support.csv.CSVWriter 
(assert (not (= var351 null-var256)))
(declare-const var3148 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3148 null-Int)))
(define-const var116 var3290 (zoneId/406343091 var351)) ; Statement: r1 = r0.<com.alibaba.fastjson2.support.csv.CSVWriter: java.time.ZoneId zoneId> 
(define-const var3145 Int (var3161_floorDiv/-977748924 var3148 1000)) ; Statement: l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>(l0, 1000L) 
(define-const var2779 var3290 var3626-SHANGHAI_ZONE_ID) ; Statement: $r2 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
 ; Statement: if r1 == $r2 goto i63 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1) 
(assert (= var116 var2779)) ; Cond: r1 == $r2 
(define-const var938 Int (var3626_getShanghaiZoneOffsetTotalSeconds/-15560409 var3145)) ; Statement: i63 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1) 
 ; Statement: goto [?= $l2 = (long) i63] 
(assert true) ; Non Conditional
(define-const var1908 Int (cast-from-Int-to-Int var938)) ; Statement: $l2 = (long) i63 
(define-const var169 Int (+ var3145 var1908)) ; Statement: $l58 = l1 + $l2 
(define-const var3811 Int (var3161_floorDiv/-977748924 var169 86400)) ; Statement: $l59 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l58, 86400L) 
(define-const var735 Int (var3161_floorMod/1953217845 var169 86400)) ; Statement: $l3 = staticinvoke <java.lang.Math: long floorMod(long,long)>($l58, 86400L) 
(define-const var3771 Int (cast-from-Int-to-Int var735)) ; Statement: $i60 = (int) $l3 
(define-const var284 Int (+ var3811 719528)) ; Statement: $l61 = $l59 + 719528L 
(define-const var3425 Int (- var284 60)) ; Statement: $l62 = $l61 - 60L 
(define-const var3201 Int var3425) ; Statement: l64 = $l62 
(define-const var2533 Int 0) ; Statement: l65 = 0L 
(define-const var1584 Int (ite (> var3425 0) 1 (ite (< var3425 0) (- 1) 0))) ; Statement: $b4 = $l62 cmp 0L 
(define-const var1109 Int (cast-from-Int-to-Int var1584)) ; Statement: $i74 = (int) $b4 
 ; Statement: if $i74 >= 0 goto $l5 = 400L * l64 
(assert (>= var1109 0)) ; Cond: $i74 >= 0 
(define-const var2448 Int (* 400 var3201)) ; Statement: $l5 = 400L * l64 
(define-const var170 Int (+ var2448 591)) ; Statement: $l6 = $l5 + 591L 
(define-const var3700 Int (div var170 146097)) ; Statement: $l56 = $l6 / 146097L 
(define-const var744 Int var3700) ; Statement: l67 = $l56 
(define-const var2584 Int (* 365 var3700)) ; Statement: $l8 = 365L * $l56 
(define-const var266 Int (div var3700 4)) ; Statement: $l7 = $l56 / 4L 
(define-const var2536 Int (+ var2584 var266)) ; Statement: $l10 = $l8 + $l7 
(define-const var517 Int (div var3700 100)) ; Statement: $l9 = $l56 / 100L 
(define-const var268 Int (- var2536 var517)) ; Statement: $l12 = $l10 - $l9 
(define-const var3965 Int (div var3700 400)) ; Statement: $l11 = $l56 / 400L 
(define-const var933 Int (+ var268 var3965)) ; Statement: $l13 = $l12 + $l11 
(define-const var1305 Int (- var3201 var933)) ; Statement: $l57 = l64 - $l13 
(define-const var1958 Int var1305) ; Statement: l68 = $l57 
(define-const var2156 Int (ite (> var1305 0) 1 (ite (< var1305 0) (- 1) 0))) ; Statement: $b14 = $l57 cmp 0L 
(define-const var3723 Int (cast-from-Int-to-Int var2156)) ; Statement: $i75 = (int) $b14 
 ; Statement: if $i75 >= 0 goto $l46 = l67 + l65 
(assert (>= var3723 0)) ; Cond: $i75 >= 0 
(define-const var377 Int (+ var744 var2533)) ; Statement: $l46 = l67 + l65 
(define-const var3393 Int (cast-from-Int-to-Int var1958)) ; Statement: $i47 = (int) l68 
(define-const var3483 Int (* var3393 5)) ; Statement: $i15 = $i47 * 5 
(define-const var577 Int (+ var3483 2)) ; Statement: $i16 = $i15 + 2 
(define-const var3061 Int (div var577 153)) ; Statement: $i48 = $i16 / 153 
(define-const var3109 Int (+ var3061 2)) ; Statement: $i17 = $i48 + 2 
(define-const var2093 Int (mod var3109 12)) ; Statement: $i18 = $i17 % 12 
(define-const var2019 Int (+ var2093 1)) ; Statement: $i49 = $i18 + 1 
(define-const var978 Int (* var3061 306)) ; Statement: $i19 = $i48 * 306 
(define-const var2202 Int (+ var978 5)) ; Statement: $i20 = $i19 + 5 
(define-const var1981 Int (div var2202 10)) ; Statement: $i21 = $i20 / 10 
(define-const var2636 Int (- var3393 var1981)) ; Statement: $i22 = $i47 - $i21 
(define-const var583 Int (+ var2636 1)) ; Statement: $i50 = $i22 + 1 
(define-const var1080 Int (div var3061 10)) ; Statement: $i23 = $i48 / 10 
(define-const var751 Int (cast-from-Int-to-Int var1080)) ; Statement: $l24 = (long) $i23 
(define-const var3082 Int (+ var377 var751)) ; Statement: $l51 = $l46 + $l24 
(define-const var1515 Int (ite (> var3082 (- 999999999)) 1 (ite (< var3082 (- 999999999)) (- 1) 0))) ; Statement: $b25 = $l51 cmp -999999999L 
(define-const var1758 Int (cast-from-Int-to-Int var1515)) ; Statement: $i76 = (int) $b25 
 ; Statement: if $i76 < 0 goto $r20 = new java.time.DateTimeException 
(assert (< var1758 0)) ; Cond: $i76 < 0 
(define-const var314 var1278 var1278-init) ; Statement: $r20 = new java.time.DateTimeException 
(define-const var1061 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1061)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1061!1 String)
(assert (= var1061!1 ""))
(assert true)
(define-const var1435 String (append/672562846 var1061!1 "Invalid year ")) ; Statement: $r5 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid year ") 
(declare-const var1061!2 String)
(assert (= var1061!2 (str.++ var1061!1 "Invalid year ")))
(assert true)
(define-const var2524 String (append/-901862667 var1435 var3082)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l51) 
(declare-const var1435!1 String)
(assert (str.prefixof var1435 var1435!1))
(assert true)
(define-const var3628 String (toString/-2075883882 var2524)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1907226477 var314 var3628)) ; Statement: specialinvoke $r20.<java.time.DateTimeException: void <init>(java.lang.String)>($r7) 

(declare-const var314!1 var1278)
(declare-const var3628!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {zoneId/406343091=([com.alibaba.fastjson2.support.csv.CSVWriter], java.time.ZoneId), var3161_floorDiv/-977748924=([long, long], long), var3626_getShanghaiZoneOffsetTotalSeconds/-15560409=([long], int), cast-from-Int-to-Int=([int], long), var3161_floorMod/1953217845=([long, long], long), var1278-init=([], java.time.DateTimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1907226477=([java.time.DateTimeException, java.lang.String], void)}
; {var256=com.alibaba.fastjson2.support.csv.CSVWriter, var351=r0, var3148=l0, var3290=java.time.ZoneId, var116=r1, var3161=java.lang.Math, var3145=l1, var3626=com.alibaba.fastjson2.util.DateUtils, var2779=$r2, var938=i63, var1908=$l2, var169=$l58, var3811=$l59, var735=$l3, var3771=$i60, var284=$l61, var3425=$l62, var3201=l64, var2533=l65, var1584=$b4, var1109=$i74, var2448=$l5, var170=$l6, var3700=$l56, var744=l67, var2584=$l8, var266=$l7, var2536=$l10, var517=$l9, var268=$l12, var3965=$l11, var933=$l13, var1305=$l57, var1958=l68, var2156=$b14, var3723=$i75, var377=$l46, var3393=$i47, var3483=$i15, var577=$i16, var3061=$i48, var3109=$i17, var2093=$i18, var2019=$i49, var978=$i19, var2202=$i20, var1981=$i21, var2636=$i22, var583=$i50, var1080=$i23, var751=$l24, var3082=$l51, var1515=$b25, var1758=$i76, var1278=java.time.DateTimeException, var314=$r20, var1061=$r19, var1435=$r5, var2524=$r6, var3628=$r7}
; {com.alibaba.fastjson2.support.csv.CSVWriter=var256, r0=var351, l0=var3148, java.time.ZoneId=var3290, r1=var116, java.lang.Math=var3161, l1=var3145, com.alibaba.fastjson2.util.DateUtils=var3626, $r2=var2779, i63=var938, $l2=var1908, $l58=var169, $l59=var3811, $l3=var735, $i60=var3771, $l61=var284, $l62=var3425, l64=var3201, l65=var2533, $b4=var1584, $i74=var1109, $l5=var2448, $l6=var170, $l56=var3700, l67=var744, $l8=var2584, $l7=var266, $l10=var2536, $l9=var517, $l12=var268, $l11=var3965, $l13=var933, $l57=var1305, l68=var1958, $b14=var2156, $i75=var3723, $l46=var377, $i47=var3393, $i15=var3483, $i16=var577, $i48=var3061, $i17=var3109, $i18=var2093, $i49=var2019, $i19=var978, $i20=var2202, $i21=var1981, $i22=var2636, $i50=var583, $i23=var1080, $l24=var751, $l51=var3082, $b25=var1515, $i76=var1758, java.time.DateTimeException=var1278, $r20=var314, $r19=var1061, $r5=var1435, $r6=var2524, $r7=var3628}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.support.csv.CSVWriter;	l0 := @parameter0: long;	r1 = r0.<com.alibaba.fastjson2.support.csv.CSVWriter: java.time.ZoneId zoneId>;	l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>(l0, 1000L);	$r2 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	if r1 == $r2 goto i63 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1);	i63 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1);	goto [?= $l2 = (long) i63];	$l2 = (long) i63;	$l58 = l1 + $l2;	$l59 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l58, 86400L);	$l3 = staticinvoke <java.lang.Math: long floorMod(long,long)>($l58, 86400L);	$i60 = (int) $l3;	$l61 = $l59 + 719528L;	$l62 = $l61 - 60L;	l64 = $l62;	l65 = 0L;	$b4 = $l62 cmp 0L;	$i74 = (int) $b4;	if $i74 >= 0 goto $l5 = 400L * l64;	$l5 = 400L * l64;	$l6 = $l5 + 591L;	$l56 = $l6 / 146097L;	l67 = $l56;	$l8 = 365L * $l56;	$l7 = $l56 / 4L;	$l10 = $l8 + $l7;	$l9 = $l56 / 100L;	$l12 = $l10 - $l9;	$l11 = $l56 / 400L;	$l13 = $l12 + $l11;	$l57 = l64 - $l13;	l68 = $l57;	$b14 = $l57 cmp 0L;	$i75 = (int) $b14;	if $i75 >= 0 goto $l46 = l67 + l65;	$l46 = l67 + l65;	$i47 = (int) l68;	$i15 = $i47 * 5;	$i16 = $i15 + 2;	$i48 = $i16 / 153;	$i17 = $i48 + 2;	$i18 = $i17 % 12;	$i49 = $i18 + 1;	$i19 = $i48 * 306;	$i20 = $i19 + 5;	$i21 = $i20 / 10;	$i22 = $i47 - $i21;	$i50 = $i22 + 1;	$i23 = $i48 / 10;	$l24 = (long) $i23;	$l51 = $l46 + $l24;	$b25 = $l51 cmp -999999999L;	$i76 = (int) $b25;	if $i76 < 0 goto $r20 = new java.time.DateTimeException;	$r20 = new java.time.DateTimeException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid year ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l51);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.time.DateTimeException: void <init>(java.lang.String)>($r7);	throw $r20
;block_num 6