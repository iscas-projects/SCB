(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2296 0)
(declare-sort var1298 0)
(declare-sort var1118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getHours/912341727 (var1298) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMinutes/999217871 (var1298) Int)
(declare-fun getSeconds/-438810321 (var1298) Int)
(declare-fun getNanos/-1259022417 (var1298) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1118_parse/463494465 (String) var1118)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2296 var2296)
(declare-const null-var1298 var1298)
(declare-const var55 var2296) ; Statement: r13 := @this: com.mysql.cj.result.DurationValueFactory 
(assert (not (= var55 null-var2296)))
(declare-const var359 var1298) ; Statement: r1 := @parameter0: com.mysql.cj.protocol.InternalTime 
(assert (not (= var359 null-var1298)))
(define-const var3862 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3862)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3862!1 String)
(assert (= var3862!1 ""))
(assert true)
(define-const var2558 Int (getHours/912341727 var359)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
 ; Statement: if $i0 >= 0 goto $r14 = "PT" 
(assert (>= var2558 0)) ; Cond: $i0 >= 0 
(define-const var1676 String "PT") ; Statement: $r14 = "PT" 
(assert true) ; Non Conditional
(assert true)
(define-const var170 String (append/672562846 var3862!1 var1676)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3862!2 String)
(assert (= var3862!2 (str.++ var3862!1 var1676)))
(assert true)
(define-const var2488 Int (getHours/912341727 var359)) ; Statement: $i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
 ; Statement: if $i1 >= 0 goto $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
(assert (not (>= var2488 0))) ; Negate: Cond: $i1 >= 0  
(assert true)
(define-const var2976 Int (getHours/912341727 var359)) ; Statement: $i5 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>() 
(define-const var1608 Int (- var2976)) ; Statement: $i6 = neg $i5 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1350 String (append/-1001720160 var170 var1608)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var170!1 String)
(assert (str.prefixof var170 var170!1))
(assert true)
(define-const var3998 String (append/672562846 var1350 "H")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("H") 
(declare-const var1350!1 String)
(assert (= var1350!1 (str.++ var1350 "H")))
(assert true)
(define-const var3573 Int (getMinutes/999217871 var359)) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getMinutes()>() 
(assert true)
(define-const var3399 String (append/-1001720160 var3998 var3573)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3998!1 String)
(assert (str.prefixof var3998 var3998!1))
(assert true)
(define-const var2493 String (append/672562846 var3399 "M")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("M") 
(declare-const var3399!1 String)
(assert (= var3399!1 (str.++ var3399 "M")))
(assert true)
(define-const var1500 Int (getSeconds/-438810321 var359)) ; Statement: $i3 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getSeconds()>() 
(assert true)
(define-const var3084 String (append/-1001720160 var2493 var1500)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2493!1 String)
(assert (str.prefixof var2493 var2493!1))
(assert true)
(define-const var2966 String (append/672562846 var3084 ".")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3084!1 String)
(assert (= var3084!1 (str.++ var3084 ".")))
(assert true)
(define-const var2551 Int (getNanos/-1259022417 var359)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getNanos()>() 
(assert true)
(define-const var3663 String (append/-1001720160 var2966 var2551)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2966!1 String)
(assert (str.prefixof var2966 var2966!1))
(assert true)
(define-const var954 String (append/672562846 var3663 "S")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("S") 
(declare-const var3663!1 String)
(assert (= var3663!1 (str.++ var3663 "S")))
(assert true)
(define-const var1896 String (toString/-2075883882 var954)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var793 var1118 (var1118_parse/463494465 (cast-from-String-to-String var1896))) ; Statement: $r11 = staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>($r12) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getHours/912341727=([com.mysql.cj.protocol.InternalTime], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMinutes/999217871=([com.mysql.cj.protocol.InternalTime], int), getSeconds/-438810321=([com.mysql.cj.protocol.InternalTime], int), getNanos/-1259022417=([com.mysql.cj.protocol.InternalTime], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1118_parse/463494465=([java.lang.CharSequence], java.time.Duration), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2296=com.mysql.cj.result.DurationValueFactory, var55=r13, var1298=com.mysql.cj.protocol.InternalTime, var359=r1, var3862=$r0, var2558=$i0, var1676=$r14, var170=$r2, var2488=$i1, var2976=$i5, var1608=$i6, var1350=$r3, var3998=$r4, var3573=$i2, var3399=$r5, var2493=$r6, var1500=$i3, var3084=$r7, var2966=$r8, var2551=$i4, var3663=$r9, var954=$r10, var1896=$r12, var1118=java.time.Duration, var793=$r11}
; {com.mysql.cj.result.DurationValueFactory=var2296, r13=var55, com.mysql.cj.protocol.InternalTime=var1298, r1=var359, $r0=var3862, $i0=var2558, $r14=var1676, $r2=var170, $i1=var2488, $i5=var2976, $i6=var1608, $r3=var1350, $r4=var3998, $i2=var3573, $r5=var3399, $r6=var2493, $i3=var1500, $r7=var3084, $r8=var2966, $i4=var2551, $r9=var3663, $r10=var954, $r12=var1896, java.time.Duration=var1118, $r11=var793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.mysql.cj.result.DurationValueFactory;	r1 := @parameter0: com.mysql.cj.protocol.InternalTime;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	if $i0 >= 0 goto $r14 = "PT";	$r14 = "PT";	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	if $i1 >= 0 goto $i6 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	$i5 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getHours()>();	$i6 = neg $i5;	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("H");	$i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getMinutes()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("M");	$i3 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getSeconds()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$i4 = virtualinvoke r1.<com.mysql.cj.protocol.InternalTime: int getNanos()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("S");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>($r12);	return $r11
;block_num 5