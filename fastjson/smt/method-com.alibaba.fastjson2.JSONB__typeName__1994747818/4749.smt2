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
(declare-const var3278 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var3278 null-Int)))
(define-const var836 Int (cast-from-Int-to-Int var3278)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var836 (- 109)) (and (not (= var836 (- 110))) (and (not (= var836 (- 111))) true)))) ; Intersect: Cond: $i1 == -109  and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional   
(define-const var2108 String String-init) ; Statement: $r188 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2108)) ; Statement: specialinvoke $r188.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2108!1 String)
(assert (= var2108!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var2108!1 "REFERENCE ")) ; Statement: $r132 = virtualinvoke $r188.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("REFERENCE ") 
(declare-const var2108!2 String)
(assert (= var2108!2 (str.++ var2108!1 "REFERENCE ")))
(define-const var2269 Int (cast-from-Int-to-Int var3278)) ; Statement: $i4 = (int) b0 
(define-const var2908 String (Int_toString/1350422511 var2269)) ; Statement: $r131 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i4) 
(assert true)
(define-const var1244 String (append/672562846 var3347 var2908)) ; Statement: $r133 = virtualinvoke $r132.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r131) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var2908)))
(assert true)
(define-const var1568 String (toString/-2075883882 var1244)) ; Statement: $r134 = virtualinvoke $r133.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r134 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3278=b0, var836=$i1, var2108=$r188, var3347=$r132, var2269=$i4, var2908=$r131, var1244=$r133, var1568=$r134}
; {b0=var3278, $i1=var836, $r188=var2108, $r132=var3347, $i4=var2269, $r131=var2908, $r133=var1244, $r134=var1568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r188 = new java.lang.StringBuilder;	specialinvoke $r188.<java.lang.StringBuilder: void <init>()>();	$r132 = virtualinvoke $r188.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("REFERENCE ");	$i4 = (int) b0;	$r131 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i4);	$r133 = virtualinvoke $r132.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r131);	$r134 = virtualinvoke $r133.<java.lang.StringBuilder: java.lang.String toString()>();	return $r134
;block_num 2