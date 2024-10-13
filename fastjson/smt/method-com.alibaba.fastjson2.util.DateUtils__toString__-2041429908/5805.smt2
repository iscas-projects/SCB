(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3360 0)
(declare-sort var2384 0)
(declare-sort var606 0)
(declare-sort var1510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2384_floorDiv/-977748924 (Int Int) Int)
(declare-fun var606_getShanghaiZoneOffsetTotalSeconds/-15560409 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2384_floorMod/1953217845 (Int Int) Int)
(declare-fun var1510-init () var1510)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1907226477 (var1510 String) void)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3360 var3360)
(declare-const var606-SHANGHAI_ZONE_ID var3360)
(declare-const var2866 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2866 null-Int)))
(declare-const var1310 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1310 null-Bool)))
(declare-const var1522 var3360) ; Statement: r0 := @parameter2: java.time.ZoneId 
(assert (not (= var1522 null-var3360)))
(define-const var2431 Int (var2384_floorDiv/-977748924 var2866 1000)) ; Statement: l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>(l0, 1000L) 
(define-const var1987 var3360 var606-SHANGHAI_ZONE_ID) ; Statement: $r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID> 
 ; Statement: if r0 == $r1 goto i115 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1) 
(assert (= var1522 var1987)) ; Cond: r0 == $r1 
(define-const var355 Int (var606_getShanghaiZoneOffsetTotalSeconds/-15560409 var2431)) ; Statement: i115 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1) 
 ; Statement: goto [?= $l2 = (long) i115] 
(assert true) ; Non Conditional
(define-const var2889 Int (cast-from-Int-to-Int var355)) ; Statement: $l2 = (long) i115 
(define-const var1162 Int (+ var2431 var2889)) ; Statement: $l110 = l1 + $l2 
(define-const var1983 Int (var2384_floorDiv/-977748924 var1162 86400)) ; Statement: $l111 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l110, 86400L) 
(define-const var973 Int (var2384_floorMod/1953217845 var1162 86400)) ; Statement: $l3 = staticinvoke <java.lang.Math: long floorMod(long,long)>($l110, 86400L) 
(define-const var455 Int (cast-from-Int-to-Int var973)) ; Statement: $i112 = (int) $l3 
(define-const var3817 Int (+ var1983 719528)) ; Statement: $l113 = $l111 + 719528L 
(define-const var91 Int (- var3817 60)) ; Statement: $l114 = $l113 - 60L 
(define-const var2185 Int var91) ; Statement: l116 = $l114 
(define-const var2629 Int 0) ; Statement: l117 = 0L 
(define-const var3982 Int (ite (> var91 0) 1 (ite (< var91 0) (- 1) 0))) ; Statement: $b4 = $l114 cmp 0L 
(define-const var2210 Int (cast-from-Int-to-Int var3982)) ; Statement: $i165 = (int) $b4 
 ; Statement: if $i165 >= 0 goto $l5 = 400L * l116 
(assert (>= var2210 0)) ; Cond: $i165 >= 0 
(define-const var2125 Int (* 400 var2185)) ; Statement: $l5 = 400L * l116 
(define-const var140 Int (+ var2125 591)) ; Statement: $l6 = $l5 + 591L 
(define-const var1932 Int (div var140 146097)) ; Statement: $l108 = $l6 / 146097L 
(define-const var2483 Int var1932) ; Statement: l119 = $l108 
(define-const var3161 Int (* 365 var1932)) ; Statement: $l8 = 365L * $l108 
(define-const var10 Int (div var1932 4)) ; Statement: $l7 = $l108 / 4L 
(define-const var824 Int (+ var3161 var10)) ; Statement: $l10 = $l8 + $l7 
(define-const var1585 Int (div var1932 100)) ; Statement: $l9 = $l108 / 100L 
(define-const var2604 Int (- var824 var1585)) ; Statement: $l12 = $l10 - $l9 
(define-const var3289 Int (div var1932 400)) ; Statement: $l11 = $l108 / 400L 
(define-const var689 Int (+ var2604 var3289)) ; Statement: $l13 = $l12 + $l11 
(define-const var3241 Int (- var2185 var689)) ; Statement: $l109 = l116 - $l13 
(define-const var1348 Int var3241) ; Statement: l120 = $l109 
(define-const var2217 Int (ite (> var3241 0) 1 (ite (< var3241 0) (- 1) 0))) ; Statement: $b14 = $l109 cmp 0L 
(define-const var1071 Int (cast-from-Int-to-Int var2217)) ; Statement: $i166 = (int) $b14 
 ; Statement: if $i166 >= 0 goto $l98 = l119 + l117 
