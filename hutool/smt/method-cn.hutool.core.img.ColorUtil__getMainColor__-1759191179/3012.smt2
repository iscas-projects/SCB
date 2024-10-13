(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var261 0)
(declare-sort var3017 0)
(declare-sort var2881 0)
(declare-sort var3924 0)
(declare-sort var776 0)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3017-init () var3017)
(declare-fun <init>/-201242697 (var3017) void)
(declare-fun getWidth/571354637 (var261) Int)
(declare-fun getHeight/-1029501600 (var261) Int)
(declare-fun getMinX/18762849 (var261) Int)
(declare-fun getMinY/18792640 (var261) Int)
(declare-fun var776_entrySet/1101202697 (var776) var3924)
(declare-fun cast-from-var3017-to-var776 (var3017) var776)
(declare-fun var3924_iterator/1911472585 (var3924) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2929_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var261 var261)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var1615 var261) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var1615 null-var261)))
(declare-const var2604 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var2604 null-__Array__Int____Array__Int__Int____)))
(define-const var2888 var3017 var3017-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2888)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var2888!1 var3017)
(assert true)
(define-const var954 Int (getWidth/571354637 var1615)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var2717 Int (getHeight/-1029501600 var1615)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var3020 Int (getMinX/18762849 var1615)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var2727 Int (getMinY/18792640 var1615)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var1148 Int var3020) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var1148 var954)) ; Cond: i18 >= i0 
(define-const var2913 String null-String) ; Statement: r34 = null 
(define-const var2733 Int 0) ; Statement: l20 = 0L 
(define-const var2843 var3924 (var776_entrySet/1101202697 (cast-from-var3017-to-var776 var2888!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var385 Iterator (var3924_iterator/1911472585 var2843)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3165 Bool (Iterator_hasNext/-1669924200 var385)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var3165 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1585 (Array Int String) (var2929_splitToArray/-262974706 (cast-from-String-to-String var2913) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var769 String (select var1585 0)) ; Statement: $r3 = r39[0] 
(define-const var3526 Int (Int_parseInt/1370970945 var769)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var2099 String (Int_toHexString/1865784998 var3526)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var1064 String (select var1585 1)) ; Statement: $r4 = r39[1] 
(define-const var1439 Int (Int_parseInt/1370970945 var1064)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var3040 String (Int_toHexString/1865784998 var1439)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var1289 String (select var1585 2)) ; Statement: $r5 = r39[2] 
(define-const var2629 Int (Int_parseInt/1370970945 var1289)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var557 String (Int_toHexString/1865784998 var2629)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var175 Int (length/-134980193 var2099)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (not (= var175 1)))) ; Negate: Cond: $i7 != 1  
(define-const var265 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var265)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var265!1 String)
(assert (= var265!1 ""))
(assert true)
(define-const var1773 String (append/672562846 var265!1 "0")) ; Statement: $r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var265!2 String)
(assert (= var265!2 (str.++ var265!1 "0")))
(assert true)
(define-const var2397 String (append/672562846 var1773 var2099)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var1773!1 String)
(assert (= var1773!1 (str.++ var1773 var2099)))
(assert true)
(define-const var1256 String (toString/-2075883882 var2397)) ; Statement: $r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r44 = $r43] 
(assert true) ; Non Conditional
(define-const var3151 String var1256) ; Statement: r44 = $r43 
(assert true)
(define-const var1985 Int (length/-134980193 var3040)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (not (= var1985 1)))) ; Negate: Cond: $i8 != 1  
(define-const var1970 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1970)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1970!1 String)
(assert (= var1970!1 ""))
(assert true)
(define-const var1786 String (append/672562846 var1970!1 "0")) ; Statement: $r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var1970!2 String)
(assert (= var1970!2 (str.++ var1970!1 "0")))
(assert true)
(define-const var3350 String (append/672562846 var1786 var3040)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var1786!1 String)
(assert (= var1786!1 (str.++ var1786 var3040)))
(assert true)
(define-const var2624 String (toString/-2075883882 var3350)) ; Statement: $r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r46 = $r45] 
(assert true) ; Non Conditional
(define-const var3370 String var2624) ; Statement: r46 = $r45 
(assert true)
(define-const var2905 Int (length/-134980193 var557)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (= var2905 1))) ; Cond: $i9 != 1 
(define-const var2982 String var557) ; Statement: $r47 = r42 
(assert true) ; Non Conditional
(define-const var1960 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1960)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1960!1 String)
(assert (= var1960!1 ""))
(assert true)
(define-const var361 String (append/672562846 var1960!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1960!2 String)
(assert (= var1960!2 (str.++ var1960!1 "#")))
(assert true)
(define-const var2086 String (append/672562846 var361 var3151)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var361!1 String)
(assert (= var361!1 (str.++ var361 var3151)))
(assert true)
(define-const var3998 String (append/672562846 var2086 var3370)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var2086!1 String)
(assert (= var2086!1 (str.++ var2086 var3370)))
(assert true)
(define-const var2944 String (append/672562846 var3998 var2982)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var3998!1 String)
(assert (= var3998!1 (str.++ var3998 var2982)))
(assert true)
(define-const var2788 String (toString/-2075883882 var2944)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3017-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var776_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var3017-to-var776=([java.util.HashMap], java.util.Map), var3924_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2929_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var261=java.awt.image.BufferedImage, var1615=r1, var2604=r24, var3017=java.util.HashMap, var2888=$r48, var954=i0, var2717=i1, var3020=i2, var2727=i3, var1148=i18, var2881=null_type, var2913=r34, var2733=l20, var3924=java.util.Set, var776=java.util.Map, var2843=$r2, var385=r35, var3165=$z0, var2929=cn.hutool.core.text.CharSequenceUtil, var1585=r39, var769=$r3, var3526=$i4, var2099=r40, var1064=$r4, var1439=$i5, var3040=r41, var1289=$r5, var2629=$i6, var557=r42, var175=$i7, var265=$r50, var1773=$r19, var2397=$r20, var1256=$r43, var3151=r44, var1985=$i8, var1970=$r51, var1786=$r16, var3350=$r17, var2624=$r45, var3370=r46, var2905=$i9, var2982=$r47, var1960=$r53, var361=$r7, var2086=$r8, var3998=$r9, var2944=$r10, var2788=$r11}
; {java.awt.image.BufferedImage=var261, r1=var1615, r24=var2604, java.util.HashMap=var3017, $r48=var2888, i0=var954, i1=var2717, i2=var3020, i3=var2727, i18=var1148, null_type=var2881, r34=var2913, l20=var2733, java.util.Set=var3924, java.util.Map=var776, $r2=var2843, r35=var385, $z0=var3165, cn.hutool.core.text.CharSequenceUtil=var2929, r39=var1585, $r3=var769, $i4=var3526, r40=var2099, $r4=var1064, $i5=var1439, r41=var3040, $r5=var1289, $i6=var2629, r42=var557, $i7=var175, $r50=var265, $r19=var1773, $r20=var2397, $r43=var1256, r44=var3151, $i8=var1985, $r51=var1970, $r16=var1786, $r17=var3350, $r45=var2624, r46=var3370, $i9=var2905, $r47=var2982, $r53=var1960, $r7=var361, $r8=var2086, $r9=var3998, $r10=var2944, $r11=var2788}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r44 = $r43];	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r46 = $r45];	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r47 = r42;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11