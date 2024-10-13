(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1501 0)
(declare-sort var1441 0)
(declare-sort var3013 0)
(declare-sort var534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getWidth/-156802475 (var1501) Int)
(declare-fun getHeight/-2127535592 (var1501) Int)
(declare-fun var3013_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var534_isNotBlank/-658997806 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1501 var1501)
(declare-const null-Int Int)
(declare-const null-var1441 var1441)
(declare-const var764 var1501) ; Statement: r1 := @parameter0: com.google.zxing.common.BitMatrix 
(assert (not (= var764 null-var1501)))
(declare-const var2384 Int) ; Statement: r10 := @parameter1: java.lang.Integer 
(assert (not (= var2384 null-Int)))
(declare-const var474 Int) ; Statement: r3 := @parameter2: java.lang.Integer 
(assert (not (= var474 null-Int)))
(declare-const var192 var1441) ; Statement: r2 := @parameter3: java.awt.Image 
(assert (not (= var192 null-var1441)))
(declare-const var3892 Int) ; Statement: i12 := @parameter4: int 
(assert (not (= var3892 null-Int)))
(define-const var1952 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1952)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1952!1 String)
(assert (= var1952!1 ""))
(assert true)
(define-const var2589 Int (getWidth/-156802475 var764)) ; Statement: i0 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getWidth()>() 
(assert true)
(define-const var2986 Int (getHeight/-2127535592 var764)) ; Statement: i21 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getHeight()>() 
 ; Statement: if i21 != 1 goto $i22 = 1 
(assert (not (not (= var2986 1)))) ; Negate: Cond: i21 != 1  
(define-const var1188 Int (div var2589 2)) ; Statement: $i22 = i0 / 2 
 ; Statement: goto [?= i1 = $i22] 
(assert true) ; Non Conditional
(define-const var1316 Int var1188) ; Statement: i1 = $i22 
(define-const var1437 Int 0) ; Statement: i23 = 0 
(assert true) ; Non Conditional
 ; Statement: if i23 >= i21 goto i25 = i21 * i1 
(assert (>= var1437 var2986)) ; Cond: i23 >= i21 
(define-const var2758 Int (* var2986 var1316)) ; Statement: i25 = i21 * i1 
(define-const var3146 String "") ; Statement: r46 = "" 
(define-const var2588 Int 0) ; Statement: i26 = 0 
(define-const var1243 Int 0) ; Statement: i27 = 0 
(define-const var1066 Int 0) ; Statement: i28 = 0 
(define-const var2419 Int 0) ; Statement: i29 = 0 
 ; Statement: if r2 == null goto $r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert (= var192 null-var1441)) ; Cond: r2 == null 
(define-const var159 String var3013_builder/-311177978) ; Statement: $r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var957 String (append/672562846 var159 "<svg width=\u0022")) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<svg width=\"") 
(declare-const var159!1 String)
(assert (= var159!1 (str.++ var159 "<svg width=\u0022")))
(assert true)
(define-const var2432 String (append/-1001720160 var957 var2589)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var957!1 String)
(assert (str.prefixof var957 var957!1))
(assert true)
(define-const var1909 String (append/672562846 var2432 "\u0022 height=\u0022")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" height=\"") 
(declare-const var2432!1 String)
(assert (= var2432!1 (str.++ var2432 "\u0022 height=\u0022")))
(assert true)
(define-const var3830 String (append/-1001720160 var1909 var2758)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25) 
(declare-const var1909!1 String)
(assert (str.prefixof var1909 var1909!1))
(assert true)
;(assert (append/672562846 var3830 "\u0022 \n")) ; Statement: virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n") 
(declare-const var3830!1 String)
(assert (= var3830!1 (str.++ var3830 "\u0022 \n")))
 ; Statement: if r3 == null goto $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ") 
