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
(declare-const var2189 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var2189 null-Int)))
(define-const var3447 Int (cast-from-Int-to-Int var2189)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var3447 (- 67)) (and (not (= var3447 (- 68))) (and (not (= var3447 (- 69))) (and (not (= var3447 (- 70))) (and (not (= var3447 (- 71))) (and (not (= var3447 (- 72))) (and (not (= var3447 (- 73))) (and (not (= var3447 (- 74))) (and (not (= var3447 (- 75))) (and (not (= var3447 (- 76))) (and (not (= var3447 (- 77))) (and (not (= var3447 (- 78))) (and (not (= var3447 (- 79))) (and (not (= var3447 (- 80))) (and (not (= var3447 (- 81))) (and (not (= var3447 (- 82))) (and (not (= var3447 (- 83))) (and (not (= var3447 (- 84))) (and (not (= var3447 (- 85))) (and (not (= var3447 (- 86))) (and (not (= var3447 (- 87))) (and (not (= var3447 (- 88))) (and (not (= var3447 (- 89))) (and (not (= var3447 (- 90))) (and (not (= var3447 (- 91))) (and (not (= var3447 (- 109))) (and (not (= var3447 (- 110))) (and (not (= var3447 (- 111))) true))))))))))))))))))))))))))))) ; Intersect: Cond: $i1 == -67  and Intersect: Negate: Cond: $i1 == -68   and Intersect: Negate: Cond: $i1 == -69   and Intersect: Negate: Cond: $i1 == -70   and Intersect: Negate: Cond: $i1 == -71   and Intersect: Negate: Cond: $i1 == -72   and Intersect: Negate: Cond: $i1 == -73   and Intersect: Negate: Cond: $i1 == -74   and Intersect: Negate: Cond: $i1 == -75   and Intersect: Negate: Cond: $i1 == -76   and Intersect: Negate: Cond: $i1 == -77   and Intersect: Negate: Cond: $i1 == -78   and Intersect: Negate: Cond: $i1 == -79   and Intersect: Negate: Cond: $i1 == -80   and Intersect: Negate: Cond: $i1 == -81   and Intersect: Negate: Cond: $i1 == -82   and Intersect: Negate: Cond: $i1 == -83   and Intersect: Negate: Cond: $i1 == -84   and Intersect: Negate: Cond: $i1 == -85   and Intersect: Negate: Cond: $i1 == -86   and Intersect: Negate: Cond: $i1 == -87   and Intersect: Negate: Cond: $i1 == -88   and Intersect: Negate: Cond: $i1 == -89   and Intersect: Negate: Cond: $i1 == -90   and Intersect: Negate: Cond: $i1 == -91   and Intersect: Negate: Cond: $i1 == -109   and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional                            
(define-const var1046 String String-init) ; Statement: $r197 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1046)) ; Statement: specialinvoke $r197.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1046!1 String)
(assert (= var1046!1 ""))
(assert true)
(define-const var3528 String (append/672562846 var1046!1 "INT8 ")) ; Statement: $r37 = virtualinvoke $r197.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("INT8 ") 
(declare-const var1046!2 String)
(assert (= var1046!2 (str.++ var1046!1 "INT8 ")))
(define-const var1197 Int (cast-from-Int-to-Int var2189)) ; Statement: $i13 = (int) b0 
(define-const var3269 String (Int_toString/1350422511 var1197)) ; Statement: $r36 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i13) 
(assert true)
(define-const var2764 String (append/672562846 var3528 var3269)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var3528!1 String)
(assert (= var3528!1 (str.++ var3528 var3269)))
(assert true)
(define-const var859 String (toString/-2075883882 var2764)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2189=b0, var3447=$i1, var1046=$r197, var3528=$r37, var1197=$i13, var3269=$r36, var2764=$r38, var859=$r39}
; {b0=var2189, $i1=var3447, $r197=var1046, $r37=var3528, $i13=var1197, $r36=var3269, $r38=var2764, $r39=var859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r197 = new java.lang.StringBuilder;	specialinvoke $r197.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r197.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("INT8 ");	$i13 = (int) b0;	$r36 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i13);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	return $r39
;block_num 2