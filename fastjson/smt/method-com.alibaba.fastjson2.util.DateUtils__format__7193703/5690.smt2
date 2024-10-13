(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1427 0)
(declare-sort var3662 0)
(declare-sort var183 0)
(declare-sort var2315 0)
(declare-sort var3749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2315_floorDiv/-977748924 (Int Int) Int)
(declare-fun var183_getShanghaiZoneOffsetTotalSeconds/-15560409 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2315_floorMod/1953217845 (Int Int) Int)
(declare-fun var3749-init () var3749)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1907226477 (var3749 String) void)
(declare-const null-Int Int)
(declare-const null-var1427 var1427)
(declare-const var183-DEFAULT_ZONE_ID var3662)
(declare-const var183-SHANGHAI_ZONE_ID var3662)
(declare-const var99 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var99 null-Int)))
(declare-const var1513 var1427) ; Statement: r7 := @parameter1: com.alibaba.fastjson2.util.DateUtils$DateTimeFormatPattern 
(assert (not (= var1513 null-var1427)))
(define-const var1977 var3662 var183-DEFAULT_ZONE_ID) ; Statement: r0 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID> 
(define-const var2276 Int (var2315_floorDiv/-977748924 var99 1000)) ; Statement: l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>(l0, 1000L) 
(define-const var3580 var3662 var183-SHANGHAI_ZONE_ID) ; Statement: $r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
 ; Statement: if r0 == $r1 goto i62 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1) 
(assert (= var1977 var3580)) ; Cond: r0 == $r1 
(define-const var1995 Int (var183_getShanghaiZoneOffsetTotalSeconds/-15560409 var2276)) ; Statement: i62 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1) 
 ; Statement: goto [?= $l2 = (long) i62] 
(assert true) ; Non Conditional
(define-const var3263 Int (cast-from-Int-to-Int var1995)) ; Statement: $l2 = (long) i62 
(define-const var2070 Int (+ var2276 var3263)) ; Statement: $l57 = l1 + $l2 
(define-const var167 Int (var2315_floorDiv/-977748924 var2070 86400)) ; Statement: $l58 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l57, 86400L) 
(define-const var3804 Int (var2315_floorMod/1953217845 var2070 86400)) ; Statement: $l3 = staticinvoke <java.lang.Math: long floorMod(long,long)>($l57, 86400L) 
(define-const var650 Int (cast-from-Int-to-Int var3804)) ; Statement: $i59 = (int) $l3 
(define-const var3695 Int (+ var167 719528)) ; Statement: $l60 = $l58 + 719528L 
(define-const var922 Int (- var3695 60)) ; Statement: $l61 = $l60 - 60L 
(define-const var3485 Int var922) ; Statement: l63 = $l61 
(define-const var3973 Int 0) ; Statement: l64 = 0L 
(define-const var3027 Int (ite (> var922 0) 1 (ite (< var922 0) (- 1) 0))) ; Statement: $b4 = $l61 cmp 0L 
(define-const var731 Int (cast-from-Int-to-Int var3027)) ; Statement: $i72 = (int) $b4 
 ; Statement: if $i72 >= 0 goto $l5 = 400L * l63 
(assert (>= var731 0)) ; Cond: $i72 >= 0 
(define-const var2439 Int (* 400 var3485)) ; Statement: $l5 = 400L * l63 
(define-const var2032 Int (+ var2439 591)) ; Statement: $l6 = $l5 + 591L 
(define-const var1124 Int (div var2032 146097)) ; Statement: $l55 = $l6 / 146097L 
(define-const var3282 Int var1124) ; Statement: l66 = $l55 
(define-const var2078 Int (* 365 var1124)) ; Statement: $l8 = 365L * $l55 
(define-const var2314 Int (div var1124 4)) ; Statement: $l7 = $l55 / 4L 
(define-const var1315 Int (+ var2078 var2314)) ; Statement: $l10 = $l8 + $l7 
(define-const var1449 Int (div var1124 100)) ; Statement: $l9 = $l55 / 100L 
(define-const var781 Int (- var1315 var1449)) ; Statement: $l12 = $l10 - $l9 
(define-const var429 Int (div var1124 400)) ; Statement: $l11 = $l55 / 400L 
(define-const var869 Int (+ var781 var429)) ; Statement: $l13 = $l12 + $l11 
(define-const var2270 Int (- var3485 var869)) ; Statement: $l56 = l63 - $l13 
(define-const var1171 Int var2270) ; Statement: l67 = $l56 
(define-const var2604 Int (ite (> var2270 0) 1 (ite (< var2270 0) (- 1) 0))) ; Statement: $b14 = $l56 cmp 0L 
(define-const var2652 Int (cast-from-Int-to-Int var2604)) ; Statement: $i73 = (int) $b14 
 ; Statement: if $i73 >= 0 goto $l45 = l66 + l64 