(assert (>= var1071 0)) ; Cond: $i166 >= 0 
(define-const var403 Int (+ var2483 var2629)) ; Statement: $l98 = l119 + l117 
(define-const var589 Int (cast-from-Int-to-Int var1348)) ; Statement: $i99 = (int) l120 
(define-const var3263 Int (* var589 5)) ; Statement: $i15 = $i99 * 5 
(define-const var3974 Int (+ var3263 2)) ; Statement: $i16 = $i15 + 2 
(define-const var2614 Int (div var3974 153)) ; Statement: $i100 = $i16 / 153 
(define-const var3739 Int (+ var2614 2)) ; Statement: $i17 = $i100 + 2 
(define-const var2494 Int (mod var3739 12)) ; Statement: $i18 = $i17 % 12 
(define-const var1129 Int (+ var2494 1)) ; Statement: $i101 = $i18 + 1 
(define-const var944 Int (* var2614 306)) ; Statement: $i19 = $i100 * 306 
(define-const var3364 Int (+ var944 5)) ; Statement: $i20 = $i19 + 5 
(define-const var2613 Int (div var3364 10)) ; Statement: $i21 = $i20 / 10 
(define-const var2048 Int (- var589 var2613)) ; Statement: $i22 = $i99 - $i21 
(define-const var3707 Int (+ var2048 1)) ; Statement: $i102 = $i22 + 1 
(define-const var360 Int (div var2614 10)) ; Statement: $i23 = $i100 / 10 
(define-const var1621 Int (cast-from-Int-to-Int var360)) ; Statement: $l24 = (long) $i23 
(define-const var3247 Int (+ var403 var1621)) ; Statement: $l103 = $l98 + $l24 
(define-const var863 Int (ite (> var3247 (- 999999999)) 1 (ite (< var3247 (- 999999999)) (- 1) 0))) ; Statement: $b25 = $l103 cmp -999999999L 
(define-const var3818 Int (cast-from-Int-to-Int var863)) ; Statement: $i167 = (int) $b25 
 ; Statement: if $i167 < 0 goto $r32 = new java.time.DateTimeException 
