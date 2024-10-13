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
(declare-const var1878 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1878 null-Int)))
(define-const var2545 Int (cast-from-Int-to-Int var1878)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var2545 (- 110)) (and (not (= var2545 (- 111))) true))) ; Intersect: Cond: $i1 == -110  and Intersect: Negate: Cond: $i1 == -111   and Non Conditional  
(define-const var1063 String String-init) ; Statement: $r214 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1063)) ; Statement: specialinvoke $r214.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1063!1 String)
(assert (= var1063!1 ""))
(assert true)
(define-const var1695 String (append/672562846 var1063!1 "TYPED_ANY ")) ; Statement: $r137 = virtualinvoke $r214.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPED_ANY ") 
(declare-const var1063!2 String)
(assert (= var1063!2 (str.++ var1063!1 "TYPED_ANY ")))
(define-const var1189 Int (cast-from-Int-to-Int var1878)) ; Statement: $i30 = (int) b0 
(define-const var3823 String (Int_toString/1350422511 var1189)) ; Statement: $r136 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i30) 
(assert true)
(define-const var2361 String (append/672562846 var1695 var3823)) ; Statement: $r138 = virtualinvoke $r137.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r136) 
(declare-const var1695!1 String)
(assert (= var1695!1 (str.++ var1695 var3823)))
(assert true)
(define-const var1117 String (toString/-2075883882 var2361)) ; Statement: $r139 = virtualinvoke $r138.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r139 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1878=b0, var2545=$i1, var1063=$r214, var1695=$r137, var1189=$i30, var3823=$r136, var2361=$r138, var1117=$r139}
; {b0=var1878, $i1=var2545, $r214=var1063, $r137=var1695, $i30=var1189, $r136=var3823, $r138=var2361, $r139=var1117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r214 = new java.lang.StringBuilder;	specialinvoke $r214.<java.lang.StringBuilder: void <init>()>();	$r137 = virtualinvoke $r214.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPED_ANY ");	$i30 = (int) b0;	$r136 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i30);	$r138 = virtualinvoke $r137.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r136);	$r139 = virtualinvoke $r138.<java.lang.StringBuilder: java.lang.String toString()>();	return $r139
;block_num 2