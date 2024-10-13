(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2145 0)
(declare-sort var91 0)
(declare-sort var3741 0)
(declare-sort var1157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getWidth/-156802475 (var2145) Int)
(declare-fun getHeight/-2127535592 (var2145) Int)
(declare-fun var3741_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1157_isNotBlank/-658997806 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2145 var2145)
(declare-const null-Int Int)
(declare-const null-var91 var91)
(declare-const var1815 var2145) ; Statement: r1 := @parameter0: com.google.zxing.common.BitMatrix 
(assert (not (= var1815 null-var2145)))
(declare-const var286 Int) ; Statement: r10 := @parameter1: java.lang.Integer 
(assert (not (= var286 null-Int)))
(declare-const var530 Int) ; Statement: r3 := @parameter2: java.lang.Integer 
(assert (not (= var530 null-Int)))
(declare-const var3688 var91) ; Statement: r2 := @parameter3: java.awt.Image 
(assert (not (= var3688 null-var91)))
(declare-const var149 Int) ; Statement: i12 := @parameter4: int 
(assert (not (= var149 null-Int)))
(define-const var1762 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1762)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1762!1 String)
(assert (= var1762!1 ""))
(assert true)
(define-const var141 Int (getWidth/-156802475 var1815)) ; Statement: i0 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getWidth()>() 
(assert true)
(define-const var3211 Int (getHeight/-2127535592 var1815)) ; Statement: i21 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getHeight()>() 
 ; Statement: if i21 != 1 goto $i22 = 1 
(assert (not (= var3211 1))) ; Cond: i21 != 1 
(define-const var3454 Int 1) ; Statement: $i22 = 1 
(assert true) ; Non Conditional
(define-const var2167 Int var3454) ; Statement: i1 = $i22 
(define-const var2721 Int 0) ; Statement: i23 = 0 
(assert true) ; Non Conditional
 ; Statement: if i23 >= i21 goto i25 = i21 * i1 
(assert (>= var2721 var3211)) ; Cond: i23 >= i21 
(define-const var3303 Int (* var3211 var2167)) ; Statement: i25 = i21 * i1 
(define-const var725 String "") ; Statement: r46 = "" 
(define-const var2884 Int 0) ; Statement: i26 = 0 
(define-const var72 Int 0) ; Statement: i27 = 0 
(define-const var2066 Int 0) ; Statement: i28 = 0 
(define-const var923 Int 0) ; Statement: i29 = 0 
 ; Statement: if r2 == null goto $r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert (= var3688 null-var91)) ; Cond: r2 == null 
(define-const var1058 String var3741_builder/-311177978) ; Statement: $r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var3711 String (append/672562846 var1058 "<svg width=\u0022")) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<svg width=\"") 
(declare-const var1058!1 String)
(assert (= var1058!1 (str.++ var1058 "<svg width=\u0022")))
(assert true)
(define-const var2817 String (append/-1001720160 var3711 var141)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3711!1 String)
(assert (str.prefixof var3711 var3711!1))
(assert true)
(define-const var1402 String (append/672562846 var2817 "\u0022 height=\u0022")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" height=\"") 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 "\u0022 height=\u0022")))
(assert true)
(define-const var2426 String (append/-1001720160 var1402 var3303)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25) 
(declare-const var1402!1 String)
(assert (str.prefixof var1402 var1402!1))
(assert true)
;(assert (append/672562846 var2426 "\u0022 \n")) ; Statement: virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n") 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 "\u0022 \n")))
 ; Statement: if r3 == null goto $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ") 
