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
(declare-const var2675 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var2675 null-Int)))
(define-const var1421 Int (cast-from-Int-to-Int var2675)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var1421 (- 87)) (and (not (= var1421 (- 88))) (and (not (= var1421 (- 89))) (and (not (= var1421 (- 90))) (and (not (= var1421 (- 91))) (and (not (= var1421 (- 109))) (and (not (= var1421 (- 110))) (and (not (= var1421 (- 111))) true))))))))) ; Intersect: Cond: $i1 == -87  and Intersect: Negate: Cond: $i1 == -88   and Intersect: Negate: Cond: $i1 == -89   and Intersect: Negate: Cond: $i1 == -90   and Intersect: Negate: Cond: $i1 == -91   and Intersect: Negate: Cond: $i1 == -109   and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional        
(define-const var2709 String String-init) ; Statement: $r213 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2709)) ; Statement: specialinvoke $r213.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2709!1 String)
(assert (= var2709!1 ""))
(assert true)
(define-const var820 String (append/672562846 var2709!1 "LOCAL_DATE ")) ; Statement: $r107 = virtualinvoke $r213.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LOCAL_DATE ") 
(declare-const var2709!2 String)
(assert (= var2709!2 (str.++ var2709!1 "LOCAL_DATE ")))
(define-const var2799 Int (cast-from-Int-to-Int var2675)) ; Statement: $i29 = (int) b0 
(define-const var2765 String (Int_toString/1350422511 var2799)) ; Statement: $r106 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i29) 
(assert true)
(define-const var3348 String (append/672562846 var820 var2765)) ; Statement: $r108 = virtualinvoke $r107.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r106) 
(declare-const var820!1 String)
(assert (= var820!1 (str.++ var820 var2765)))
(assert true)
(define-const var1008 String (toString/-2075883882 var3348)) ; Statement: $r109 = virtualinvoke $r108.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r109 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2675=b0, var1421=$i1, var2709=$r213, var820=$r107, var2799=$i29, var2765=$r106, var3348=$r108, var1008=$r109}
; {b0=var2675, $i1=var1421, $r213=var2709, $r107=var820, $i29=var2799, $r106=var2765, $r108=var3348, $r109=var1008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r213 = new java.lang.StringBuilder;	specialinvoke $r213.<java.lang.StringBuilder: void <init>()>();	$r107 = virtualinvoke $r213.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LOCAL_DATE ");	$i29 = (int) b0;	$r106 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i29);	$r108 = virtualinvoke $r107.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r106);	$r109 = virtualinvoke $r108.<java.lang.StringBuilder: java.lang.String toString()>();	return $r109
;block_num 2