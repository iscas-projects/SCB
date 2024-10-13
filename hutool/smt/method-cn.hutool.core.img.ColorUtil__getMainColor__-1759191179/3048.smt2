(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var1309 0)
(declare-sort var2068 0)
(declare-sort var3042 0)
(declare-sort var2305 0)
(declare-sort var936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1309-init () var1309)
(declare-fun <init>/-201242697 (var1309) void)
(declare-fun getWidth/571354637 (var541) Int)
(declare-fun getHeight/-1029501600 (var541) Int)
(declare-fun getMinX/18762849 (var541) Int)
(declare-fun getMinY/18792640 (var541) Int)
(declare-fun var2305_entrySet/1101202697 (var2305) var3042)
(declare-fun cast-from-var1309-to-var2305 (var1309) var2305)
(declare-fun var3042_iterator/1911472585 (var3042) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var936_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var541 var541)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var1211 var541) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var1211 null-var541)))
(declare-const var1543 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var1543 null-__Array__Int____Array__Int__Int____)))
(define-const var751 var1309 var1309-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var751)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var751!1 var1309)
(assert true)
(define-const var2602 Int (getWidth/571354637 var1211)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var2163 Int (getHeight/-1029501600 var1211)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var3144 Int (getMinX/18762849 var1211)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var1597 Int (getMinY/18792640 var1211)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var2952 Int var3144) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var2952 var2602)) ; Cond: i18 >= i0 
(define-const var386 String null-String) ; Statement: r34 = null 
(define-const var3646 Int 0) ; Statement: l20 = 0L 
(define-const var695 var3042 (var2305_entrySet/1101202697 (cast-from-var1309-to-var2305 var751!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1703 Iterator (var3042_iterator/1911472585 var695)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1343 Bool (Iterator_hasNext/-1669924200 var1703)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var1343 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3280 (Array Int String) (var936_splitToArray/-262974706 (cast-from-String-to-String var386) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var1090 String (select var3280 0)) ; Statement: $r3 = r39[0] 
(define-const var3434 Int (Int_parseInt/1370970945 var1090)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var3265 String (Int_toHexString/1865784998 var3434)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var2630 String (select var3280 1)) ; Statement: $r4 = r39[1] 
(define-const var2933 Int (Int_parseInt/1370970945 var2630)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var1221 String (Int_toHexString/1865784998 var2933)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var388 String (select var3280 2)) ; Statement: $r5 = r39[2] 
(define-const var1391 Int (Int_parseInt/1370970945 var388)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var2109 String (Int_toHexString/1865784998 var1391)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var2803 Int (length/-134980193 var3265)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (= var2803 1))) ; Cond: $i7 != 1 
(define-const var2587 String var3265) ; Statement: $r43 = r40 
(assert true) ; Non Conditional
(define-const var1969 String var2587) ; Statement: r44 = $r43 
(assert true)
(define-const var1105 Int (length/-134980193 var1221)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (not (= var1105 1)))) ; Negate: Cond: $i8 != 1  
(define-const var2330 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2330)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2330!1 String)
(assert (= var2330!1 ""))
(assert true)
(define-const var1800 String (append/672562846 var2330!1 "0")) ; Statement: $r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var2330!2 String)
(assert (= var2330!2 (str.++ var2330!1 "0")))
(assert true)
(define-const var1460 String (append/672562846 var1800 var1221)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var1800!1 String)
(assert (= var1800!1 (str.++ var1800 var1221)))
(assert true)
(define-const var3700 String (toString/-2075883882 var1460)) ; Statement: $r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r46 = $r45] 
(assert true) ; Non Conditional
(define-const var1771 String var3700) ; Statement: r46 = $r45 
(assert true)
(define-const var1449 Int (length/-134980193 var2109)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (not (= var1449 1)))) ; Negate: Cond: $i9 != 1  
(define-const var1406 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1406)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1406!1 String)
(assert (= var1406!1 ""))
(assert true)
(define-const var3579 String (append/672562846 var1406!1 "0")) ; Statement: $r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var1406!2 String)
(assert (= var1406!2 (str.++ var1406!1 "0")))
(assert true)
(define-const var2669 String (append/672562846 var3579 var2109)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3579!1 String)
(assert (= var3579!1 (str.++ var3579 var2109)))
(assert true)
(define-const var1005 String (toString/-2075883882 var2669)) ; Statement: $r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r53 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var973 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var973)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var973!1 String)
(assert (= var973!1 ""))
(assert true)
(define-const var1946 String (append/672562846 var973!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var973!2 String)
(assert (= var973!2 (str.++ var973!1 "#")))
(assert true)
(define-const var523 String (append/672562846 var1946 var1969)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var1946!1 String)
(assert (= var1946!1 (str.++ var1946 var1969)))
(assert true)
(define-const var990 String (append/672562846 var523 var1771)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var523!1 String)
(assert (= var523!1 (str.++ var523 var1771)))
(assert true)
(define-const var3690 String (append/672562846 var990 var1005)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var990!1 String)
(assert (= var990!1 (str.++ var990 var1005)))
(assert true)
(define-const var2627 String (toString/-2075883882 var3690)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1309-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var2305_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var1309-to-var2305=([java.util.HashMap], java.util.Map), var3042_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var936_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var541=java.awt.image.BufferedImage, var1211=r1, var1543=r24, var1309=java.util.HashMap, var751=$r48, var2602=i0, var2163=i1, var3144=i2, var1597=i3, var2952=i18, var2068=null_type, var386=r34, var3646=l20, var3042=java.util.Set, var2305=java.util.Map, var695=$r2, var1703=r35, var1343=$z0, var936=cn.hutool.core.text.CharSequenceUtil, var3280=r39, var1090=$r3, var3434=$i4, var3265=r40, var2630=$r4, var2933=$i5, var1221=r41, var388=$r5, var1391=$i6, var2109=r42, var2803=$i7, var2587=$r43, var1969=r44, var1105=$i8, var2330=$r51, var1800=$r16, var1460=$r17, var3700=$r45, var1771=r46, var1449=$i9, var1406=$r52, var3579=$r13, var2669=$r14, var1005=$r47, var973=$r53, var1946=$r7, var523=$r8, var990=$r9, var3690=$r10, var2627=$r11}
; {java.awt.image.BufferedImage=var541, r1=var1211, r24=var1543, java.util.HashMap=var1309, $r48=var751, i0=var2602, i1=var2163, i2=var3144, i3=var1597, i18=var2952, null_type=var2068, r34=var386, l20=var3646, java.util.Set=var3042, java.util.Map=var2305, $r2=var695, r35=var1703, $z0=var1343, cn.hutool.core.text.CharSequenceUtil=var936, r39=var3280, $r3=var1090, $i4=var3434, r40=var3265, $r4=var2630, $i5=var2933, r41=var1221, $r5=var388, $i6=var1391, r42=var2109, $i7=var2803, $r43=var2587, r44=var1969, $i8=var1105, $r51=var2330, $r16=var1800, $r17=var1460, $r45=var3700, r46=var1771, $i9=var1449, $r52=var1406, $r13=var3579, $r14=var2669, $r47=var1005, $r53=var973, $r7=var1946, $r8=var523, $r9=var990, $r10=var3690, $r11=var2627}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r43 = r40;	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r46 = $r45];	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r53 = new java.lang.StringBuilder];	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11