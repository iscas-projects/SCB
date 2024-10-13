(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var695 0)
(declare-sort var3668 0)
(declare-sort var207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getHours/912341727 (var3668) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMinutes/999217871 (var3668) Int)
(declare-fun getSeconds/-438810321 (var3668) Int)
(declare-fun getNanos/-1259022417 (var3668) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var207_parse/463494465 (String) var207)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var695 var695)
(declare-const null-var3668 var3668)
(declare-const var1623 var695) ; Statement: r13 := @this: com.mysql.cj.result.DurationValueFactory 
(assert (not (= var1623 null-var695)))
(declare-const var3753 var3668) ; Statement: r1 := @parameter0: com.mysql.cj.protocol.InternalTime 
(assert (not (= var3753 null-var3668)))
(define-const var500 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var500)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var500!1 String)
(assert (= var500!1 ""))
(assert true)
(define-const var2118 Int (getHours/912341727 var3753)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
 ; Statement: if $i0 >= 0 goto $r14 = "PT" 
(assert (not (>= var2118 0))) ; Negate: Cond: $i0 >= 0  
(define-const var3777 String "-PT") ; Statement: $r14 = "-PT" 
 ; Statement: goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3909 String (append/672562846 var500!1 var3777)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var500!2 String)
(assert (= var500!2 (str.++ var500!1 var3777)))
(assert true)
(define-const var1716 Int (getHours/912341727 var3753)) ; Statement: $i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
 ; Statement: if $i1 >= 0 goto $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
(assert (>= var1716 0)) ; Cond: $i1 >= 0 
(assert true)
(define-const var1843 Int (getHours/912341727 var3753)) ; Statement: $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1475 String (append/-1001720160 var3909 var1843)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var3909!1 String)
(assert (str.prefixof var3909 var3909!1))
(assert true)
(define-const var1629 String (append/672562846 var1475 "H")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("H") 
(declare-const var1475!1 String)
(assert (= var1475!1 (str.++ var1475 "H")))
(assert true)
(define-const var864 Int (getMinutes/999217871 var3753)) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getMinutes()>() 
(assert true)
(define-const var1003 String (append/-1001720160 var1629 var864)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1629!1 String)
(assert (str.prefixof var1629 var1629!1))
(assert true)
(define-const var1862 String (append/672562846 var1003 "M")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("M") 
(declare-const var1003!1 String)
(assert (= var1003!1 (str.++ var1003 "M")))
(assert true)
(define-const var1289 Int (getSeconds/-438810321 var3753)) ; Statement: $i3 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getSeconds()>() 
(assert true)
(define-const var3865 String (append/-1001720160 var1862 var1289)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1862!1 String)
(assert (str.prefixof var1862 var1862!1))
(assert true)
(define-const var2648 String (append/672562846 var3865 ".")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3865!1 String)
(assert (= var3865!1 (str.++ var3865 ".")))
(assert true)
(define-const var219 Int (getNanos/-1259022417 var3753)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getNanos()>() 
(assert true)
(define-const var819 String (append/-1001720160 var2648 var219)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2648!1 String)
(assert (str.prefixof var2648 var2648!1))
(assert true)
(define-const var580 String (append/672562846 var819 "S")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("S") 
(declare-const var819!1 String)
(assert (= var819!1 (str.++ var819 "S")))
(assert true)
(define-const var256 String (toString/-2075883882 var580)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var907 var207 (var207_parse/463494465 (cast-from-String-to-String var256))) ; Statement: $r11 = staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>($r12) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getHours/912341727=([com.mysql.cj.protocol.InternalTime], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMinutes/999217871=([com.mysql.cj.protocol.InternalTime], int), getSeconds/-438810321=([com.mysql.cj.protocol.InternalTime], int), getNanos/-1259022417=([com.mysql.cj.protocol.InternalTime], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var207_parse/463494465=([java.lang.CharSequence], java.time.Duration), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var695=com.mysql.cj.result.DurationValueFactory, var1623=r13, var3668=com.mysql.cj.protocol.InternalTime, var3753=r1, var500=$r0, var2118=$i0, var3777=$r14, var3909=$r2, var1716=$i1, var1843=$i6, var1475=$r3, var1629=$r4, var864=$i2, var1003=$r5, var1862=$r6, var1289=$i3, var3865=$r7, var2648=$r8, var219=$i4, var819=$r9, var580=$r10, var256=$r12, var207=java.time.Duration, var907=$r11}
; {com.mysql.cj.result.DurationValueFactory=var695, r13=var1623, com.mysql.cj.protocol.InternalTime=var3668, r1=var3753, $r0=var500, $i0=var2118, $r14=var3777, $r2=var3909, $i1=var1716, $i6=var1843, $r3=var1475, $r4=var1629, $i2=var864, $r5=var1003, $r6=var1862, $i3=var1289, $r7=var3865, $r8=var2648, $i4=var219, $r9=var819, $r10=var580, $r12=var256, java.time.Duration=var207, $r11=var907}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.mysql.cj.result.DurationValueFactory;	r1 := @parameter0: com.mysql.cj.protocol.InternalTime;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	if $i0 >= 0 goto $r14 = "PT";	$r14 = "-PT";	goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	if $i1 >= 0 goto $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	$i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("H");	$i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getMinutes()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("M");	$i3 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getSeconds()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$i4 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getNanos()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("S");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>($r12);	return $r11
;block_num 5