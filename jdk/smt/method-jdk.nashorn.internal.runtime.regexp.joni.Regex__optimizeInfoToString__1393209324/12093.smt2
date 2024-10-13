(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var2772 0)
(declare-sort var2192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun searchAlgorithm/-1115059521 (var574) var2772)
(declare-fun getName/-1913531402 (var2772) String)
(declare-fun anchor/-1115059521 (var574) Int)
(declare-fun var2192_anchorToString/-1597686744 (Int) String)
(declare-fun dMin/-1115059521 (var574) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun dMax/-1115059521 (var574) Int)
(declare-fun thresholdLength/-1115059521 (var574) Int)
(declare-fun exact/-1115059521 (var574) (Array Int Int))
(declare-fun exactP/-1115059521 (var574) Int)
(declare-fun exactEnd/-1115059521 (var574) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var574 var574)
(declare-const var2772-NONE var2772)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var840 var574) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex 
(assert (not (= var840 null-var574)))
(define-const var2849 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2849)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2849!1 String)
(assert (= var2849!1 ""))
(assert true)
(define-const var2654 String (append/672562846 var2849!1 "optimize: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("optimize: ") 
(declare-const var2849!2 String)
(assert (= var2849!2 (str.++ var2849!1 "optimize: ")))
(define-const var2923 var2772 (searchAlgorithm/-1115059521 var840)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(assert true)
(define-const var3164 String (getName/-1913531402 var2923)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: java.lang.String getName()>() 
(assert true)
(define-const var575 String (append/672562846 var2654 var3164)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2654!1 String)
(assert (= var2654!1 (str.++ var2654 var3164)))
(assert true)
;(assert (append/672562846 var575 "\n")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var575!1 String)
(assert (= var575!1 (str.++ var575 "\n")))
(assert true)
(define-const var1809 String (append/672562846 var2849!2 "  anchor:     ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  anchor:     ") 
(declare-const var2849!3 String)
(assert (= var2849!3 (str.++ var2849!2 "  anchor:     ")))
(define-const var2430 Int (anchor/-1115059521 var840)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor> 
(define-const var1049 String (var2192_anchorToString/-1597686744 var2430)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo: java.lang.String anchorToString(int)>($i0) 
(assert true)
;(assert (append/672562846 var1809 var1049)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1809!1 String)
(assert (= var1809!1 (str.++ var1809 var1049)))
(define-const var466 Int (anchor/-1115059521 var840)) ; Statement: $i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor> 
(define-const var1350 Int (bv2nat (bvand ((_ int2bv 64) var466) ((_ int2bv 64) 24)))) ; Statement: $i2 = $i1 & 24 
 ; Statement: if $i2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (= var1350 0)) ; Cond: $i2 == 0 
(assert true)
;(assert (append/672562846 var2849!3 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2849!4 String)
(assert (= var2849!4 (str.++ var2849!3 "\n")))
(define-const var2385 var2772 (searchAlgorithm/-1115059521 var840)) ; Statement: $r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(define-const var1487 var2772 var2772-NONE) ; Statement: $r8 = <jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm NONE> 
 ; Statement: if $r9 == $r8 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ") 
(assert (= var2385 var1487)) ; Cond: $r9 == $r8 
(assert true)
(define-const var739 String (append/672562846 var2849!4 "dmin: ")) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ") 
(declare-const var2849!5 String)
(assert (= var2849!5 (str.++ var2849!4 "dmin: ")))
(define-const var3621 Int (dMin/-1115059521 var840)) ; Statement: $i3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMin> 
(assert true)
(define-const var3814 String (append/-1001720160 var739 var3621)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var739!1 String)
(assert (str.prefixof var739 var739!1))
(assert true)
(define-const var1081 String (append/672562846 var3814 " dmax: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" dmax: ") 
(declare-const var3814!1 String)
(assert (= var3814!1 (str.++ var3814 " dmax: ")))
(define-const var3759 Int (dMax/-1115059521 var840)) ; Statement: $i4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMax> 
(assert true)
(define-const var3818 String (append/-1001720160 var1081 var3759)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1081!1 String)
(assert (str.prefixof var1081 var1081!1))
(assert true)
;(assert (append/672562846 var3818 "\n")) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3818!1 String)
(assert (= var3818!1 (str.++ var3818 "\n")))
(assert true)
(define-const var813 String (append/672562846 var2849!5 "threshold length: ")) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("threshold length: ") 
(declare-const var2849!6 String)
(assert (= var2849!6 (str.++ var2849!5 "threshold length: ")))
(define-const var1147 Int (thresholdLength/-1115059521 var840)) ; Statement: $i5 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int thresholdLength> 
(assert true)
(define-const var1543 String (append/-1001720160 var813 var1147)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var813!1 String)
(assert (str.prefixof var813 var813!1))
(assert true)
;(assert (append/672562846 var1543 "\n")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1543!1 String)
(assert (= var1543!1 (str.++ var1543 "\n")))
(define-const var3379 (Array Int Int) (exact/-1115059521 var840)) ; Statement: $r16 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: char[] exact> 
 ; Statement: if $r16 == null goto $r18 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(assert (not (= var3379 null-__Array__Int__Int__))) ; Negate: Cond: $r16 == null  
(assert true)
(define-const var1920 String (append/672562846 var2849!6 "exact: [")) ; Statement: $r24 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exact: [") 
(declare-const var2849!7 String)
(assert (= var2849!7 (str.++ var2849!6 "exact: [")))
(define-const var3358 (Array Int Int) (exact/-1115059521 var840)) ; Statement: $r23 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: char[] exact> 
(define-const var2843 Int (exactP/-1115059521 var840)) ; Statement: $i12 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactP> 
(define-const var3133 Int (exactEnd/-1115059521 var840)) ; Statement: $i10 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactEnd> 
(define-const var3048 Int (exactP/-1115059521 var840)) ; Statement: $i9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactP> 
(define-const var1391 Int (- var3133 var3048)) ; Statement: $i11 = $i10 - $i9 
(assert true)
(define-const var954 String (append/-1748486345 var1920 var3358 var2843 var1391)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r23, $i12, $i11) 
(declare-const var1920!1 String)
(assert (str.prefixof var1920 var1920!1))
(assert true)
(define-const var1940 String (append/672562846 var954 "]: length: ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: length: ") 
(declare-const var954!1 String)
(assert (= var954!1 (str.++ var954 "]: length: ")))
(define-const var2484 Int (exactEnd/-1115059521 var840)) ; Statement: $i14 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactEnd> 
(define-const var2109 Int (exactP/-1115059521 var840)) ; Statement: $i13 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactP> 
(define-const var123 Int (- var2484 var2109)) ; Statement: $i15 = $i14 - $i13 
(assert true)
(define-const var399 String (append/-1001720160 var1940 var123)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i15) 
(declare-const var1940!1 String)
(assert (str.prefixof var1940 var1940!1))
(assert true)
;(assert (append/672562846 var399 "\n")) ; Statement: virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var399!1 String)
(assert (= var399!1 (str.++ var399 "\n")))
 ; Statement: goto [?= $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2151 String (toString/-2075883882 var2849!7)) ; Statement: $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), searchAlgorithm/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm), getName/-1913531402=([jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm], java.lang.String), anchor/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), var2192_anchorToString/-1597686744=([int], java.lang.String), dMin/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), dMax/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), thresholdLength/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), exact/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], char[]), exactP/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), exactEnd/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var574=jdk.nashorn.internal.runtime.regexp.joni.Regex, var840=r1, var2849=$r0, var2654=$r4, var2772=jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm, var2923=$r2, var3164=$r3, var575=$r5, var1809=$r7, var2430=$i0, var2192=jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo, var1049=$r6, var466=$i1, var1350=$i2, var2385=$r9, var1487=$r8, var739=$r10, var3621=$i3, var3814=$r11, var1081=$r12, var3759=$i4, var3818=$r13, var813=$r14, var1147=$i5, var1543=$r15, var3379=$r16, var1920=$r24, var3358=$r23, var2843=$i12, var3133=$i10, var3048=$i9, var1391=$i11, var954=$r25, var1940=$r26, var2484=$i14, var2109=$i13, var123=$i15, var399=$r27, var2151=$r32}
