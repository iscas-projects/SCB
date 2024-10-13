(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var268 0)
(declare-sort var1166 0)
(declare-sort var3215 0)
(declare-sort var1343 0)
(declare-sort var2485 0)
(declare-sort var1855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1166-init () var1166)
(declare-fun <init>/-201242697 (var1166) void)
(declare-fun getWidth/571354637 (var268) Int)
(declare-fun getHeight/-1029501600 (var268) Int)
(declare-fun getMinX/18762849 (var268) Int)
(declare-fun getMinY/18792640 (var268) Int)
(declare-fun var2485_entrySet/1101202697 (var2485) var1343)
(declare-fun cast-from-var1166-to-var2485 (var1166) var2485)
(declare-fun var1343_iterator/1911472585 (var1343) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1855_splitToArray/-262974706 (String Int) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var268 var268)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var3749 var268) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var3749 null-var268)))
(declare-const var2403 (Array Int (Array Int Int))) ; Statement: r24 := @parameter1: int[][] 
(assert (not (= var2403 null-__Array__Int____Array__Int__Int____)))
(define-const var1762 var1166 var1166-init) ; Statement: $r48 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1762)) ; Statement: specialinvoke $r48.<java.util.HashMap: void <init>()>() 

(declare-const var1762!1 var1166)
(assert true)
(define-const var2285 Int (getWidth/571354637 var3749)) ; Statement: i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>() 
(assert true)
(define-const var2311 Int (getHeight/-1029501600 var3749)) ; Statement: i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>() 
(assert true)
(define-const var2309 Int (getMinX/18762849 var3749)) ; Statement: i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>() 
(assert true)
(define-const var965 Int (getMinY/18792640 var3749)) ; Statement: i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>() 
(define-const var3461 Int var2309) ; Statement: i18 = i2 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto r34 = null 
(assert (>= var3461 var2285)) ; Cond: i18 >= i0 
(define-const var2027 String null-String) ; Statement: r34 = null 
(define-const var85 Int 0) ; Statement: l20 = 0L 
(define-const var3656 var1343 (var2485_entrySet/1101202697 (cast-from-var1166-to-var2485 var1762!1))) ; Statement: $r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>() 
(define-const var880 Iterator (var1343_iterator/1911472585 var3656)) ; Statement: r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3917 Bool (Iterator_hasNext/-1669924200 var880)) ; Statement: $z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(assert (= (ite var3917 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2524 (Array Int String) (var1855_splitToArray/-262974706 (cast-from-String-to-String var2027) 45)) ; Statement: r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45) 
(define-const var3985 String (select var2524 0)) ; Statement: $r3 = r39[0] 
(define-const var496 Int (Int_parseInt/1370970945 var3985)) ; Statement: $i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3) 
(define-const var1302 String (Int_toHexString/1865784998 var496)) ; Statement: r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(define-const var2409 String (select var2524 1)) ; Statement: $r4 = r39[1] 
(define-const var38 Int (Int_parseInt/1370970945 var2409)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var360 String (Int_toHexString/1865784998 var38)) ; Statement: r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(define-const var2152 String (select var2524 2)) ; Statement: $r5 = r39[2] 
(define-const var1321 Int (Int_parseInt/1370970945 var2152)) ; Statement: $i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5) 
(define-const var1123 String (Int_toHexString/1865784998 var1321)) ; Statement: r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6) 
(assert true)
(define-const var3328 Int (length/-134980193 var1302)) ; Statement: $i7 = virtualinvoke r40.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 1 goto $r43 = r40 
(assert (not (not (= var3328 1)))) ; Negate: Cond: $i7 != 1  
(define-const var1529 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1529)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1529!1 String)
(assert (= var1529!1 ""))
(assert true)
(define-const var2197 String (append/672562846 var1529!1 "0")) ; Statement: $r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var1529!2 String)
(assert (= var1529!2 (str.++ var1529!1 "0")))
(assert true)
(define-const var1007 String (append/672562846 var2197 var1302)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var2197!1 String)
(assert (= var2197!1 (str.++ var2197 var1302)))
(assert true)
(define-const var2768 String (toString/-2075883882 var1007)) ; Statement: $r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r44 = $r43] 
(assert true) ; Non Conditional
(define-const var2233 String var2768) ; Statement: r44 = $r43 
(assert true)
(define-const var518 Int (length/-134980193 var360)) ; Statement: $i8 = virtualinvoke r41.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 1 goto $r45 = r41 
(assert (not (not (= var518 1)))) ; Negate: Cond: $i8 != 1  
(define-const var1681 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1681)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1681!1 String)
(assert (= var1681!1 ""))
(assert true)
(define-const var3570 String (append/672562846 var1681!1 "0")) ; Statement: $r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var1681!2 String)
(assert (= var1681!2 (str.++ var1681!1 "0")))
(assert true)
(define-const var3304 String (append/672562846 var3570 var360)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var3570!1 String)
(assert (= var3570!1 (str.++ var3570 var360)))
(assert true)
(define-const var1380 String (toString/-2075883882 var3304)) ; Statement: $r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r46 = $r45] 
(assert true) ; Non Conditional
(define-const var1947 String var1380) ; Statement: r46 = $r45 
(assert true)
(define-const var1675 Int (length/-134980193 var1123)) ; Statement: $i9 = virtualinvoke r42.<java.lang.String: int length()>() 
 ; Statement: if $i9 != 1 goto $r47 = r42 
