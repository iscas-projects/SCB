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
(declare-const var1223 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1223 null-Int)))
(define-const var1304 Int (cast-from-Int-to-Int var1223)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var1304 (- 91)) (and (not (= var1304 (- 109))) (and (not (= var1304 (- 110))) (and (not (= var1304 (- 111))) true))))) ; Intersect: Cond: $i1 == -91  and Intersect: Negate: Cond: $i1 == -109   and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional    
(define-const var674 String String-init) ; Statement: $r187 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var674)) ; Statement: specialinvoke $r187.<java.lang.StringBuilder: void <init>()>() 
(declare-const var674!1 String)
(assert (= var674!1 ""))
(assert true)
(define-const var3230 String (append/672562846 var674!1 "OBJECT_END ")) ; Statement: $r127 = virtualinvoke $r187.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OBJECT_END ") 
(declare-const var674!2 String)
(assert (= var674!2 (str.++ var674!1 "OBJECT_END ")))
(define-const var2237 Int (cast-from-Int-to-Int var1223)) ; Statement: $i3 = (int) b0 
(define-const var185 String (Int_toString/1350422511 var2237)) ; Statement: $r126 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i3) 
(assert true)
(define-const var3374 String (append/672562846 var3230 var185)) ; Statement: $r128 = virtualinvoke $r127.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r126) 
(declare-const var3230!1 String)
(assert (= var3230!1 (str.++ var3230 var185)))
(assert true)
(define-const var1064 String (toString/-2075883882 var3374)) ; Statement: $r129 = virtualinvoke $r128.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r129 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1223=b0, var1304=$i1, var674=$r187, var3230=$r127, var2237=$i3, var185=$r126, var3374=$r128, var1064=$r129}
; {b0=var1223, $i1=var1304, $r187=var674, $r127=var3230, $i3=var2237, $r126=var185, $r128=var3374, $r129=var1064}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r187 = new java.lang.StringBuilder;	specialinvoke $r187.<java.lang.StringBuilder: void <init>()>();	$r127 = virtualinvoke $r187.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OBJECT_END ");	$i3 = (int) b0;	$r126 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i3);	$r128 = virtualinvoke $r127.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r126);	$r129 = virtualinvoke $r128.<java.lang.StringBuilder: java.lang.String toString()>();	return $r129
;block_num 2