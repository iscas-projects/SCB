(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3102 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var3102 null-Int)))
(define-const var1375 Int (cast-from-Int-to-Int var3102)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var1375 (- 83)) (and (not (= var1375 (- 84))) (and (not (= var1375 (- 85))) (and (not (= var1375 (- 86))) (and (not (= var1375 (- 87))) (and (not (= var1375 (- 88))) (and (not (= var1375 (- 89))) (and (not (= var1375 (- 90))) (and (not (= var1375 (- 91))) (and (not (= var1375 (- 109))) (and (not (= var1375 (- 110))) (and (not (= var1375 (- 111))) true))))))))))))) ; Intersect: Cond: $i1 == -83  and Intersect: Negate: Cond: $i1 == -84   and Intersect: Negate: Cond: $i1 == -85   and Intersect: Negate: Cond: $i1 == -86   and Intersect: Negate: Cond: $i1 == -87   and Intersect: Negate: Cond: $i1 == -88   and Intersect: Negate: Cond: $i1 == -89   and Intersect: Negate: Cond: $i1 == -90   and Intersect: Negate: Cond: $i1 == -91   and Intersect: Negate: Cond: $i1 == -109   and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional            
(define-const var1218 String String-init) ; Statement: $r209 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1218)) ; Statement: specialinvoke $r209.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1218!1 String)
(assert (= var1218!1 ""))
(assert true)
(define-const var2392 String (append/672562846 var1218!1 "TIMESTAMP_MINUTES ")) ; Statement: $r87 = virtualinvoke $r209.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TIMESTAMP_MINUTES ") 
(declare-const var1218!2 String)
(assert (= var1218!2 (str.++ var1218!1 "TIMESTAMP_MINUTES ")))
(define-const var936 Int (cast-from-Int-to-Int var3102)) ; Statement: $i25 = (int) b0 
(define-const var2161 String (Int_toString/1350422511 var936)) ; Statement: $r86 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i25) 
(assert true)
(define-const var154 String (append/672562846 var2392 var2161)) ; Statement: $r88 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86) 
(declare-const var2392!1 String)
(assert (= var2392!1 (str.++ var2392 var2161)))
(assert true)
(define-const var3669 String (toString/-2075883882 var154)) ; Statement: $r89 = virtualinvoke $r88.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r89 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3102=b0, var1375=$i1, var1218=$r209, var2392=$r87, var936=$i25, var2161=$r86, var154=$r88, var3669=$r89}
; {b0=var3102, $i1=var1375, $r209=var1218, $r87=var2392, $i25=var936, $r86=var2161, $r88=var154, $r89=var3669}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r209 = new java.lang.StringBuilder;	specialinvoke $r209.<java.lang.StringBuilder: void <init>()>();	$r87 = virtualinvoke $r209.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TIMESTAMP_MINUTES ");	$i25 = (int) b0;	$r86 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i25);	$r88 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86);	$r89 = virtualinvoke $r88.<java.lang.StringBuilder: java.lang.String toString()>();	return $r89
;block_num 2