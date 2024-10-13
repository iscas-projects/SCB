(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var2211 0)
(declare-sort var1037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun strategy/-1034954719 (var2654) var2211)
(declare-fun append/-1031950772 (String var1037) String)
(declare-fun cast-from-var2211-to-var1037 (var2211) var1037)
(declare-fun width/-1034954719 (var2654) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2654 var2654)
(declare-const var3999 var2654) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth 
(assert (not (= var3999 null-var2654)))
(define-const var3248 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3248)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3248!1 String)
(assert (= var3248!1 ""))
(assert true)
(define-const var2650 String (append/672562846 var3248!1 "StrategyAndWidth [strategy=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("StrategyAndWidth [strategy=") 
(declare-const var3248!2 String)
(assert (= var3248!2 (str.++ var3248!1 "StrategyAndWidth [strategy=")))
(define-const var812 var2211 (strategy/-1034954719 var3999)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: org.apache.commons.lang3.time.FastDateParser$Strategy strategy> 
(assert true)
(define-const var843 String (append/-1031950772 var2650 (cast-from-var2211-to-var1037 var812))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2650!1 String)
(assert (str.prefixof var2650 var2650!1))
(assert true)
(define-const var956 String (append/672562846 var843 ", width=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", width=") 
(declare-const var843!1 String)
(assert (= var843!1 (str.++ var843 ", width=")))
(define-const var1148 Int (width/-1034954719 var3999)) ; Statement: $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: int width> 
(assert true)
(define-const var167 String (append/-1001720160 var956 var1148)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var956!1 String)
(assert (str.prefixof var956 var956!1))
(assert true)
(define-const var2469 String (append/672562846 var167 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var167!1 String)
(assert (= var167!1 (str.++ var167 "]")))
(assert true)
(define-const var1606 String (toString/-2075883882 var2469)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), strategy/-1034954719=([org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth], org.apache.commons.lang3.time.FastDateParser$Strategy), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2211-to-var1037=([org.apache.commons.lang3.time.FastDateParser$Strategy], java.lang.Object), width/-1034954719=([org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2654=org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth, var3999=r1, var3248=$r0, var2650=$r3, var2211=org.apache.commons.lang3.time.FastDateParser$Strategy, var812=$r2, var1037=java.lang.Object, var843=$r4, var956=$r5, var1148=$i0, var167=$r6, var2469=$r7, var1606=$r8}
; {org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth=var2654, r1=var3999, $r0=var3248, $r3=var2650, org.apache.commons.lang3.time.FastDateParser$Strategy=var2211, $r2=var812, java.lang.Object=var1037, $r4=var843, $r5=var956, $i0=var1148, $r6=var167, $r7=var2469, $r8=var1606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("StrategyAndWidth [strategy=");	$r2 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: org.apache.commons.lang3.time.FastDateParser$Strategy strategy>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", width=");	$i0 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: int width>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1