(assert (= var530 null-Int)) ; Cond: r3 == null 
(assert true)
(define-const var881 String (append/672562846 var1058!1 "viewBox=\u00220 0 ")) ; Statement: $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ") 
(declare-const var1058!2 String)
(assert (= var1058!2 (str.++ var1058!1 "viewBox=\u00220 0 ")))
(assert true)
(define-const var2204 String (append/-1001720160 var881 var141)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var881!1 String)
(assert (str.prefixof var881 var881!1))
(assert true)
(define-const var453 String (append/672562846 var2204 " ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2204!1 String)
(assert (= var2204!1 (str.++ var2204 " ")))
(assert true)
(define-const var3598 String (append/-1001720160 var453 var3303)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25) 
(declare-const var453!1 String)
(assert (str.prefixof var453 var453!1))
(assert true)
;(assert (append/672562846 var3598 "\u0022 \n")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n") 
(declare-const var3598!1 String)
(assert (= var3598!1 (str.++ var3598 "\u0022 \n")))
(assert true)
;(assert (append/672562846 var1058!2 "xmlns=\u0022http://www.w3.org/2000/svg\u0022 \n")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns=\"http://www.w3.org/2000/svg\" \n") 
(declare-const var1058!3 String)
(assert (= var1058!3 (str.++ var1058!2 "xmlns=\u0022http://www.w3.org/2000/svg\u0022 \n")))
(assert true)
;(assert (append/672562846 var1058!3 "xmlns:xlink=\u0022http://www.w3.org/1999/xlink\u0022 >\n")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns:xlink=\"http://www.w3.org/1999/xlink\" >\n") 
(declare-const var1058!4 String)
(assert (= var1058!4 (str.++ var1058!3 "xmlns:xlink=\u0022http://www.w3.org/1999/xlink\u0022 >\n")))
(assert true)
(define-const var868 String (append/672562846 var1058!4 "<path d=\u0022")) ; Statement: $r8 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<path d=\"") 
(declare-const var1058!5 String)
(assert (= var1058!5 (str.++ var1058!4 "<path d=\u0022")))
(assert true)
(define-const var1421 String (append/-13659068 var868 (cast-from-String-to-String var1762!1))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0) 
(declare-const var868!1 String)
(assert (str.prefixof var868 var868!1))
(assert true)
;(assert (append/672562846 var1421 "\u0022 ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ") 
(declare-const var1421!1 String)
(assert (= var1421!1 (str.++ var1421 "\u0022 ")))
 ; Statement: if r10 == null goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n") 
(assert (= var286 null-Int)) ; Cond: r10 == null 
(assert true)
;(assert (append/672562846 var1058!5 " /> \n")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n") 
(declare-const var1058!6 String)
(assert (= var1058!6 (str.++ var1058!5 " /> \n")))
(define-const var2646 Bool (var1157_isNotBlank/-658997806 (cast-from-String-to-String var725))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r46) 
 ; Statement: if $z0 == 0 goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>") 
(assert (= (ite var2646 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1058!6 "</svg>")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>") 
(declare-const var1058!7 String)
(assert (= var1058!7 (str.++ var1058!6 "</svg>")))
(assert true)
(define-const var1721 String (toString/-2075883882 var1058!7)) ; Statement: $r11 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getWidth/-156802475=([com.google.zxing.common.BitMatrix], int), getHeight/-2127535592=([com.google.zxing.common.BitMatrix], int), var3741_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), var1157_isNotBlank/-658997806=([java.lang.CharSequence], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2145=com.google.zxing.common.BitMatrix, var1815=r1, var286=r10, var530=r3, var91=java.awt.Image, var3688=r2, var149=i12, var1762=$r0, var141=i0, var3211=i21, var3454=$i22, var2167=i1, var2721=i23, var3303=i25, var725=r46, var2884=i26, var72=i27, var2066=i28, var923=i29, var3741=cn.hutool.core.util.StrUtil, var1058=$r47, var3711=$r48, var2817=$r49, var1402=$r50, var2426=$r51, var881=$r4, var2204=$r5, var453=$r6, var3598=$r7, var868=$r8, var1421=$r9, var1157=cn.hutool.core.text.CharSequenceUtil, var2646=$z0, var1721=$r11}
; {com.google.zxing.common.BitMatrix=var2145, r1=var1815, r10=var286, r3=var530, java.awt.Image=var91, r2=var3688, i12=var149, $r0=var1762, i0=var141, i21=var3211, $i22=var3454, i1=var2167, i23=var2721, i25=var3303, r46=var725, i26=var2884, i27=var72, i28=var2066, i29=var923, cn.hutool.core.util.StrUtil=var3741, $r47=var1058, $r48=var3711, $r49=var2817, $r50=var1402, $r51=var2426, $r4=var881, $r5=var2204, $r6=var453, $r7=var3598, $r8=var868, $r9=var1421, cn.hutool.core.text.CharSequenceUtil=var1157, $z0=var2646, $r11=var1721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.zxing.common.BitMatrix;	r10 := @parameter1: java.lang.Integer;	r3 := @parameter2: java.lang.Integer;	r2 := @parameter3: java.awt.Image;	i12 := @parameter4: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getWidth()>();	i21 = virtualinvoke r1.<com.google.zxing.common.BitMatrix: int getHeight()>();	if i21 != 1 goto $i22 = 1;	$i22 = 1;	i1 = $i22;	i23 = 0;	if i23 >= i21 goto i25 = i21 * i1;	i25 = i21 * i1;	r46 = "";	i26 = 0;	i27 = 0;	i28 = 0;	i29 = 0;	if r2 == null goto $r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r47 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<svg width=\"");	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" height=\"");	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25);	virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n");	if r3 == null goto $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ");	$r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("viewBox=\"0 0 ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i25);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" \n");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns=\"http://www.w3.org/2000/svg\" \n");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns:xlink=\"http://www.w3.org/1999/xlink\" >\n");	$r8 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<path d=\"");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" ");	if r10 == null goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" /> \n");	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r46);	if $z0 == 0 goto virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>");	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</svg>");	$r11 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 9