(assert (>= var2652 0)) ; Cond: $i73 >= 0 
(define-const var3518 Int (+ var3282 var3973)) ; Statement: $l45 = l66 + l64 
(define-const var3751 Int (cast-from-Int-to-Int var1171)) ; Statement: $i46 = (int) l67 
(define-const var2697 Int (* var3751 5)) ; Statement: $i15 = $i46 * 5 
(define-const var3240 Int (+ var2697 2)) ; Statement: $i16 = $i15 + 2 
(define-const var766 Int (div var3240 153)) ; Statement: $i47 = $i16 / 153 
(define-const var2079 Int (+ var766 2)) ; Statement: $i17 = $i47 + 2 
(define-const var1691 Int (mod var2079 12)) ; Statement: $i18 = $i17 % 12 
(define-const var2141 Int (+ var1691 1)) ; Statement: $i48 = $i18 + 1 
(define-const var2028 Int (* var766 306)) ; Statement: $i19 = $i47 * 306 
(define-const var892 Int (+ var2028 5)) ; Statement: $i20 = $i19 + 5 
(define-const var305 Int (div var892 10)) ; Statement: $i21 = $i20 / 10 
(define-const var2111 Int (- var3751 var305)) ; Statement: $i22 = $i46 - $i21 
(define-const var3201 Int (+ var2111 1)) ; Statement: $i49 = $i22 + 1 
(define-const var7 Int (div var766 10)) ; Statement: $i23 = $i47 / 10 
(define-const var2150 Int (cast-from-Int-to-Int var7)) ; Statement: $l24 = (long) $i23 
(define-const var972 Int (+ var3518 var2150)) ; Statement: $l50 = $l45 + $l24 
(define-const var3945 Int (ite (> var972 (- 999999999)) 1 (ite (< var972 (- 999999999)) (- 1) 0))) ; Statement: $b25 = $l50 cmp -999999999L 
(define-const var3292 Int (cast-from-Int-to-Int var3945)) ; Statement: $i74 = (int) $b25 
 ; Statement: if $i74 < 0 goto $r24 = new java.time.DateTimeException 
