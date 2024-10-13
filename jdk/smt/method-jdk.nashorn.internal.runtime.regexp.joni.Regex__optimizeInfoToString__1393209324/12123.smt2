(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var888 0)
(declare-sort var2051 0)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun searchAlgorithm/-1115059521 (var888) var2051)
(declare-fun getName/-1913531402 (var2051) String)
(declare-fun anchor/-1115059521 (var888) Int)
(declare-fun var1330_anchorToString/-1597686744 (Int) String)
(declare-fun dMin/-1115059521 (var888) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun dMax/-1115059521 (var888) Int)
(declare-fun thresholdLength/-1115059521 (var888) Int)
(declare-fun exact/-1115059521 (var888) (Array Int Int))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var888 var888)
(declare-const var2051-NONE var2051)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2051-MAP var2051)
(declare-const var1910 var888) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex 
(assert (not (= var1910 null-var888)))
(define-const var41 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var41)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var41!1 String)
(assert (= var41!1 ""))
(assert true)
(define-const var3466 String (append/672562846 var41!1 "optimize: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("optimize: ") 
(declare-const var41!2 String)
(assert (= var41!2 (str.++ var41!1 "optimize: ")))
(define-const var3886 var2051 (searchAlgorithm/-1115059521 var1910)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(assert true)
(define-const var636 String (getName/-1913531402 var3886)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: java.lang.String getName()>() 
(assert true)
(define-const var3289 String (append/672562846 var3466 var636)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3466!1 String)
(assert (= var3466!1 (str.++ var3466 var636)))
(assert true)
;(assert (append/672562846 var3289 "\n")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 "\n")))
(assert true)
(define-const var1448 String (append/672562846 var41!2 "  anchor:     ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  anchor:     ") 
(declare-const var41!3 String)
(assert (= var41!3 (str.++ var41!2 "  anchor:     ")))
(define-const var2060 Int (anchor/-1115059521 var1910)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor> 
(define-const var2092 String (var1330_anchorToString/-1597686744 var2060)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo: java.lang.String anchorToString(int)>($i0) 
(assert true)
;(assert (append/672562846 var1448 var2092)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1448!1 String)
(assert (= var1448!1 (str.++ var1448 var2092)))
(define-const var2798 Int (anchor/-1115059521 var1910)) ; Statement: $i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor> 
(define-const var2286 Int (bv2nat (bvand ((_ int2bv 64) var2798) ((_ int2bv 64) 24)))) ; Statement: $i2 = $i1 & 24 
 ; Statement: if $i2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (= var2286 0)) ; Cond: $i2 == 0 
(assert true)
;(assert (append/672562846 var41!3 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var41!4 String)
(assert (= var41!4 (str.++ var41!3 "\n")))
(define-const var1186 var2051 (searchAlgorithm/-1115059521 var1910)) ; Statement: $r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(define-const var3317 var2051 var2051-NONE) ; Statement: $r8 = <jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm NONE> 
 ; Statement: if $r9 == $r8 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ") 
(assert (= var1186 var3317)) ; Cond: $r9 == $r8 
(assert true)
(define-const var2355 String (append/672562846 var41!4 "dmin: ")) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ") 
(declare-const var41!5 String)
(assert (= var41!5 (str.++ var41!4 "dmin: ")))
(define-const var2080 Int (dMin/-1115059521 var1910)) ; Statement: $i3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMin> 
(assert true)
(define-const var624 String (append/-1001720160 var2355 var2080)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2355!1 String)
(assert (str.prefixof var2355 var2355!1))
(assert true)
(define-const var2512 String (append/672562846 var624 " dmax: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" dmax: ") 
(declare-const var624!1 String)
(assert (= var624!1 (str.++ var624 " dmax: ")))
(define-const var709 Int (dMax/-1115059521 var1910)) ; Statement: $i4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMax> 
(assert true)
(define-const var2899 String (append/-1001720160 var2512 var709)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2512!1 String)
(assert (str.prefixof var2512 var2512!1))
(assert true)
;(assert (append/672562846 var2899 "\n")) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2899!1 String)
(assert (= var2899!1 (str.++ var2899 "\n")))
(assert true)
(define-const var1403 String (append/672562846 var41!5 "threshold length: ")) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("threshold length: ") 
(declare-const var41!6 String)
(assert (= var41!6 (str.++ var41!5 "threshold length: ")))
(define-const var3418 Int (thresholdLength/-1115059521 var1910)) ; Statement: $i5 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int thresholdLength> 
(assert true)
(define-const var1657 String (append/-1001720160 var1403 var3418)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1403!1 String)
(assert (str.prefixof var1403 var1403!1))
(assert true)
;(assert (append/672562846 var1657 "\n")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1657!1 String)
(assert (= var1657!1 (str.++ var1657 "\n")))
(define-const var882 (Array Int Int) (exact/-1115059521 var1910)) ; Statement: $r16 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: char[] exact> 
 ; Statement: if $r16 == null goto $r18 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(assert (= var882 null-__Array__Int__Int__)) ; Cond: $r16 == null 
(define-const var3221 var2051 (searchAlgorithm/-1115059521 var1910)) ; Statement: $r18 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm> 
(define-const var637 var2051 var2051-MAP) ; Statement: $r17 = <jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm MAP> 
 ; Statement: if $r18 != $r17 goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var3221 var637))) ; Cond: $r18 != $r17 
(assert true)
(define-const var3387 String (toString/-2075883882 var41!6)) ; Statement: $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), searchAlgorithm/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm), getName/-1913531402=([jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm], java.lang.String), anchor/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), var1330_anchorToString/-1597686744=([int], java.lang.String), dMin/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), dMax/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), thresholdLength/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], int), exact/-1115059521=([jdk.nashorn.internal.runtime.regexp.joni.Regex], char[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var888=jdk.nashorn.internal.runtime.regexp.joni.Regex, var1910=r1, var41=$r0, var3466=$r4, var2051=jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm, var3886=$r2, var636=$r3, var3289=$r5, var1448=$r7, var2060=$i0, var1330=jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo, var2092=$r6, var2798=$i1, var2286=$i2, var1186=$r9, var3317=$r8, var2355=$r10, var2080=$i3, var624=$r11, var2512=$r12, var709=$i4, var2899=$r13, var1403=$r14, var3418=$i5, var1657=$r15, var882=$r16, var3221=$r18, var637=$r17, var3387=$r32}
; {jdk.nashorn.internal.runtime.regexp.joni.Regex=var888, r1=var1910, $r0=var41, $r4=var3466, jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm=var2051, $r2=var3886, $r3=var636, $r5=var3289, $r7=var1448, $i0=var2060, jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo=var1330, $r6=var2092, $i1=var2798, $i2=var2286, $r9=var1186, $r8=var3317, $r10=var2355, $i3=var2080, $r11=var624, $r12=var2512, $i4=var709, $r13=var2899, $r14=var1403, $i5=var3418, $r15=var1657, $r16=var882, $r18=var3221, $r17=var637, $r32=var3387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("optimize: ");	$r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  anchor:     ");	$i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor>;	$r6 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.OptAnchorInfo: java.lang.String anchorToString(int)>($i0);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int anchor>;	$i2 = $i1 & 24;	if $i2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r8 = <jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm NONE>;	if $r9 == $r8 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ");	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dmin: ");	$i3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMin>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" dmax: ");	$i4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int dMax>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("threshold length: ");	$i5 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: int thresholdLength>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r16 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: char[] exact>;	if $r16 == null goto $r18 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r18 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Regex: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm searchAlgorithm>;	$r17 = <jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm: jdk.nashorn.internal.runtime.regexp.joni.SearchAlgorithm MAP>;	if $r18 != $r17 goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r32
;block_num 5