; {jdk.nashorn.internal.runtime.regexp.joni.Regex=var574, r1=var840, $r0=var2849, $r4=var2654, jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm=var2772, $r2=var2923, $r3=var3164, $r5=var575, $r7=var1809, $i0=var2430, jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo=var2192, $r6=var1049, $i1=var466, $i2=var1350, $r9=var2385, $r8=var1487, $r10=var739, $i3=var3621, $r11=var3814, $r12=var1081, $i4=var3759, $r13=var3818, $r14=var813, $i5=var1147, $r15=var1543, $r16=var3379, $r24=var1920, $r23=var3358, $i12=var2843, $i10=var3133, $i9=var3048, $i11=var1391, $r25=var954, $r26=var1940, $i14=var2484, $i13=var2109, $i15=var123, $r27=var399, $r32=var2151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 14,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("optimize: ");	$r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  anchor:     ");	$i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor>;	$r6 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo: java.lang.String anchorToString(int)>($i0);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor>;	$i2 = $i1 & 24;	if $i2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r8 = <jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm NONE>;	if $r9 == $r8 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ");	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ");	$i3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMin>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" dmax: ");	$i4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMax>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("threshold length: ");	$i5 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int thresholdLength>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r16 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: char[] exact>;	if $r16 == null goto $r18 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r24 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exact: [");	$r23 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: char[] exact>;	$i12 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactP>;	$i10 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactEnd>;	$i9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactP>;	$i11 = $i10 - $i9;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r23, $i12, $i11);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: length: ");	$i14 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactEnd>;	$i13 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int exactP>;	$i15 = $i14 - $i13;	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i15);	virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	goto [?= $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r32
;block_num 5