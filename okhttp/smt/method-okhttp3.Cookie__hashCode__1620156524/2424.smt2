(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var496 0)
(declare-sort var3840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1926344963 (var496) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun value/1926344963 (var496) String)
(declare-fun expiresAt/1926344963 (var496) Int)
(declare-fun Int_hashCode/899106235 (Int) Int)
(declare-fun domain/1926344963 (var496) String)
(declare-fun path/1926344963 (var496) String)
(declare-fun secure/1926344963 (var496) Bool)
(declare-fun var3840_hashCode/-2068759393 (Bool) Int)
(declare-fun httpOnly/1926344963 (var496) Bool)
(declare-fun persistent/1926344963 (var496) Bool)
(declare-fun hostOnly/1926344963 (var496) Bool)
(declare-const null-var496 var496)
(declare-const var2593 var496) ; Statement: r0 := @this: okhttp3.Cookie 
(assert (not (= var2593 null-var496)))
(define-const var2205 String (name/1926344963 var2593)) ; Statement: $r1 = r0.<okhttp3.Cookie: java.lang.String name> 
(assert true)
(define-const var2757 Int (hashCode/-467973558 var2205)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1023 Int (+ 527 var2757)) ; Statement: i18 = 527 + $i0 
(define-const var2738 Int (* 31 var1023)) ; Statement: $i2 = 31 * i18 
(define-const var2413 String (value/1926344963 var2593)) ; Statement: $r2 = r0.<okhttp3.Cookie: java.lang.String value> 
(assert true)
(define-const var3974 Int (hashCode/-467973558 var2413)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3797 Int (+ var2738 var3974)) ; Statement: i19 = $i2 + $i1 
(define-const var891 Int (* 31 var3797)) ; Statement: $i5 = 31 * i19 
(define-const var479 Int (expiresAt/1926344963 var2593)) ; Statement: $l3 = r0.<okhttp3.Cookie: long expiresAt> 
(define-const var3743 Int (Int_hashCode/899106235 var479)) ; Statement: $i4 = staticinvoke <java.lang.Long: int hashCode(long)>($l3) 
(define-const var2956 Int (+ var891 var3743)) ; Statement: i20 = $i5 + $i4 
(define-const var2168 Int (* 31 var2956)) ; Statement: $i7 = 31 * i20 
(define-const var2655 String (domain/1926344963 var2593)) ; Statement: $r3 = r0.<okhttp3.Cookie: java.lang.String domain> 
(assert true)
(define-const var2670 Int (hashCode/-467973558 var2655)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1027 Int (+ var2168 var2670)) ; Statement: i21 = $i7 + $i6 
(define-const var3563 Int (* 31 var1027)) ; Statement: $i9 = 31 * i21 
(define-const var2883 String (path/1926344963 var2593)) ; Statement: $r4 = r0.<okhttp3.Cookie: java.lang.String path> 
(assert true)
(define-const var1429 Int (hashCode/-467973558 var2883)) ; Statement: $i8 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var537 Int (+ var3563 var1429)) ; Statement: i22 = $i9 + $i8 
(define-const var3499 Int (* 31 var537)) ; Statement: $i11 = 31 * i22 
(define-const var2752 Bool (secure/1926344963 var2593)) ; Statement: $z0 = r0.<okhttp3.Cookie: boolean secure> 
(define-const var664 Int (var3840_hashCode/-2068759393 var2752)) ; Statement: $i10 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z0) 
(define-const var1852 Int (+ var3499 var664)) ; Statement: i23 = $i11 + $i10 
(define-const var3159 Int (* 31 var1852)) ; Statement: $i13 = 31 * i23 
(define-const var3226 Bool (httpOnly/1926344963 var2593)) ; Statement: $z1 = r0.<okhttp3.Cookie: boolean httpOnly> 
(define-const var738 Int (var3840_hashCode/-2068759393 var3226)) ; Statement: $i12 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z1) 
(define-const var791 Int (+ var3159 var738)) ; Statement: i24 = $i13 + $i12 
(define-const var3479 Int (* 31 var791)) ; Statement: $i15 = 31 * i24 
(define-const var657 Bool (persistent/1926344963 var2593)) ; Statement: $z2 = r0.<okhttp3.Cookie: boolean persistent> 
(define-const var1496 Int (var3840_hashCode/-2068759393 var657)) ; Statement: $i14 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z2) 
(define-const var1602 Int (+ var3479 var1496)) ; Statement: i25 = $i15 + $i14 
(define-const var3297 Int (* 31 var1602)) ; Statement: $i17 = 31 * i25 
(define-const var2714 Bool (hostOnly/1926344963 var2593)) ; Statement: $z3 = r0.<okhttp3.Cookie: boolean hostOnly> 
(define-const var2887 Int (var3840_hashCode/-2068759393 var2714)) ; Statement: $i16 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z3) 
(define-const var3048 Int (+ var3297 var2887)) ; Statement: i26 = $i17 + $i16 
 ; Statement: return i26 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1926344963=([okhttp3.Cookie], java.lang.String), hashCode/-467973558=([java.lang.String], int), value/1926344963=([okhttp3.Cookie], java.lang.String), expiresAt/1926344963=([okhttp3.Cookie], long), Int_hashCode/899106235=([long], int), domain/1926344963=([okhttp3.Cookie], java.lang.String), path/1926344963=([okhttp3.Cookie], java.lang.String), secure/1926344963=([okhttp3.Cookie], boolean), var3840_hashCode/-2068759393=([boolean], int), httpOnly/1926344963=([okhttp3.Cookie], boolean), persistent/1926344963=([okhttp3.Cookie], boolean), hostOnly/1926344963=([okhttp3.Cookie], boolean)}
