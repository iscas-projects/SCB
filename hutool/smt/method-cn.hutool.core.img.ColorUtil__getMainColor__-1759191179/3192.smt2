(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2400 0)
(declare-sort var697 0)
(declare-sort var3443 0)
(declare-sort var2214 0)
(declare-sort var380 0)
(declare-sort var3697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var697-init () var697)
(declare-fun <init>/-201242697 (var697) void)
(declare-fun getWidth/571354637 (var2400) Int)
(declare-fun getHeight/-1029501600 (var2400) Int)
(declare-fun getMinX/18762849 (var2400) Int)
(declare-fun getMinY/18792640 (var2400) Int)
(declare-fun var380_entrySet/1101202697 (var380) var2214)
(declare-fun cast-from-var697-to-var380 (var697) var380)
(declare-fun var2214_iterator/1911472585 (var2214) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3697_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2400 var2400)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var1135 var2400) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var1135 null-var2400)))
(declare-const var2980 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var2980 null-__Array__Int____Array__Int__Int____)))
(define-const var2888 var697 var697-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2888)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var2888!1 var697)
(assert true)
(define-const var2608 Int (getWidth/571354637 var1135)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var3496 Int (getHeight/-1029501600 var1135)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var2211 Int (getMinX/18762849 var1135)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var2500 Int (getMinY/18792640 var1135)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var535 Int var2211) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var535 var2608)) ; Cond: i18 >= i0 
(define-const var1173 String null-String) ; Statement: r34 = null 
(define-const var764 Int 0) ; Statement: l20 = 0L 
(define-const var339 var2214 (var380_entrySet/1101202697 (cast-from-var697-to-var380 var2888!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2796 Iterator (var2214_iterator/1911472585 var339)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2331 Bool (Iterator_hasNext/-1669924200 var2796)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var2331 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1871 (Array Int String) (var3697_splitToArray/-262974706 (cast-from-String-to-String var1173) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var1749 String (select var1871 0)) ; Statement: $r3 = r39[0] 
(define-const var1502 Int (Int_parseInt/1370970945 var1749)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var1027 String (Int_toHexString/1865784998 var1502)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var950 String (select var1871 1)) ; Statement: $r4 = r39[1] 
(define-const var175 Int (Int_parseInt/1370970945 var950)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var3669 String (Int_toHexString/1865784998 var175)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var257 String (select var1871 2)) ; Statement: $r5 = r39[2] 
(define-const var2442 Int (Int_parseInt/1370970945 var257)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var470 String (Int_toHexString/1865784998 var2442)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var1494 Int (length/-134980193 var1027)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (= var1494 1))) ; Cond: $i7 != 1 
(define-const var1810 String var1027) ; Statement: $r43 = r40 
(assert true) ; Non Conditional
(define-const var2749 String var1810) ; Statement: r44 = $r43 
(assert true)
(define-const var3650 Int (length/-134980193 var3669)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (= var3650 1))) ; Cond: $i8 != 1 
(define-const var136 String var3669) ; Statement: $r45 = r41 
(assert true) ; Non Conditional
(define-const var1568 String var136) ; Statement: r46 = $r45 
(assert true)
(define-const var3290 Int (length/-134980193 var470)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (= var3290 1))) ; Cond: $i9 != 1 
(define-const var2946 String var470) ; Statement: $r47 = r42 
(assert true) ; Non Conditional
(define-const var2194 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2194)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2194!1 String)
(assert (= var2194!1 ""))
(assert true)
(define-const var2561 String (append/672562846 var2194!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2194!2 String)
(assert (= var2194!2 (str.++ var2194!1 "#")))
(assert true)
(define-const var3488 String (append/672562846 var2561 var2749)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var2561!1 String)
(assert (= var2561!1 (str.++ var2561 var2749)))
(assert true)
(define-const var42 String (append/672562846 var3488 var1568)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var3488!1 String)
(assert (= var3488!1 (str.++ var3488 var1568)))
(assert true)
(define-const var93 String (append/672562846 var42 var2946)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var42!1 String)
(assert (= var42!1 (str.++ var42 var2946)))
(assert true)
(define-const var3483 String (toString/-2075883882 var93)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var697-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var380_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var697-to-var380=([java.util.HashMap], java.util.Map), var2214_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3697_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2400=java.awt.image.BufferedImage, var1135=r1, var2980=r24, var697=java.util.HashMap, var2888=$r48, var2608=i0, var3496=i1, var2211=i2, var2500=i3, var535=i18, var3443=null_type, var1173=r34, var764=l20, var2214=java.util.Set, var380=java.util.Map, var339=$r2, var2796=r35, var2331=$z0, var3697=cn.hutool.core.text.CharSequenceUtil, var1871=r39, var1749=$r3, var1502=$i4, var1027=r40, var950=$r4, var175=$i5, var3669=r41, var257=$r5, var2442=$i6, var470=r42, var1494=$i7, var1810=$r43, var2749=r44, var3650=$i8, var136=$r45, var1568=r46, var3290=$i9, var2946=$r47, var2194=$r53, var2561=$r7, var3488=$r8, var42=$r9, var93=$r10, var3483=$r11}
; {java.awt.image.BufferedImage=var2400, r1=var1135, r24=var2980, java.util.HashMap=var697, $r48=var2888, i0=var2608, i1=var3496, i2=var2211, i3=var2500, i18=var535, null_type=var3443, r34=var1173, l20=var764, java.util.Set=var2214, java.util.Map=var380, $r2=var339, r35=var2796, $z0=var2331, cn.hutool.core.text.CharSequenceUtil=var3697, r39=var1871, $r3=var1749, $i4=var1502, r40=var1027, $r4=var950, $i5=var175, r41=var3669, $r5=var257, $i6=var2442, r42=var470, $i7=var1494, $r43=var1810, r44=var2749, $i8=var3650, $r45=var136, r46=var1568, $i9=var3290, $r47=var2946, $r53=var2194, $r7=var2561, $r8=var3488, $r9=var42, $r10=var93, $r11=var3483}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r43 = r40;	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r45 = r41;	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r47 = r42;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11