(assert (< var3818 0)) ; Cond: $i167 < 0 
(define-const var2827 var1510 var1510-init) ; Statement: $r32 = new java.time.DateTimeException 
(define-const var274 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var274)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var274!1 String)
(assert (= var274!1 ""))
(assert true)
(define-const var1976 String (append/672562846 var274!1 "Invalid year ")) ; Statement: $r4 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid year ") 
(declare-const var274!2 String)
(assert (= var274!2 (str.++ var274!1 "Invalid year ")))
(assert true)
(define-const var1977 String (append/-901862667 var1976 var3247)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l103) 
(declare-const var1976!1 String)
(assert (str.prefixof var1976 var1976!1))
(assert true)
(define-const var1233 String (toString/-2075883882 var1977)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1907226477 var2827 var1233)) ; Statement: specialinvoke $r32.<java.time.DateTimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2827!1 var1510)
(declare-const var1233!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var2384_floorDiv/-977748924=([long, long], long), var606_getShanghaiZoneOffsetTotalSeconds/-15560409=([long], int), cast-from-Int-to-Int=([int], long), var2384_floorMod/1953217845=([long, long], long), var1510-init=([], java.time.DateTimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1907226477=([java.time.DateTimeException, java.lang.String], void)}
; {var2866=l0, var1310=z0, var3360=java.time.ZoneId, var1522=r0, var2384=java.lang.Math, var2431=l1, var606=com.alibaba.fastjson2.util.DateUtils, var1987=$r1, var355=i115, var2889=$l2, var1162=$l110, var1983=$l111, var973=$l3, var455=$i112, var3817=$l113, var91=$l114, var2185=l116, var2629=l117, var3982=$b4, var2210=$i165, var2125=$l5, var140=$l6, var1932=$l108, var2483=l119, var3161=$l8, var10=$l7, var824=$l10, var1585=$l9, var2604=$l12, var3289=$l11, var689=$l13, var3241=$l109, var1348=l120, var2217=$b14, var1071=$i166, var403=$l98, var589=$i99, var3263=$i15, var3974=$i16, var2614=$i100, var3739=$i17, var2494=$i18, var1129=$i101, var944=$i19, var3364=$i20, var2613=$i21, var2048=$i22, var3707=$i102, var360=$i23, var1621=$l24, var3247=$l103, var863=$b25, var3818=$i167, var1510=java.time.DateTimeException, var2827=$r32, var274=$r31, var1976=$r4, var1977=$r5, var1233=$r6}
; {l0=var2866, z0=var1310, java.time.ZoneId=var3360, r0=var1522, java.lang.Math=var2384, l1=var2431, com.alibaba.fastjson2.util.DateUtils=var606, $r1=var1987, i115=var355, $l2=var2889, $l110=var1162, $l111=var1983, $l3=var973, $i112=var455, $l113=var3817, $l114=var91, l116=var2185, l117=var2629, $b4=var3982, $i165=var2210, $l5=var2125, $l6=var140, $l108=var1932, l119=var2483, $l8=var3161, $l7=var10, $l10=var824, $l9=var1585, $l12=var2604, $l11=var3289, $l13=var689, $l109=var3241, l120=var1348, $b14=var2217, $i166=var1071, $l98=var403, $i99=var589, $i15=var3263, $i16=var3974, $i100=var2614, $i17=var3739, $i18=var2494, $i101=var1129, $i19=var944, $i20=var3364, $i21=var2613, $i22=var2048, $i102=var3707, $i23=var360, $l24=var1621, $l103=var3247, $b25=var863, $i167=var3818, java.time.DateTimeException=var1510, $r32=var2827, $r31=var274, $r4=var1976, $r5=var1977, $r6=var1233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	z0 := @parameter1: boolean;	r0 := @parameter2: java.time.ZoneId;	l1 = staticinvoke <java.lang.Math: long floorDiv(long,long)>(l0, 1000L);	$r1 = <com.alibaba.fastjson2.util.DateUtils: java.time.ZoneId SHANGHAI_ZONE_ID>;	if r0 == $r1 goto i115 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1);	i115 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: int getShanghaiZoneOffsetTotalSeconds(long)>(l1);	goto [?= $l2 = (long) i115];	$l2 = (long) i115;	$l110 = l1 + $l2;	$l111 = staticinvoke <java.lang.Math: long floorDiv(long,long)>($l110, 86400L);	$l3 = staticinvoke <java.lang.Math: long floorMod(long,long)>($l110, 86400L);	$i112 = (int) $l3;	$l113 = $l111 + 719528L;	$l114 = $l113 - 60L;	l116 = $l114;	l117 = 0L;	$b4 = $l114 cmp 0L;	$i165 = (int) $b4;	if $i165 >= 0 goto $l5 = 400L * l116;	$l5 = 400L * l116;	$l6 = $l5 + 591L;	$l108 = $l6 / 146097L;	l119 = $l108;	$l8 = 365L * $l108;	$l7 = $l108 / 4L;	$l10 = $l8 + $l7;	$l9 = $l108 / 100L;	$l12 = $l10 - $l9;	$l11 = $l108 / 400L;	$l13 = $l12 + $l11;	$l109 = l116 - $l13;	l120 = $l109;	$b14 = $l109 cmp 0L;	$i166 = (int) $b14;	if $i166 >= 0 goto $l98 = l119 + l117;	$l98 = l119 + l117;	$i99 = (int) l120;	$i15 = $i99 * 5;	$i16 = $i15 + 2;	$i100 = $i16 / 153;	$i17 = $i100 + 2;	$i18 = $i17 % 12;	$i101 = $i18 + 1;	$i19 = $i100 * 306;	$i20 = $i19 + 5;	$i21 = $i20 / 10;	$i22 = $i99 - $i21;	$i102 = $i22 + 1;	$i23 = $i100 / 10;	$l24 = (long) $i23;	$l103 = $l98 + $l24;	$b25 = $l103 cmp -999999999L;	$i167 = (int) $b25;	if $i167 < 0 goto $r32 = new java.time.DateTimeException;	$r32 = new java.time.DateTimeException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid year ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l103);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<java.time.DateTimeException: void <init>(java.lang.String)>($r6);	throw $r32
;block_num 6