; {var496=okhttp3.Cookie, var2593=r0, var2205=$r1, var2757=$i0, var1023=i18, var2738=$i2, var2413=$r2, var3974=$i1, var3797=i19, var891=$i5, var479=$l3, var3743=$i4, var2956=i20, var2168=$i7, var2655=$r3, var2670=$i6, var1027=i21, var3563=$i9, var2883=$r4, var1429=$i8, var537=i22, var3499=$i11, var2752=$z0, var3840=java.lang.Boolean, var664=$i10, var1852=i23, var3159=$i13, var3226=$z1, var738=$i12, var791=i24, var3479=$i15, var657=$z2, var1496=$i14, var1602=i25, var3297=$i17, var2714=$z3, var2887=$i16, var3048=i26}
; {okhttp3.Cookie=var496, r0=var2593, $r1=var2205, $i0=var2757, i18=var1023, $i2=var2738, $r2=var2413, $i1=var3974, i19=var3797, $i5=var891, $l3=var479, $i4=var3743, i20=var2956, $i7=var2168, $r3=var2655, $i6=var2670, i21=var1027, $i9=var3563, $r4=var2883, $i8=var1429, i22=var537, $i11=var3499, $z0=var2752, java.lang.Boolean=var3840, $i10=var664, i23=var1852, $i13=var3159, $z1=var3226, $i12=var738, i24=var791, $i15=var3479, $z2=var657, $i14=var1496, i25=var1602, $i17=var3297, $z3=var2714, $i16=var2887, i26=var3048}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: okhttp3.Cookie;	$r1 = r0.<okhttp3.Cookie: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i18 = 527 + $i0;	$i2 = 31 * i18;	$r2 = r0.<okhttp3.Cookie: java.lang.String value>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i19 = $i2 + $i1;	$i5 = 31 * i19;	$l3 = r0.<okhttp3.Cookie: long expiresAt>;	$i4 = staticinvoke <java.lang.Long: int hashCode(long)>($l3);	i20 = $i5 + $i4;	$i7 = 31 * i20;	$r3 = r0.<okhttp3.Cookie: java.lang.String domain>;	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i21 = $i7 + $i6;	$i9 = 31 * i21;	$r4 = r0.<okhttp3.Cookie: java.lang.String path>;	$i8 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	i22 = $i9 + $i8;	$i11 = 31 * i22;	$z0 = r0.<okhttp3.Cookie: boolean secure>;	$i10 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z0);	i23 = $i11 + $i10;	$i13 = 31 * i23;	$z1 = r0.<okhttp3.Cookie: boolean httpOnly>;	$i12 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z1);	i24 = $i13 + $i12;	$i15 = 31 * i24;	$z2 = r0.<okhttp3.Cookie: boolean persistent>;	$i14 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z2);	i25 = $i15 + $i14;	$i17 = 31 * i25;	$z3 = r0.<okhttp3.Cookie: boolean hostOnly>;	$i16 = staticinvoke <java.lang.Boolean: int hashCode(boolean)>($z3);	i26 = $i17 + $i16;	return i26
;block_num 1