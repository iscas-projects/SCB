(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1060 0)
(declare-sort var799 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var799_addEscapes/-1481665758 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var667 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var667 null-Bool)))
(declare-const var3239 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3239 null-Int)))
(declare-const var1905 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1905 null-Int)))
(declare-const var2701 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2701 null-Int)))
(declare-const var2546 String) ; Statement: r12 := @parameter4: java.lang.String 
(assert (not (= var2546 null-String)))
(declare-const var3338 Int) ; Statement: c0 := @parameter5: char 
(assert (not (= var3338 null-Int)))
(define-const var781 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var781)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var781!1 String)
(assert (= var781!1 ""))
(assert true)
(define-const var3870 String (append/672562846 var781!1 "Lexical error: encountered ")) ; Statement: $r10 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error: encountered ") 
(declare-const var781!2 String)
(assert (= var781!2 (str.++ var781!1 "Lexical error: encountered ")))
 ; Statement: if z0 == 0 goto $r20 = new java.lang.StringBuilder 
(assert (= (ite var667 1 0) 0)) ; Cond: z0 == 0 
(define-const var2298 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2298)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2298!1 String)
(assert (= var2298!1 ""))
(assert true)
(define-const var3893 String (append/672562846 var2298!1 "\u0022")) ; Statement: $r4 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2298!2 String)
(assert (= var2298!2 (str.++ var2298!1 "\u0022")))
(define-const var1246 String (String_valueOf/-371898945 var3338)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(define-const var3547 String (var799_addEscapes/-1481665758 var1246)) ; Statement: $r3 = staticinvoke <freemarker.core.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r2) 
(assert true)
(define-const var2477 String (append/672562846 var3893 var3547)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3893!1 String)
(assert (= var3893!1 (str.++ var3893 var3547)))
(assert true)
(define-const var2449 String (append/672562846 var2477 "\u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2477!1 String)
(assert (= var2477!1 (str.++ var2477 "\u0022")))
(assert true)
(define-const var3317 String (append/672562846 var2449 " (")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2449!1 String)
(assert (= var2449!1 (str.++ var2449 " (")))
(define-const var3622 Int (cast-from-Int-to-Int var3338)) ; Statement: $i4 = (int) c0 
(assert true)
(define-const var1612 String (append/-1001720160 var3317 var3622)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3317!1 String)
(assert (str.prefixof var3317 var3317!1))
(assert true)
(define-const var2176 String (append/672562846 var1612 "), ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), ") 
(declare-const var1612!1 String)
(assert (= var1612!1 (str.++ var1612 "), ")))
(assert true)
(define-const var2642 String (toString/-2075883882 var2176)) ; Statement: $r18 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1782 String (append/672562846 var3870 var2642)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3870!1 String)
(assert (= var3870!1 (str.++ var3870 var2642)))
(assert true)
(define-const var1173 String (append/672562846 var1782 "after \u0022")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after \"") 
(declare-const var1782!1 String)
(assert (= var1782!1 (str.++ var1782 "after \u0022")))
(define-const var2545 String (var799_addEscapes/-1481665758 var2546)) ; Statement: $r13 = staticinvoke <freemarker.core.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r12) 
(assert true)
(define-const var1759 String (append/672562846 var1173 var2545)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1173!1 String)
(assert (= var1173!1 (str.++ var1173 var2545)))
(assert true)
(define-const var2665 String (append/672562846 var1759 "\u0022.")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var1759!1 String)
(assert (= var1759!1 (str.++ var1759 "\u0022.")))
(assert true)
(define-const var3095 String (toString/-2075883882 var2665)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var799_addEscapes/-1481665758=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([char], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var667=z0, var3239=i1, var1905=i2, var2701=i3, var2546=r12, var1060=null_type, var3338=c0, var781=$r19, var3870=$r10, var2298=$r20, var3893=$r4, var1246=$r2, var799=freemarker.core.TokenMgrError, var3547=$r3, var2477=$r5, var2449=$r6, var3317=$r7, var3622=$i4, var1612=$r8, var2176=$r9, var2642=$r18, var1782=$r11, var1173=$r14, var2545=$r13, var1759=$r15, var2665=$r16, var3095=$r17}
; {z0=var667, i1=var3239, i2=var1905, i3=var2701, r12=var2546, null_type=var1060, c0=var3338, $r19=var781, $r10=var3870, $r20=var2298, $r4=var3893, $r2=var1246, freemarker.core.TokenMgrError=var799, $r3=var3547, $r5=var2477, $r6=var2449, $r7=var3317, $i4=var3622, $r8=var1612, $r9=var2176, $r18=var2642, $r11=var1782, $r14=var1173, $r13=var2545, $r15=var1759, $r16=var2665, $r17=var3095}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts z0 := @parameter0: boolean;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	r12 := @parameter4: java.lang.String;	c0 := @parameter5: char;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error: encountered ");	if z0 == 0 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r3 = staticinvoke <freemarker.core.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$i4 = (int) c0;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), ");	$r18 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after \"");	$r13 = staticinvoke <freemarker.core.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3