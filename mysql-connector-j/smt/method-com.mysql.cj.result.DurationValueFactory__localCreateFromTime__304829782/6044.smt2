(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1453 0)
(declare-sort var2731 0)
(declare-sort var2610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getHours/912341727 (var2731) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMinutes/999217871 (var2731) Int)
(declare-fun getSeconds/-438810321 (var2731) Int)
(declare-fun getNanos/-1259022417 (var2731) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2610_parse/463494465 (String) var2610)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1453 var1453)
(declare-const null-var2731 var2731)
(declare-const var2306 var1453) ; Statement: r13 := @this: com.mysql.cj.result.DurationValueFactory 
(assert (not (= var2306 null-var1453)))
(declare-const var2251 var2731) ; Statement: r1 := @parameter0: com.mysql.cj.protocol.InternalTime 
(assert (not (= var2251 null-var2731)))
(define-const var1535 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1535)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1535!1 String)
(assert (= var1535!1 ""))
(assert true)
(define-const var3222 Int (getHours/912341727 var2251)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
 ; Statement: if $i0 >= 0 goto $r14 = "PT" 
(assert (not (>= var3222 0))) ; Negate: Cond: $i0 >= 0  
(define-const var3310 String "-PT") ; Statement: $r14 = "-PT" 
 ; Statement: goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2493 String (append/672562846 var1535!1 var3310)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1535!2 String)
(assert (= var1535!2 (str.++ var1535!1 var3310)))
(assert true)
(define-const var3035 Int (getHours/912341727 var2251)) ; Statement: $i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
 ; Statement: if $i1 >= 0 goto $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
(assert (not (>= var3035 0))) ; Negate: Cond: $i1 >= 0  
(assert true)
(define-const var2 Int (getHours/912341727 var2251)) ; Statement: $i5 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
(define-const var67 Int (- var2)) ; Statement: $i6 = neg $i5 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1924 String (append/-1001720160 var2493 var67)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var2493!1 String)
(assert (str.prefixof var2493 var2493!1))
(assert true)
(define-const var3669 String (append/672562846 var1924 "H")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("H") 
(declare-const var1924!1 String)
(assert (= var1924!1 (str.++ var1924 "H")))
(assert true)
(define-const var3529 Int (getMinutes/999217871 var2251)) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getMinutes()>() 
(assert true)
(define-const var3420 String (append/-1001720160 var3669 var3529)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3669!1 String)
(assert (str.prefixof var3669 var3669!1))
(assert true)
(define-const var2618 String (append/672562846 var3420 "M")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("M") 
(declare-const var3420!1 String)
(assert (= var3420!1 (str.++ var3420 "M")))
(assert true)
(define-const var2923 Int (getSeconds/-438810321 var2251)) ; Statement: $i3 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getSeconds()>() 
(assert true)
(define-const var1100 String (append/-1001720160 var2618 var2923)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2618!1 String)
(assert (str.prefixof var2618 var2618!1))
(assert true)
(define-const var1962 String (append/672562846 var1100 ".")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1100!1 String)
(assert (= var1100!1 (str.++ var1100 ".")))
(assert true)
(define-const var1948 Int (getNanos/-1259022417 var2251)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getNanos()>() 
(assert true)
(define-const var2110 String (append/-1001720160 var1962 var1948)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1962!1 String)
(assert (str.prefixof var1962 var1962!1))
(assert true)
(define-const var3786 String (append/672562846 var2110 "S")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("S") 
(declare-const var2110!1 String)
(assert (= var2110!1 (str.++ var2110 "S")))
(assert true)
(define-const var3144 String (toString/-2075883882 var3786)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3277 var2610 (var2610_parse/463494465 (cast-from-String-to-String var3144))) ; Statement: $r11 = staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>($r12) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getHours/912341727=([com.mysql.cj.protocol.InternalTime], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMinutes/999217871=([com.mysql.cj.protocol.InternalTime], int), getSeconds/-438810321=([com.mysql.cj.protocol.InternalTime], int), getNanos/-1259022417=([com.mysql.cj.protocol.InternalTime], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2610_parse/463494465=([java.lang.CharSequence], java.time.Duration), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1453=com.mysql.cj.result.DurationValueFactory, var2306=r13, var2731=com.mysql.cj.protocol.InternalTime, var2251=r1, var1535=$r0, var3222=$i0, var3310=$r14, var2493=$r2, var3035=$i1, var2=$i5, var67=$i6, var1924=$r3, var3669=$r4, var3529=$i2, var3420=$r5, var2618=$r6, var2923=$i3, var1100=$r7, var1962=$r8, var1948=$i4, var2110=$r9, var3786=$r10, var3144=$r12, var2610=java.time.Duration, var3277=$r11}
; {com.mysql.cj.result.DurationValueFactory=var1453, r13=var2306, com.mysql.cj.protocol.InternalTime=var2731, r1=var2251, $r0=var1535, $i0=var3222, $r14=var3310, $r2=var2493, $i1=var3035, $i5=var2, $i6=var67, $r3=var1924, $r4=var3669, $i2=var3529, $r5=var3420, $r6=var2618, $i3=var2923, $r7=var1100, $r8=var1962, $i4=var1948, $r9=var2110, $r10=var3786, $r12=var3144, java.time.Duration=var2610, $r11=var3277}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.mysql.cj.result.DurationValueFactory;	r1 := @parameter0: com.mysql.cj.protocol.InternalTime;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	if $i0 >= 0 goto $r14 = "PT";	$r14 = "-PT";	goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	if $i1 >= 0 goto $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	$i5 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	$i6 = neg $i5;	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("H");	$i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getMinutes()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("M");	$i3 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getSeconds()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$i4 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getNanos()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("S");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>($r12);	return $r11
;block_num 5