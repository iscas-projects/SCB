(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var77 0)
(declare-sort var1124 0)
(declare-sort var3230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun zone/775530285 (var77) var1124)
(declare-fun append/-1031950772 (String var3230) String)
(declare-fun cast-from-var1124-to-var3230 (var1124) var3230)
(declare-fun dstOffset/775530285 (var77) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var77 var77)
(declare-const var3100 var77) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo 
(assert (not (= var3100 null-var77)))
(define-const var1935 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1935)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1935!1 String)
(assert (= var1935!1 ""))
(assert true)
(define-const var3976 String (append/672562846 var1935!1 "TzInfo [zone=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TzInfo [zone=") 
(declare-const var1935!2 String)
(assert (= var1935!2 (str.++ var1935!1 "TzInfo [zone=")))
(define-const var1588 var1124 (zone/775530285 var3100)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo: java.util.TimeZone zone> 
(assert true)
(define-const var824 String (append/-1031950772 var3976 (cast-from-var1124-to-var3230 var1588))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3976!1 String)
(assert (str.prefixof var3976 var3976!1))
(assert true)
(define-const var3810 String (append/672562846 var824 ", dstOffset=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", dstOffset=") 
(declare-const var824!1 String)
(assert (= var824!1 (str.++ var824 ", dstOffset=")))
(define-const var2037 Int (dstOffset/775530285 var3100)) ; Statement: $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo: int dstOffset> 
(assert true)
(define-const var999 String (append/-1001720160 var3810 var2037)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3810!1 String)
(assert (str.prefixof var3810 var3810!1))
(assert true)
(define-const var649 String (append/672562846 var999 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var999!1 String)
(assert (= var999!1 (str.++ var999 "]")))
(assert true)
(define-const var3325 String (toString/-2075883882 var649)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), zone/775530285=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo], java.util.TimeZone), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1124-to-var3230=([java.util.TimeZone], java.lang.Object), dstOffset/775530285=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var77=org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo, var3100=r1, var1935=$r0, var3976=$r3, var1124=java.util.TimeZone, var1588=$r2, var3230=java.lang.Object, var824=$r4, var3810=$r5, var2037=$i0, var999=$r6, var649=$r7, var3325=$r8}
; {org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo=var77, r1=var3100, $r0=var1935, $r3=var3976, java.util.TimeZone=var1124, $r2=var1588, java.lang.Object=var3230, $r4=var824, $r5=var3810, $i0=var2037, $r6=var999, $r7=var649, $r8=var3325}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TzInfo [zone=");	$r2 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo: java.util.TimeZone zone>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", dstOffset=");	$i0 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy$TzInfo: int dstOffset>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1