(assert (< var3292 0)) ; Cond: $i74 < 0 
(define-const var2927 var3749 var3749-init) ; Statement: $r24 = new java.time.DateTimeException 
(define-const var65 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var65)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var65!1 String)
(assert (= var65!1 ""))
(assert true)
(define-const var2800 String (append/672562846 var65!1 "Invalid year ")) ; Statement: $r4 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid year ") 
(declare-const var65!2 String)
(assert (= var65!2 (str.++ var65!1 "Invalid year ")))
(assert true)
(define-const var3085 String (append/-901862667 var2800 var972)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l50) 
(declare-const var2800!1 String)
(assert (str.prefixof var2800 var2800!1))
(assert true)
(define-const var1723 String (toString/-2075883882 var3085)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1907226477 var2927 var1723)) ; Statement: specialinvoke $r24.<java.time.DateTimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2927!1 var3749)
(declare-const var1723!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2315_floorDiv/-977748924=([long, long], long), var183_getShanghaiZoneOffsetTotalSeconds/-15560409=([long], int), cast-from-Int-to-Int=([int], long), var2315_floorMod/1953217845=([long, long], long), var3749-init=([], java.time.DateTimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1907226477=([java.time.DateTimeException, java.lang.String], void)}
; {var99=l0, var1427=com.alibaba.fastjson2.util.DateUtils$DateTimeFormatPattern, var1513=r7, var3662=java.time.ZoneId, var183=com.alibaba.fastjson2.util.DateUtils, var1977=r0, var2315=java.lang.Math, var2276=l1, var3580=$r1, var1995=i62, var3263=$l2, var2070=$l57, var167=$l58, var3804=$l3, var650=$i59, var3695=$l60, var922=$l61, var3485=l63, var3973=l64, var3027=$b4, var731=$i72, var2439=$l5, var2032=$l6, var1124=$l55, var3282=l66, var2078=$l8, var2314=$l7, var1315=$l10, var1449=$l9, var781=$l12, var429=$l11, var869=$l13, var2270=$l56, var1171=l67, var2604=$b14, var2652=$i73, var3518=$l45, var3751=$i46, var2697=$i15, var3240=$i16, var766=$i47, var2079=$i17, var1691=$i18, var2141=$i48, var2028=$i19, var892=$i20, var305=$i21, var2111=$i22, var3201=$i49, var7=$i23, var2150=$l24, var972=$l50, var3945=$b25, var3292=$i74, var3749=java.time.DateTimeException, var2927=$r24, var65=$r23, var2800=$r4, var3085=$r5, var1723=$r6}
; {l0=var99, com.alibaba.fastjson2.util.DateUtils$DateTimeFormatPattern=var1427, r7=var1513, java.time.ZoneId=var3662, com.alibaba.fastjson2.util.DateUtils=var183, r0=var1977, java.lang.Math=var2315, l1=var2276, $r1=var3580, i62=var1995, $l2=var3263, $l57=var2070, $l58=var167, $l3=var3804, $i59=var650, $l60=var3695, $l61=var922, l63=var3485, l64=var3973, $b4=var3027, $i72=var731, $l5=var2439, $l6=var2032, $l55=var1124, l66=var3282, $l8=var2078, $l7=var2314, $l10=var1315, $l9=var1449, $l12=var781, $l11=var429, $l13=var869, $l56=var2270, l67=var1171, $b14=var2604, $i73=var2652, $l45=var3518, $i46=var3751, $i15=var2697, $i16=var3240, $i47=var766, $i17=var2079, $i18=var1691, $i48=var2141, $i19=var2028, $i20=var892, $i21=var305, $i22=var2111, $i49=var3201, $i23=var7, $l24=var2150, $l50=var972, $b25=var3945, $i74=var3292, java.time.DateTimeException=var3749, $r24=var2927, $r23=var65, $r4=var2800, $r5=var3085, $r6=var1723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	r7 := @parameter1: com.alibaba.fastjson2.util.DateUtils$DateTimeFormatPattern;	r0 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId DEFAULT_ZONE_ID>;	l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>(l0, 1000L);	$r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	if r0 == $r1 goto i62 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1);	i62 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1);	goto [?= $l2 = (long) i62];	$l2 = (long) i62;	$l57 = l1 + $l2;	$l58 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l57, 86400L);	$l3 = staticinvoke <java.lang.Math: long floorMod(long,long)>($l57, 86400L);	$i59 = (int) $l3;	$l60 = $l58 + 719528L;	$l61 = $l60 - 60L;	l63 = $l61;	l64 = 0L;	$b4 = $l61 cmp 0L;	$i72 = (int) $b4;	if $i72 >= 0 goto $l5 = 400L * l63;	$l5 = 400L * l63;	$l6 = $l5 + 591L;	$l55 = $l6 / 146097L;	l66 = $l55;	$l8 = 365L * $l55;	$l7 = $l55 / 4L;	$l10 = $l8 + $l7;	$l9 = $l55 / 100L;	$l12 = $l10 - $l9;	$l11 = $l55 / 400L;	$l13 = $l12 + $l11;	$l56 = l63 - $l13;	l67 = $l56;	$b14 = $l56 cmp 0L;	$i73 = (int) $b14;	if $i73 >= 0 goto $l45 = l66 + l64;	$l45 = l66 + l64;	$i46 = (int) l67;	$i15 = $i46 * 5;	$i16 = $i15 + 2;	$i47 = $i16 / 153;	$i17 = $i47 + 2;	$i18 = $i17 % 12;	$i48 = $i18 + 1;	$i19 = $i47 * 306;	$i20 = $i19 + 5;	$i21 = $i20 / 10;	$i22 = $i46 - $i21;	$i49 = $i22 + 1;	$i23 = $i47 / 10;	$l24 = (long) $i23;	$l50 = $l45 + $l24;	$b25 = $l50 cmp -999999999L;	$i74 = (int) $b25;	if $i74 < 0 goto $r24 = new java.time.DateTimeException;	$r24 = new java.time.DateTimeException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid year ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l50);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.time.DateTimeException: void <init>(java.lang.String)>($r6);	throw $r24
;block_num 6