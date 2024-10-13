(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun zoneId/447119723 (var2961) String)
(declare-fun offset/447119723 (var2961) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2961 var2961)
(declare-const var2888 var2961) ; Statement: r1 := @this: org.apache.commons.lang3.time.GmtTimeZone 
(assert (not (= var2888 null-var2961)))
(define-const var1196 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1196)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1196!1 String)
(assert (= var1196!1 ""))
(assert true)
(define-const var2886 String (append/672562846 var1196!1 "[GmtTimeZone id=\u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[GmtTimeZone id=\"") 
(declare-const var1196!2 String)
(assert (= var1196!2 (str.++ var1196!1 "[GmtTimeZone id=\u0022")))
(define-const var1592 String (zoneId/447119723 var2888)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.GmtTimeZone: java.lang.String zoneId> 
(assert true)
(define-const var607 String (append/672562846 var2886 var1592)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2886!1 String)
(assert (= var2886!1 (str.++ var2886 var1592)))
(assert true)
(define-const var2033 String (append/672562846 var607 "\u0022,offset=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",offset=") 
(declare-const var607!1 String)
(assert (= var607!1 (str.++ var607 "\u0022,offset=")))
(define-const var993 Int (offset/447119723 var2888)) ; Statement: $i0 = r1.<org.apache.commons.lang3.time.GmtTimeZone: int offset> 
(assert true)
(define-const var2419 String (append/-1001720160 var2033 var993)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2033!1 String)
(assert (str.prefixof var2033 var2033!1))
(assert true)
(define-const var999 String (append/-1166366385 var2419 93)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2419!1 String)
(assert (str.prefixof var2419 var2419!1))
(assert true)
(define-const var1988 String (toString/-2075883882 var999)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), zoneId/447119723=([org.apache.commons.lang3.time.GmtTimeZone], java.lang.String), offset/447119723=([org.apache.commons.lang3.time.GmtTimeZone], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2961=org.apache.commons.lang3.time.GmtTimeZone, var2888=r1, var1196=$r0, var2886=$r3, var1592=$r2, var607=$r4, var2033=$r5, var993=$i0, var2419=$r6, var999=$r7, var1988=$r8}
; {org.apache.commons.lang3.time.GmtTimeZone=var2961, r1=var2888, $r0=var1196, $r3=var2886, $r2=var1592, $r4=var607, $r5=var2033, $i0=var993, $r6=var2419, $r7=var999, $r8=var1988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.GmtTimeZone;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[GmtTimeZone id=\"");	$r2 = r1.<org.apache.commons.lang3.time.GmtTimeZone: java.lang.String zoneId>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",offset=");	$i0 = r1.<org.apache.commons.lang3.time.GmtTimeZone: int offset>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1