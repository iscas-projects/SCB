(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var10 0)
(declare-sort var2299 0)
(declare-sort var978 0)
(declare-sort var2092 0)
(declare-sort var3297 0)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2299-init () var2299)
(declare-fun <init>/-201242697 (var2299) void)
(declare-fun getWidth/571354637 (var10) Int)
(declare-fun getHeight/-1029501600 (var10) Int)
(declare-fun getMinX/18762849 (var10) Int)
(declare-fun getMinY/18792640 (var10) Int)
(declare-fun var3297_entrySet/1101202697 (var3297) var2092)
(declare-fun cast-from-var2299-to-var3297 (var2299) var3297)
(declare-fun var2092_iterator/1911472585 (var2092) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2410_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var10 var10)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var1648 var10) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var1648 null-var10)))
(declare-const var970 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var970 null-__Array__Int____Array__Int__Int____)))
(define-const var2458 var2299 var2299-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2458)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var2458!1 var2299)
(assert true)
(define-const var780 Int (getWidth/571354637 var1648)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var326 Int (getHeight/-1029501600 var1648)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var1718 Int (getMinX/18762849 var1648)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var3024 Int (getMinY/18792640 var1648)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var3100 Int var1718) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var3100 var780)) ; Cond: i18 >= i0 
(define-const var869 String null-String) ; Statement: r34 = null 
(define-const var372 Int 0) ; Statement: l20 = 0L 
(define-const var637 var2092 (var3297_entrySet/1101202697 (cast-from-var2299-to-var3297 var2458!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3436 Iterator (var2092_iterator/1911472585 var637)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var845 Bool (Iterator_hasNext/-1669924200 var3436)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var845 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1749 (Array Int String) (var2410_splitToArray/-262974706 (cast-from-String-to-String var869) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var3216 String (select var1749 0)) ; Statement: $r3 = r39[0] 
(define-const var3455 Int (Int_parseInt/1370970945 var3216)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var2329 String (Int_toHexString/1865784998 var3455)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var819 String (select var1749 1)) ; Statement: $r4 = r39[1] 
(define-const var3834 Int (Int_parseInt/1370970945 var819)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var3118 String (Int_toHexString/1865784998 var3834)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var1935 String (select var1749 2)) ; Statement: $r5 = r39[2] 
(define-const var1681 Int (Int_parseInt/1370970945 var1935)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var1361 String (Int_toHexString/1865784998 var1681)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var1000 Int (length/-134980193 var2329)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (= var1000 1))) ; Cond: $i7 != 1 
(define-const var3135 String var2329) ; Statement: $r43 = r40 
(assert true) ; Non Conditional
(define-const var3633 String var3135) ; Statement: r44 = $r43 
(assert true)
(define-const var3112 Int (length/-134980193 var3118)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (= var3112 1))) ; Cond: $i8 != 1 
(define-const var792 String var3118) ; Statement: $r45 = r41 
(assert true) ; Non Conditional
(define-const var1278 String var792) ; Statement: r46 = $r45 
(assert true)
(define-const var3052 Int (length/-134980193 var1361)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (not (= var3052 1)))) ; Negate: Cond: $i9 != 1  
(define-const var366 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var366)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var366!1 String)
(assert (= var366!1 ""))
(assert true)
(define-const var3772 String (append/672562846 var366!1 "0")) ; Statement: $r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var366!2 String)
(assert (= var366!2 (str.++ var366!1 "0")))
(assert true)
(define-const var1714 String (append/672562846 var3772 var1361)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3772!1 String)
(assert (= var3772!1 (str.++ var3772 var1361)))
(assert true)
(define-const var2864 String (toString/-2075883882 var1714)) ; Statement: $r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r53 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3889 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3889)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3889!1 String)
(assert (= var3889!1 ""))
(assert true)
(define-const var2292 String (append/672562846 var3889!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3889!2 String)
(assert (= var3889!2 (str.++ var3889!1 "#")))
(assert true)
(define-const var379 String (append/672562846 var2292 var3633)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var2292!1 String)
(assert (= var2292!1 (str.++ var2292 var3633)))
(assert true)
(define-const var1494 String (append/672562846 var379 var1278)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var379!1 String)
(assert (= var379!1 (str.++ var379 var1278)))
(assert true)
(define-const var175 String (append/672562846 var1494 var2864)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var1494!1 String)
(assert (= var1494!1 (str.++ var1494 var2864)))
(assert true)
(define-const var3785 String (toString/-2075883882 var175)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2299-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var3297_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var2299-to-var3297=([java.util.HashMap], java.util.Map), var2092_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2410_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var10=java.awt.image.BufferedImage, var1648=r1, var970=r24, var2299=java.util.HashMap, var2458=$r48, var780=i0, var326=i1, var1718=i2, var3024=i3, var3100=i18, var978=null_type, var869=r34, var372=l20, var2092=java.util.Set, var3297=java.util.Map, var637=$r2, var3436=r35, var845=$z0, var2410=cn.hutool.core.text.CharSequenceUtil, var1749=r39, var3216=$r3, var3455=$i4, var2329=r40, var819=$r4, var3834=$i5, var3118=r41, var1935=$r5, var1681=$i6, var1361=r42, var1000=$i7, var3135=$r43, var3633=r44, var3112=$i8, var792=$r45, var1278=r46, var3052=$i9, var366=$r52, var3772=$r13, var1714=$r14, var2864=$r47, var3889=$r53, var2292=$r7, var379=$r8, var1494=$r9, var175=$r10, var3785=$r11}
; {java.awt.image.BufferedImage=var10, r1=var1648, r24=var970, java.util.HashMap=var2299, $r48=var2458, i0=var780, i1=var326, i2=var1718, i3=var3024, i18=var3100, null_type=var978, r34=var869, l20=var372, java.util.Set=var2092, java.util.Map=var3297, $r2=var637, r35=var3436, $z0=var845, cn.hutool.core.text.CharSequenceUtil=var2410, r39=var1749, $r3=var3216, $i4=var3455, r40=var2329, $r4=var819, $i5=var3834, r41=var3118, $r5=var1935, $i6=var1681, r42=var1361, $i7=var1000, $r43=var3135, r44=var3633, $i8=var3112, $r45=var792, r46=var1278, $i9=var3052, $r52=var366, $r13=var3772, $r14=var1714, $r47=var2864, $r53=var3889, $r7=var2292, $r8=var379, $r9=var1494, $r10=var175, $r11=var3785}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r43 = r40;	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r45 = r41;	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r53 = new java.lang.StringBuilder];	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11