(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var327 0)
(declare-sort var1773 0)
(declare-sort var602 0)
(declare-sort var2402 0)
(declare-sort var2219 0)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1773-init () var1773)
(declare-fun <init>/-201242697 (var1773) void)
(declare-fun getWidth/571354637 (var327) Int)
(declare-fun getHeight/-1029501600 (var327) Int)
(declare-fun getMinX/18762849 (var327) Int)
(declare-fun getMinY/18792640 (var327) Int)
(declare-fun var2219_entrySet/1101202697 (var2219) var2402)
(declare-fun cast-from-var1773-to-var2219 (var1773) var2219)
(declare-fun var2402_iterator/1911472585 (var2402) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var900_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var327 var327)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var2673 var327) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var2673 null-var327)))
(declare-const var1552 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var1552 null-__Array__Int____Array__Int__Int____)))
(define-const var1612 var1773 var1773-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1612)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var1612!1 var1773)
(assert true)
(define-const var2180 Int (getWidth/571354637 var2673)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var2921 Int (getHeight/-1029501600 var2673)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var263 Int (getMinX/18762849 var2673)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var337 Int (getMinY/18792640 var2673)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var2717 Int var263) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var2717 var2180)) ; Cond: i18 >= i0 
(define-const var2041 String null-String) ; Statement: r34 = null 
(define-const var2665 Int 0) ; Statement: l20 = 0L 
(define-const var347 var2402 (var2219_entrySet/1101202697 (cast-from-var1773-to-var2219 var1612!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1618 Iterator (var2402_iterator/1911472585 var347)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1072 Bool (Iterator_hasNext/-1669924200 var1618)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var1072 1 0) 0)) ; Cond: $z0 == 0 
(define-const var616 (Array Int String) (var900_splitToArray/-262974706 (cast-from-String-to-String var2041) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var588 String (select var616 0)) ; Statement: $r3 = r39[0] 
(define-const var3213 Int (Int_parseInt/1370970945 var588)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var2403 String (Int_toHexString/1865784998 var3213)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var1880 String (select var616 1)) ; Statement: $r4 = r39[1] 
(define-const var3699 Int (Int_parseInt/1370970945 var1880)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var34 String (Int_toHexString/1865784998 var3699)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var1670 String (select var616 2)) ; Statement: $r5 = r39[2] 
(define-const var478 Int (Int_parseInt/1370970945 var1670)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var1960 String (Int_toHexString/1865784998 var478)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var1457 Int (length/-134980193 var2403)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (not (= var1457 1)))) ; Negate: Cond: $i7 != 1  
(define-const var2734 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2734)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2734!1 String)
(assert (= var2734!1 ""))
(assert true)
(define-const var3101 String (append/672562846 var2734!1 "0")) ; Statement: $r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var2734!2 String)
(assert (= var2734!2 (str.++ var2734!1 "0")))
(assert true)
(define-const var2888 String (append/672562846 var3101 var2403)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 var2403)))
(assert true)
(define-const var1202 String (toString/-2075883882 var2888)) ; Statement: $r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r44 = $r43] 
(assert true) ; Non Conditional
(define-const var515 String var1202) ; Statement: r44 = $r43 
(assert true)
(define-const var2124 Int (length/-134980193 var34)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (= var2124 1))) ; Cond: $i8 != 1 
(define-const var951 String var34) ; Statement: $r45 = r41 
(assert true) ; Non Conditional
(define-const var3122 String var951) ; Statement: r46 = $r45 
(assert true)
(define-const var3832 Int (length/-134980193 var1960)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (= var3832 1))) ; Cond: $i9 != 1 
(define-const var777 String var1960) ; Statement: $r47 = r42 
(assert true) ; Non Conditional
(define-const var675 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var675)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var675!1 String)
(assert (= var675!1 ""))
(assert true)
(define-const var1935 String (append/672562846 var675!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var675!2 String)
(assert (= var675!2 (str.++ var675!1 "#")))
(assert true)
(define-const var2142 String (append/672562846 var1935 var515)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var1935!1 String)
(assert (= var1935!1 (str.++ var1935 var515)))
(assert true)
(define-const var1547 String (append/672562846 var2142 var3122)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var2142!1 String)
(assert (= var2142!1 (str.++ var2142 var3122)))
(assert true)
(define-const var185 String (append/672562846 var1547 var777)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var1547!1 String)
(assert (= var1547!1 (str.++ var1547 var777)))
(assert true)
(define-const var1499 String (toString/-2075883882 var185)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1773-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var2219_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var1773-to-var2219=([java.util.HashMap], java.util.Map), var2402_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var900_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var327=java.awt.image.BufferedImage, var2673=r1, var1552=r24, var1773=java.util.HashMap, var1612=$r48, var2180=i0, var2921=i1, var263=i2, var337=i3, var2717=i18, var602=null_type, var2041=r34, var2665=l20, var2402=java.util.Set, var2219=java.util.Map, var347=$r2, var1618=r35, var1072=$z0, var900=cn.hutool.core.text.CharSequenceUtil, var616=r39, var588=$r3, var3213=$i4, var2403=r40, var1880=$r4, var3699=$i5, var34=r41, var1670=$r5, var478=$i6, var1960=r42, var1457=$i7, var2734=$r50, var3101=$r19, var2888=$r20, var1202=$r43, var515=r44, var2124=$i8, var951=$r45, var3122=r46, var3832=$i9, var777=$r47, var675=$r53, var1935=$r7, var2142=$r8, var1547=$r9, var185=$r10, var1499=$r11}
; {java.awt.image.BufferedImage=var327, r1=var2673, r24=var1552, java.util.HashMap=var1773, $r48=var1612, i0=var2180, i1=var2921, i2=var263, i3=var337, i18=var2717, null_type=var602, r34=var2041, l20=var2665, java.util.Set=var2402, java.util.Map=var2219, $r2=var347, r35=var1618, $z0=var1072, cn.hutool.core.text.CharSequenceUtil=var900, r39=var616, $r3=var588, $i4=var3213, r40=var2403, $r4=var1880, $i5=var3699, r41=var34, $r5=var1670, $i6=var478, r42=var1960, $i7=var1457, $r50=var2734, $r19=var3101, $r20=var2888, $r43=var1202, r44=var515, $i8=var2124, $r45=var951, r46=var3122, $i9=var3832, $r47=var777, $r53=var675, $r7=var1935, $r8=var2142, $r9=var1547, $r10=var185, $r11=var1499}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r44 = $r43];	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r45 = r41;	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r47 = r42;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11