(assert (= var474 null-Int)) ; Cond: r3 == null 
(assert true)
(define-const var2913 String (append/672562846 var159!1 "viewBox=\u00220 0 ")) ; Statement: $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ") 
(declare-const var159!2 String)
(assert (= var159!2 (str.++ var159!1 "viewBox=\u00220 0 ")))
(assert true)
(define-const var3746 String (append/-1001720160 var2913 var2589)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2913!1 String)
(assert (str.prefixof var2913 var2913!1))
(assert true)
(define-const var1233 String (append/672562846 var3746 " ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 " ")))
(assert true)
(define-const var272 String (append/-1001720160 var1233 var2758)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25) 
(declare-const var1233!1 String)
(assert (str.prefixof var1233 var1233!1))
(assert true)
;(assert (append/672562846 var272 "\u0022 \n")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n") 
(declare-const var272!1 String)
(assert (= var272!1 (str.++ var272 "\u0022 \n")))
(assert true)
;(assert (append/672562846 var159!2 "xmlns=\u0022http://www.w3.org/2000/svg\u0022 \n")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns=\"http://www.w3.org/2000/svg\" \n") 
(declare-const var159!3 String)
(assert (= var159!3 (str.++ var159!2 "xmlns=\u0022http://www.w3.org/2000/svg\u0022 \n")))
(assert true)
;(assert (append/672562846 var159!3 "xmlns:xlink=\u0022http://www.w3.org/1999/xlink\u0022 >\n")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns:xlink=\"http://www.w3.org/1999/xlink\" >\n") 
(declare-const var159!4 String)
(assert (= var159!4 (str.++ var159!3 "xmlns:xlink=\u0022http://www.w3.org/1999/xlink\u0022 >\n")))
(assert true)
(define-const var2797 String (append/672562846 var159!4 "<path d=\u0022")) ; Statement: $r8 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<path d=\"") 
(declare-const var159!5 String)
(assert (= var159!5 (str.++ var159!4 "<path d=\u0022")))
(assert true)
(define-const var3091 String (append/-13659068 var2797 (cast-from-String-to-String var1952!1))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0) 
(declare-const var2797!1 String)
(assert (str.prefixof var2797 var2797!1))
(assert true)
;(assert (append/672562846 var3091 "\u0022 ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ") 
(declare-const var3091!1 String)
(assert (= var3091!1 (str.++ var3091 "\u0022 ")))
 ; Statement: if r10 == null goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n") 
(assert (= var2384 null-Int)) ; Cond: r10 == null 
(assert true)
;(assert (append/672562846 var159!5 " /> \n")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n") 
(declare-const var159!6 String)
(assert (= var159!6 (str.++ var159!5 " /> \n")))
(define-const var1067 Bool (var534_isNotBlank/-658997806 (cast-from-String-to-String var3146))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r46) 
 ; Statement: if $z0 == 0 goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>") 
(assert (= (ite var1067 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var159!6 "</svg>")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>") 
(declare-const var159!7 String)
(assert (= var159!7 (str.++ var159!6 "</svg>")))
(assert true)
(define-const var2068 String (toString/-2075883882 var159!7)) ; Statement: $r11 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getWidth/-156802475=([com.google.zxing.common.BitMatrix], int), getHeight/-2127535592=([com.google.zxing.common.BitMatrix], int), var3013_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), var534_isNotBlank/-658997806=([java.lang.CharSequence], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1501=com.google.zxing.common.BitMatrix, var764=r1, var2384=r10, var474=r3, var1441=java.awt.Image, var192=r2, var3892=i12, var1952=$r0, var2589=i0, var2986=i21, var1188=$i22, var1316=i1, var1437=i23, var2758=i25, var3146=r46, var2588=i26, var1243=i27, var1066=i28, var2419=i29, var3013=cn.hutool.core.util.StrUtil, var159=$r47, var957=$r48, var2432=$r49, var1909=$r50, var3830=$r51, var2913=$r4, var3746=$r5, var1233=$r6, var272=$r7, var2797=$r8, var3091=$r9, var534=cn.hutool.core.text.CharSequenceUtil, var1067=$z0, var2068=$r11}
; {com.google.zxing.common.BitMatrix=var1501, r1=var764, r10=var2384, r3=var474, java.awt.Image=var1441, r2=var192, i12=var3892, $r0=var1952, i0=var2589, i21=var2986, $i22=var1188, i1=var1316, i23=var1437, i25=var2758, r46=var3146, i26=var2588, i27=var1243, i28=var1066, i29=var2419, cn.hutool.core.util.StrUtil=var3013, $r47=var159, $r48=var957, $r49=var2432, $r50=var1909, $r51=var3830, $r4=var2913, $r5=var3746, $r6=var1233, $r7=var272, $r8=var2797, $r9=var3091, cn.hutool.core.text.CharSequenceUtil=var534, $z0=var1067, $r11=var2068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.zxing.common.BitMatrix;	r10 := @parameter1: java.lang.Integer;	r3 := @parameter2: java.lang.Integer;	r2 := @parameter3: java.awt.Image;	i12 := @parameter4: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getWidth()>();	i21 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getHeight()>();	if i21 != 1 goto $i22 = 1;	$i22 = i0 / 2;	goto [?= i1 = $i22];	i1 = $i22;	i23 = 0;	if i23 >= i21 goto i25 = i21 * i1;	i25 = i21 * i1;	r46 = "";	i26 = 0;	i27 = 0;	i28 = 0;	i29 = 0;	if r2 == null goto $r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<svg width=\"");	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" height=\"");	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25);	virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n");	if r3 == null goto $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ");	$r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns=\"http://www.w3.org/2000/svg\" \n");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns:xlink=\"http://www.w3.org/1999/xlink\" >\n");	$r8 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<path d=\"");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ");	if r10 == null goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n");	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r46);	if $z0 == 0 goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>");	$r11 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 9