(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var616 0)
(declare-sort var881 0)
(declare-sort var2560 0)
(declare-sort var3882 0)
(declare-sort var364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var616-init () var616)
(declare-fun <init>/-201242697 (var616) void)
(declare-fun getWidth/571354637 (var1131) Int)
(declare-fun getHeight/-1029501600 (var1131) Int)
(declare-fun getMinX/18762849 (var1131) Int)
(declare-fun getMinY/18792640 (var1131) Int)
(declare-fun var3882_entrySet/1101202697 (var3882) var2560)
(declare-fun cast-from-var616-to-var3882 (var616) var3882)
(declare-fun var2560_iterator/1911472585 (var2560) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var364_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1131 var1131)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var3267 var1131) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var3267 null-var1131)))
(declare-const var3812 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var3812 null-__Array__Int____Array__Int__Int____)))
(define-const var634 var616 var616-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var634)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var634!1 var616)
(assert true)
(define-const var2188 Int (getWidth/571354637 var3267)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var2281 Int (getHeight/-1029501600 var3267)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var2680 Int (getMinX/18762849 var3267)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var2292 Int (getMinY/18792640 var3267)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var2763 Int var2680) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var2763 var2188)) ; Cond: i18 >= i0 
(define-const var1701 String null-String) ; Statement: r34 = null 
(define-const var2811 Int 0) ; Statement: l20 = 0L 
(define-const var662 var2560 (var3882_entrySet/1101202697 (cast-from-var616-to-var3882 var634!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3596 Iterator (var2560_iterator/1911472585 var662)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3303 Bool (Iterator_hasNext/-1669924200 var3596)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var3303 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3047 (Array Int String) (var364_splitToArray/-262974706 (cast-from-String-to-String var1701) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var1218 String (select var3047 0)) ; Statement: $r3 = r39[0] 
(define-const var2646 Int (Int_parseInt/1370970945 var1218)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var1760 String (Int_toHexString/1865784998 var2646)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var2980 String (select var3047 1)) ; Statement: $r4 = r39[1] 
(define-const var3887 Int (Int_parseInt/1370970945 var2980)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var2315 String (Int_toHexString/1865784998 var3887)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var3628 String (select var3047 2)) ; Statement: $r5 = r39[2] 
(define-const var3548 Int (Int_parseInt/1370970945 var3628)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var1887 String (Int_toHexString/1865784998 var3548)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var2035 Int (length/-134980193 var1760)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (not (= var2035 1)))) ; Negate: Cond: $i7 != 1  
(define-const var226 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var226)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var226!1 String)
(assert (= var226!1 ""))
(assert true)
(define-const var2009 String (append/672562846 var226!1 "0")) ; Statement: $r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var226!2 String)
(assert (= var226!2 (str.++ var226!1 "0")))
(assert true)
(define-const var2472 String (append/672562846 var2009 var1760)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var2009!1 String)
(assert (= var2009!1 (str.++ var2009 var1760)))
(assert true)
(define-const var3170 String (toString/-2075883882 var2472)) ; Statement: $r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r44 = $r43] 
(assert true) ; Non Conditional
(define-const var709 String var3170) ; Statement: r44 = $r43 
(assert true)
(define-const var1795 Int (length/-134980193 var2315)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (= var1795 1))) ; Cond: $i8 != 1 
(define-const var2312 String var2315) ; Statement: $r45 = r41 
(assert true) ; Non Conditional
(define-const var1487 String var2312) ; Statement: r46 = $r45 
(assert true)
(define-const var2477 Int (length/-134980193 var1887)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (not (= var2477 1)))) ; Negate: Cond: $i9 != 1  
(define-const var3537 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3537)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3537!1 String)
(assert (= var3537!1 ""))
(assert true)
(define-const var1454 String (append/672562846 var3537!1 "0")) ; Statement: $r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var3537!2 String)
(assert (= var3537!2 (str.++ var3537!1 "0")))
(assert true)
(define-const var669 String (append/672562846 var1454 var1887)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var1454!1 String)
(assert (= var1454!1 (str.++ var1454 var1887)))
(assert true)
(define-const var2003 String (toString/-2075883882 var669)) ; Statement: $r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r53 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1072 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1072)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1072!1 String)
(assert (= var1072!1 ""))
(assert true)
(define-const var793 String (append/672562846 var1072!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1072!2 String)
(assert (= var1072!2 (str.++ var1072!1 "#")))
(assert true)
(define-const var836 String (append/672562846 var793 var709)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var793!1 String)
(assert (= var793!1 (str.++ var793 var709)))
(assert true)
(define-const var3294 String (append/672562846 var836 var1487)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var836!1 String)
(assert (= var836!1 (str.++ var836 var1487)))
(assert true)
(define-const var2918 String (append/672562846 var3294 var2003)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var3294!1 String)
(assert (= var3294!1 (str.++ var3294 var2003)))
(assert true)
(define-const var641 String (toString/-2075883882 var2918)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var616-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var3882_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var616-to-var3882=([java.util.HashMap], java.util.Map), var2560_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var364_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1131=java.awt.image.BufferedImage, var3267=r1, var3812=r24, var616=java.util.HashMap, var634=$r48, var2188=i0, var2281=i1, var2680=i2, var2292=i3, var2763=i18, var881=null_type, var1701=r34, var2811=l20, var2560=java.util.Set, var3882=java.util.Map, var662=$r2, var3596=r35, var3303=$z0, var364=cn.hutool.core.text.CharSequenceUtil, var3047=r39, var1218=$r3, var2646=$i4, var1760=r40, var2980=$r4, var3887=$i5, var2315=r41, var3628=$r5, var3548=$i6, var1887=r42, var2035=$i7, var226=$r50, var2009=$r19, var2472=$r20, var3170=$r43, var709=r44, var1795=$i8, var2312=$r45, var1487=r46, var2477=$i9, var3537=$r52, var1454=$r13, var669=$r14, var2003=$r47, var1072=$r53, var793=$r7, var836=$r8, var3294=$r9, var2918=$r10, var641=$r11}
; {java.awt.image.BufferedImage=var1131, r1=var3267, r24=var3812, java.util.HashMap=var616, $r48=var634, i0=var2188, i1=var2281, i2=var2680, i3=var2292, i18=var2763, null_type=var881, r34=var1701, l20=var2811, java.util.Set=var2560, java.util.Map=var3882, $r2=var662, r35=var3596, $z0=var3303, cn.hutool.core.text.CharSequenceUtil=var364, r39=var3047, $r3=var1218, $i4=var2646, r40=var1760, $r4=var2980, $i5=var3887, r41=var2315, $r5=var3628, $i6=var3548, r42=var1887, $i7=var2035, $r50=var226, $r19=var2009, $r20=var2472, $r43=var3170, r44=var709, $i8=var1795, $r45=var2312, r46=var1487, $i9=var2477, $r52=var3537, $r13=var1454, $r14=var669, $r47=var2003, $r53=var1072, $r7=var793, $r8=var836, $r9=var3294, $r10=var2918, $r11=var641}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r44 = $r43];	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r45 = r41;	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r53 = new java.lang.StringBuilder];	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11