(assert (not (not (= var1675 1)))) ; Negate: Cond: $i9 != 1  
(define-const var748 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var748)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var748!1 String)
(assert (= var748!1 ""))
(assert true)
(define-const var3213 String (append/672562846 var748!1 "0")) ; Statement: $r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0") 
(declare-const var748!2 String)
(assert (= var748!2 (str.++ var748!1 "0")))
(assert true)
(define-const var3078 String (append/672562846 var3213 var1123)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var3213!1 String)
(assert (= var3213!1 (str.++ var3213 var1123)))
(assert true)
(define-const var1984 String (toString/-2075883882 var3078)) ; Statement: $r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r53 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3292 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3292)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3292!1 String)
(assert (= var3292!1 ""))
(assert true)
(define-const var2141 String (append/672562846 var3292!1 "#")) ; Statement: $r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3292!2 String)
(assert (= var3292!2 (str.++ var3292!1 "#")))
(assert true)
(define-const var3029 String (append/672562846 var2141 var2233)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var2141!1 String)
(assert (= var2141!1 (str.++ var2141 var2233)))
(assert true)
(define-const var3826 String (append/672562846 var3029 var1947)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46) 
(declare-const var3029!1 String)
(assert (= var3029!1 (str.++ var3029 var1947)))
(assert true)
(define-const var2552 String (append/672562846 var3826 var1984)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var3826!1 String)
(assert (= var3826!1 (str.++ var3826 var1984)))
(assert true)
(define-const var3867 String (toString/-2075883882 var2552)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1166-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getWidth/571354637=([java.awt.image.BufferedImage], int), getHeight/-1029501600=([java.awt.image.BufferedImage], int), getMinX/18762849=([java.awt.image.BufferedImage], int), getMinY/18792640=([java.awt.image.BufferedImage], int), var2485_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var1166-to-var2485=([java.util.HashMap], java.util.Map), var1343_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1855_splitToArray/-262974706=([java.lang.CharSequence, char], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var268=java.awt.image.BufferedImage, var3749=r1, var2403=r24, var1166=java.util.HashMap, var1762=$r48, var2285=i0, var2311=i1, var2309=i2, var965=i3, var3461=i18, var3215=null_type, var2027=r34, var85=l20, var1343=java.util.Set, var2485=java.util.Map, var3656=$r2, var880=r35, var3917=$z0, var1855=cn.hutool.core.text.CharSequenceUtil, var2524=r39, var3985=$r3, var496=$i4, var1302=r40, var2409=$r4, var38=$i5, var360=r41, var2152=$r5, var1321=$i6, var1123=r42, var3328=$i7, var1529=$r50, var2197=$r19, var1007=$r20, var2768=$r43, var2233=r44, var518=$i8, var1681=$r51, var3570=$r16, var3304=$r17, var1380=$r45, var1947=r46, var1675=$i9, var748=$r52, var3213=$r13, var3078=$r14, var1984=$r47, var3292=$r53, var2141=$r7, var3029=$r8, var3826=$r9, var2552=$r10, var3867=$r11}
; {java.awt.image.BufferedImage=var268, r1=var3749, r24=var2403, java.util.HashMap=var1166, $r48=var1762, i0=var2285, i1=var2311, i2=var2309, i3=var965, i18=var3461, null_type=var3215, r34=var2027, l20=var85, java.util.Set=var1343, java.util.Map=var2485, $r2=var3656, r35=var880, $z0=var3917, cn.hutool.core.text.CharSequenceUtil=var1855, r39=var2524, $r3=var3985, $i4=var496, r40=var1302, $r4=var2409, $i5=var38, r41=var360, $r5=var2152, $i6=var1321, r42=var1123, $i7=var3328, $r50=var1529, $r19=var2197, $r20=var1007, $r43=var2768, r44=var2233, $i8=var518, $r51=var1681, $r16=var3570, $r17=var3304, $r45=var1380, r46=var1947, $i9=var1675, $r52=var748, $r13=var3213, $r14=var3078, $r47=var1984, $r53=var3292, $r7=var2141, $r8=var3029, $r9=var3826, $r10=var2552, $r11=var3867}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r1 := @parameter0: java.awt.image.BufferedImage;	r24 := @parameter1: int[][];	$r48 = new java.util.HashMap;	specialinvoke $r48.<java.util.HashMap: void <init>()>();	i0 = virtualinvoke r1.<java.awt.image.BufferedImage: int getWidth()>();	i1 = virtualinvoke r1.<java.awt.image.BufferedImage: int getHeight()>();	i2 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinX()>();	i3 = virtualinvoke r1.<java.awt.image.BufferedImage: int getMinY()>();	i18 = i2;	if i18 >= i0 goto r34 = null;	r34 = null;	l20 = 0L;	$r2 = interfaceinvoke $r48.<java.util.Map: java.util.Set entrySet()>();	r35 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r35.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	r39 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,char)>(r34, 45);	$r3 = r39[0];	$i4 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r3);	r40 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$r4 = r39[1];	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	r41 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r5 = r39[2];	$i6 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r5);	r42 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i6);	$i7 = virtualinvoke r40.<java.lang.String: int length()>();	if $i7 != 1 goto $r43 = r40;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r43 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r44 = $r43];	r44 = $r43;	$i8 = virtualinvoke r41.<java.lang.String: int length()>();	if $i8 != 1 goto $r45 = r41;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r45 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r46 = $r45];	r46 = $r45;	$i9 = virtualinvoke r42.<java.lang.String: int length()>();	if $i9 != 1 goto $r47 = r42;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r47 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r53 = new java.lang.StringBuilder];	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r46);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 11