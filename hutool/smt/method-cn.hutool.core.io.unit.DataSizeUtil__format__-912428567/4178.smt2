(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var210 0)
(declare-sort var3580 0)
(declare-sort var3815 0)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun var3580_log10/76679196 (Float64) Float64)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun var3580_min/-1112089438 (Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3815-init () var3815)
(declare-fun <init>/-199497471 (var3815 String) void)
(declare-fun var3580_pow/-1973469216 (Float64 Float64) Float64)
(declare-fun format/-506479533 (var1745 Float64) String)
(declare-fun cast-from-var3815-to-var1745 (var3815) var1745)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var210-UNIT_NAMES (Array Int String))
(declare-const var774 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var774 null-Int)))
(define-const var994 Int (ite (> var774 0) 1 (ite (< var774 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3062 Int (cast-from-Int-to-Int var994)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 > 0 goto $r0 = <cn.hutool.core.io.unit.DataUnit: java.lang.String[] UNIT_NAMES> 
(assert (> var3062 0)) ; Cond: $i6 > 0 
(define-const var1758 (Array Int String) var210-UNIT_NAMES) ; Statement: $r0 = <cn.hutool.core.io.unit.DataUnit: java.lang.String[] UNIT_NAMES> 
(define-const var838 Int (getLength-Arr-String-1 var1758)) ; Statement: $i2 = lengthof $r0 
(define-const var3577 Int (- var838 1)) ; Statement: $i4 = $i2 - 1 
(define-const var2164 Float64 (cast-from-Int-to-Float64 var774)) ; Statement: $d0 = (double) l0 
(define-const var759 Float64 (var3580_log10/76679196 var2164)) ; Statement: $d2 = staticinvoke <java.lang.Math: double log10(double)>($d0) 
(define-const var90 Float64 (var3580_log10/76679196 ((_ to_fp 11 53) #x4090000000000000))) ; Statement: $d1 = staticinvoke <java.lang.Math: double log10(double)>(1024.0) 
(define-const var536 Float64 (fp.div roundNearestTiesToEven var759 var90)) ; Statement: $d3 = $d2 / $d1 
(define-const var1502 Int (cast-from-Float64-to-Int var536)) ; Statement: $i3 = (int) $d3 
(define-const var1610 Int (var3580_min/-1112089438 var3577 var1502)) ; Statement: i5 = staticinvoke <java.lang.Math: int min(int,int)>($i4, $i3) 
(define-const var1327 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1327)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1327!1 String)
(assert (= var1327!1 ""))
(define-const var733 var3815 var3815-init) ; Statement: $r11 = new java.text.DecimalFormat 
(assert true)
;(assert (<init>/-199497471 var733 "#,##0.##")) ; Statement: specialinvoke $r11.<java.text.DecimalFormat: void <init>(java.lang.String)>("#,##0.##") 

(declare-const var733!1 var3815)
(declare-const var2133 String)
(define-const var2431 Float64 (cast-from-Int-to-Float64 var774)) ; Statement: $d6 = (double) l0 
(define-const var1718 Float64 (cast-from-Int-to-Float64 var1610)) ; Statement: $d4 = (double) i5 
(define-const var3460 Float64 (var3580_pow/-1973469216 ((_ to_fp 11 53) #x4090000000000000) var1718)) ; Statement: $d5 = staticinvoke <java.lang.Math: double pow(double,double)>(1024.0, $d4) 
(define-const var2469 Float64 (fp.div roundNearestTiesToEven var2431 var3460)) ; Statement: $d7 = $d6 / $d5 
(assert true)
(define-const var1210 String (format/-506479533 (cast-from-var3815-to-var1745 var733!1) var2469)) ; Statement: $r3 = virtualinvoke $r11.<java.text.DecimalFormat: java.lang.String format(double)>($d7) 
(assert true)
(define-const var1930 String (append/672562846 var1327!1 var1210)) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1327!2 String)
(assert (= var1327!2 (str.++ var1327!1 var1210)))
(assert true)
(define-const var3471 String (append/672562846 var1930 " ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1930!1 String)
(assert (= var1930!1 (str.++ var1930 " ")))
(define-const var450 (Array Int String) var210-UNIT_NAMES) ; Statement: $r5 = <cn.hutool.core.io.unit.DataUnit: java.lang.String[] UNIT_NAMES> 
(define-const var3654 String (select var450 var1610)) ; Statement: $r6 = $r5[i5] 
(assert true)
(define-const var1992 String (append/672562846 var3471 var3654)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3471!1 String)
(assert (= var3471!1 (str.++ var3471 var3654)))
(assert true)
(define-const var3208 String (toString/-2075883882 var1992)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), getLength-Arr-String-1=([java.lang.String[]], int), cast-from-Int-to-Float64=([long], double), var3580_log10/76679196=([double], double), cast-from-Float64-to-Int=([double], int), var3580_min/-1112089438=([int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3815-init=([], java.text.DecimalFormat), <init>/-199497471=([java.text.DecimalFormat, java.lang.String], void), var3580_pow/-1973469216=([double, double], double), format/-506479533=([java.text.NumberFormat, double], java.lang.String), cast-from-var3815-to-var1745=([java.text.DecimalFormat], java.text.NumberFormat), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var774=l0, var994=$b1, var3062=$i6, var210=cn.hutool.core.io.unit.DataUnit, var1758=$r0, var838=$i2, var3577=$i4, var2164=$d0, var3580=java.lang.Math, var759=$d2, var90=$d1, var536=$d3, var1502=$i3, var1610=i5, var1327=$r10, var3815=java.text.DecimalFormat, var733=$r11, var2133="#,##0.##", var2431=$d6, var1718=$d4, var3460=$d5, var2469=$d7, var1745=java.text.NumberFormat, var1210=$r3, var1930=$r4, var3471=$r7, var450=$r5, var3654=$r6, var1992=$r8, var3208=$r9}
; {l0=var774, $b1=var994, $i6=var3062, cn.hutool.core.io.unit.DataUnit=var210, $r0=var1758, $i2=var838, $i4=var3577, $d0=var2164, java.lang.Math=var3580, $d2=var759, $d1=var90, $d3=var536, $i3=var1502, i5=var1610, $r10=var1327, java.text.DecimalFormat=var3815, $r11=var733, "#,##0.##"=var2133, $d6=var2431, $d4=var1718, $d5=var3460, $d7=var2469, java.text.NumberFormat=var1745, $r3=var1210, $r4=var1930, $r7=var3471, $r5=var450, $r6=var3654, $r8=var1992, $r9=var3208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 0L;	$i6 = (int) $b1;	if $i6 > 0 goto $r0 = <cn.hutool.core.io.unit.DataUnit: java.lang.String[] UNIT_NAMES>;	$r0 = <cn.hutool.core.io.unit.DataUnit: java.lang.String[] UNIT_NAMES>;	$i2 = lengthof $r0;	$i4 = $i2 - 1;	$d0 = (double) l0;	$d2 = staticinvoke <java.lang.Math: double log10(double)>($d0);	$d1 = staticinvoke <java.lang.Math: double log10(double)>(1024.0);	$d3 = $d2 / $d1;	$i3 = (int) $d3;	i5 = staticinvoke <java.lang.Math: int min(int,int)>($i4, $i3);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = new java.text.DecimalFormat;	specialinvoke $r11.<java.text.DecimalFormat: void <init>(java.lang.String)>("#,##0.##");	$d6 = (double) l0;	$d4 = (double) i5;	$d5 = staticinvoke <java.lang.Math: double pow(double,double)>(1024.0, $d4);	$d7 = $d6 / $d5;	$r3 = virtualinvoke $r11.<java.text.DecimalFormat: java.lang.String format(double)>($d7);	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = <cn.hutool.core.io.unit.DataUnit: java.lang.String[] UNIT_NAMES>;	$r6 = $r5[i5];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2