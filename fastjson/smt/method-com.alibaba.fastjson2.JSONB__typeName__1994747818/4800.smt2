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
(declare-const var283 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var283 null-Int)))
(define-const var3581 Int (cast-from-Int-to-Int var283)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var3581 (- 89)) (and (not (= var3581 (- 90))) (and (not (= var3581 (- 91))) (and (not (= var3581 (- 109))) (and (not (= var3581 (- 110))) (and (not (= var3581 (- 111))) true))))))) ; Intersect: Cond: $i1 == -89  and Intersect: Negate: Cond: $i1 == -90   and Intersect: Negate: Cond: $i1 == -91   and Intersect: Negate: Cond: $i1 == -109   and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional      
(define-const var3453 String String-init) ; Statement: $r205 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3453)) ; Statement: specialinvoke $r205.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3453!1 String)
(assert (= var3453!1 ""))
(assert true)
(define-const var553 String (append/672562846 var3453!1 "LOCAL_TIME ")) ; Statement: $r117 = virtualinvoke $r205.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LOCAL_TIME ") 
(declare-const var3453!2 String)
(assert (= var3453!2 (str.++ var3453!1 "LOCAL_TIME ")))
(define-const var3805 Int (cast-from-Int-to-Int var283)) ; Statement: $i21 = (int) b0 
(define-const var1729 String (Int_toString/1350422511 var3805)) ; Statement: $r116 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i21) 
(assert true)
(define-const var2144 String (append/672562846 var553 var1729)) ; Statement: $r118 = virtualinvoke $r117.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r116) 
(declare-const var553!1 String)
(assert (= var553!1 (str.++ var553 var1729)))
(assert true)
(define-const var234 String (toString/-2075883882 var2144)) ; Statement: $r119 = virtualinvoke $r118.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r119 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var283=b0, var3581=$i1, var3453=$r205, var553=$r117, var3805=$i21, var1729=$r116, var2144=$r118, var234=$r119}
; {b0=var283, $i1=var3581, $r205=var3453, $r117=var553, $i21=var3805, $r116=var1729, $r118=var2144, $r119=var234}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r205 = new java.lang.StringBuilder;	specialinvoke $r205.<java.lang.StringBuilder: void <init>()>();	$r117 = virtualinvoke $r205.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LOCAL_TIME ");	$i21 = (int) b0;	$r116 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i21);	$r118 = virtualinvoke $r117.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r116);	$r119 = virtualinvoke $r118.<java.lang.StringBuilder: java.lang.String toString()>();	return $r119
;block_num 2