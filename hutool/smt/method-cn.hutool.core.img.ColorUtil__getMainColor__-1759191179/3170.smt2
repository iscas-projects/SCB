(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var1567 0)
(declare-sort var1352 0)
(declare-sort var452 0)
(declare-sort var839 0)
(declare-sort var94 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1567-init () var1567)
(declare-fun <init>/-201242697 (var1567) void)
(declare-fun getWidth/571354637 (var3144) Int)
(declare-fun getHeight/-1029501600 (var3144) Int)
(declare-fun getMinX/18762849 (var3144) Int)
(declare-fun getMinY/18792640 (var3144) Int)
(declare-fun var839_entrySet/1101202697 (var839) var452)
(declare-fun cast-from-var1567-to-var839 (var1567) var839)
(declare-fun var452_iterator/1911472585 (var452) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var94_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3144 var3144)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var1980 var3144) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var1980 null-var3144)))
(declare-const var836 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var836 null-__Array__Int____Array__Int__Int____)))
(define-const var1030 var1567 var1567-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1030)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var1030!1 var1567)
(assert true)
(define-const var689 Int (getWidth/571354637 var1980)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var3605 Int (getHeight/-1029501600 var1980)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var3784 Int (getMinX/18762849 var1980)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var74 Int (getMinY/18792640 var1980)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var3292 Int var3784) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var3292 var689)) ; Cond: i18 >= i0 
(define-const var3271 String null-String) ; Statement: r34 = null 
(define-const var3563 Int 0) ; Statement: l20 = 0L 
(define-const var2972 var452 (var839_entrySet/1101202697 (cast-from-var1567-to-var839 var1030!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3356 Iterator (var452_iterator/1911472585 var2972)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1408 Bool (Iterator_hasNext/-1669924200 var3356)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var1408 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1775 (Array Int String) (var94_splitToArray/-262974706 (cast-from-String-to-String var3271) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var3610 String (select var1775 0)) ; Statement: $r3 = r39[0] 
(define-const var809 Int (Int_parseInt/1370970945 var3610)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var2122 String (Int_toHexString/1865784998 var809)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var213 String (select var1775 1)) ; Statement: $r4 = r39[1] 
(define-const var1191 Int (Int_parseInt/1370970945 var213)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var727 String (Int_toHexString/1865784998 var1191)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var957 String (select var1775 2)) ; Statement: $r5 = r39[2] 
(define-const var119 Int (Int_parseInt/1370970945 var957)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var2179 String (Int_toHexString/1865784998 var119)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var2635 Int (length/-134980193 var2122)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (= var2635 1))) ; Cond: $i7 != 1 
(define-const var3064 String var2122) ; Statement: $r43 = r40 
(assert true) ; Non Conditional
(define-const var3560 String var3064) ; Statement: r44 = $r43 
(assert true)
(define-const var2111 Int (length/-134980193 var727)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (not (= var2111 1)))) ; Negate: Cond: $i8 != 1  
(define-const var1545 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1545)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1545!1 String)
(assert (= var1545!1 ""))
(assert true)
(define-const var1883 String (append/672562846 var1545!1 "0")) ; Statement: $r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var1545!2 String)
(assert (= var1545!2 (str.++ var1545!1 "0")))
(assert true)
(define-const var2852 String (append/672562846 var1883 var727)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var1883!1 String)
(assert (= var1883!1 (str.++ var1883 var727)))
(assert true)
(define-const var3942 String (toString/-2075883882 var2852)) ; Statement: $r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r46 = $r45] 
(assert true) ; Non Conditional
(define-const var2978 String var3942) ; Statement: r46 = $r45 
(assert true)
(define-const var2226 Int (length/-134980193 var2179)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (= var2226 1))) ; Cond: $i9 != 1 
(define-const var1022 String var2179) ; Statement: $r47 = r42 
(assert true) ; Non Conditional
(define-const var184 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var184)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var184!1 String)
(assert (= var184!1 ""))
(assert true)
(define-const var3084 String (append/672562846 var184!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var184!2 String)
(assert (= var184!2 (str.++ var184!1 "#")))
(assert true)
(define-const var2266 String (append/672562846 var3084 var3560)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var3084!1 String)
(assert (= var3084!1 (str.++ var3084 var3560)))
(assert true)
(define-const var2744 String (append/672562846 var2266 var2978)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var2266!1 String)
(assert (= var2266!1 (str.++ var2266 var2978)))
(assert true)
(define-const var278 String (append/672562846 var2744 var1022)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var2744!1 String)
(assert (= var2744!1 (str.++ var2744 var1022)))
(assert true)
(define-const var2990 String (toString/-2075883882 var278)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1567-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var839_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var1567-to-var839=([java.util.HashMap], java.util.Map), var452_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var94_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3144=java.awt.image.BufferedImage, var1980=r1, var836=r24, var1567=java.util.HashMap, var1030=$r48, var689=i0, var3605=i1, var3784=i2, var74=i3, var3292=i18, var1352=null_type, var3271=r34, var3563=l20, var452=java.util.Set, var839=java.util.Map, var2972=$r2, var3356=r35, var1408=$z0, var94=cn.hutool.core.text.CharSequenceUtil, var1775=r39, var3610=$r3, var809=$i4, var2122=r40, var213=$r4, var1191=$i5, var727=r41, var957=$r5, var119=$i6, var2179=r42, var2635=$i7, var3064=$r43, var3560=r44, var2111=$i8, var1545=$r51, var1883=$r16, var2852=$r17, var3942=$r45, var2978=r46, var2226=$i9, var1022=$r47, var184=$r53, var3084=$r7, var2266=$r8, var2744=$r9, var278=$r10, var2990=$r11}
; {java.awt.image.BufferedImage=var3144, r1=var1980, r24=var836, java.util.HashMap=var1567, $r48=var1030, i0=var689, i1=var3605, i2=var3784, i3=var74, i18=var3292, null_type=var1352, r34=var3271, l20=var3563, java.util.Set=var452, java.util.Map=var839, $r2=var2972, r35=var3356, $z0=var1408, cn.hutool.core.text.CharSequenceUtil=var94, r39=var1775, $r3=var3610, $i4=var809, r40=var2122, $r4=var213, $i5=var1191, r41=var727, $r5=var957, $i6=var119, r42=var2179, $i7=var2635, $r43=var3064, r44=var3560, $i8=var2111, $r51=var1545, $r16=var1883, $r17=var2852, $r45=var3942, r46=var2978, $i9=var2226, $r47=var1022, $r53=var184, $r7=var3084, $r8=var2266, $r9=var2744, $r10=var278, $r11=var2990}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r43 = r40;	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r46 = $r45];	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r47 = r42;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11