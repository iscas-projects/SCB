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
(declare-const var1474 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1474 null-Int)))
(define-const var2734 Int (cast-from-Int-to-Int var1474)) ; Statement: $i1 = (int) b0 
 ; Statement: lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; } 
(assert (and (= var2734 (- 82)) (and (not (= var2734 (- 83))) (and (not (= var2734 (- 84))) (and (not (= var2734 (- 85))) (and (not (= var2734 (- 86))) (and (not (= var2734 (- 87))) (and (not (= var2734 (- 88))) (and (not (= var2734 (- 89))) (and (not (= var2734 (- 90))) (and (not (= var2734 (- 91))) (and (not (= var2734 (- 109))) (and (not (= var2734 (- 110))) (and (not (= var2734 (- 111))) true)))))))))))))) ; Intersect: Cond: $i1 == -82  and Intersect: Negate: Cond: $i1 == -83   and Intersect: Negate: Cond: $i1 == -84   and Intersect: Negate: Cond: $i1 == -85   and Intersect: Negate: Cond: $i1 == -86   and Intersect: Negate: Cond: $i1 == -87   and Intersect: Negate: Cond: $i1 == -88   and Intersect: Negate: Cond: $i1 == -89   and Intersect: Negate: Cond: $i1 == -90   and Intersect: Negate: Cond: $i1 == -91   and Intersect: Negate: Cond: $i1 == -109   and Intersect: Negate: Cond: $i1 == -110   and Intersect: Negate: Cond: $i1 == -111   and Non Conditional             
(define-const var2743 String String-init) ; Statement: $r208 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2743)) ; Statement: specialinvoke $r208.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2743!1 String)
(assert (= var2743!1 ""))
(assert true)
(define-const var322 String (append/672562846 var2743!1 "TIMESTAMP ")) ; Statement: $r82 = virtualinvoke $r208.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TIMESTAMP ") 
(declare-const var2743!2 String)
(assert (= var2743!2 (str.++ var2743!1 "TIMESTAMP ")))
(define-const var2979 Int (cast-from-Int-to-Int var1474)) ; Statement: $i24 = (int) b0 
(define-const var1693 String (Int_toString/1350422511 var2979)) ; Statement: $r81 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i24) 
(assert true)
(define-const var907 String (append/672562846 var322 var1693)) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81) 
(declare-const var322!1 String)
(assert (= var322!1 (str.++ var322 var1693)))
(assert true)
(define-const var1897 String (toString/-2075883882 var907)) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r84 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1474=b0, var2734=$i1, var2743=$r208, var322=$r82, var2979=$i24, var1693=$r81, var907=$r83, var1897=$r84}
; {b0=var1474, $i1=var2734, $r208=var2743, $r82=var322, $i24=var2979, $r81=var1693, $r83=var907, $r84=var1897}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i1 = (int) b0;	lookupswitch($i1) {     case -111: goto $r206 = new java.lang.StringBuilder;     case -110: goto $r214 = new java.lang.StringBuilder;     case -109: goto $r188 = new java.lang.StringBuilder;     case -91: goto $r187 = new java.lang.StringBuilder;     case -90: goto $r186 = new java.lang.StringBuilder;     case -89: goto $r205 = new java.lang.StringBuilder;     case -88: goto $r207 = new java.lang.StringBuilder;     case -87: goto $r213 = new java.lang.StringBuilder;     case -86: goto $r212 = new java.lang.StringBuilder;     case -85: goto $r211 = new java.lang.StringBuilder;     case -84: goto $r210 = new java.lang.StringBuilder;     case -83: goto $r209 = new java.lang.StringBuilder;     case -82: goto $r208 = new java.lang.StringBuilder;     case -81: goto $r190 = new java.lang.StringBuilder;     case -80: goto $r192 = new java.lang.StringBuilder;     case -79: goto $r191 = new java.lang.StringBuilder;     case -78: goto $r202 = new java.lang.StringBuilder;     case -77: goto $r202 = new java.lang.StringBuilder;     case -76: goto $r202 = new java.lang.StringBuilder;     case -75: goto $r202 = new java.lang.StringBuilder;     case -74: goto $r201 = new java.lang.StringBuilder;     case -73: goto $r201 = new java.lang.StringBuilder;     case -72: goto $r204 = new java.lang.StringBuilder;     case -71: goto $r204 = new java.lang.StringBuilder;     case -70: goto $r203 = new java.lang.StringBuilder;     case -69: goto $r203 = new java.lang.StringBuilder;     case -68: goto $r198 = new java.lang.StringBuilder;     case -67: goto $r197 = new java.lang.StringBuilder;     case -66: goto $r200 = new java.lang.StringBuilder;     case -65: goto $r200 = new java.lang.StringBuilder;     case 72: goto $r199 = new java.lang.StringBuilder;     case 122: goto $r193 = new java.lang.StringBuilder;     case 123: goto $r194 = new java.lang.StringBuilder;     case 124: goto $r195 = new java.lang.StringBuilder;     case 125: goto $r196 = new java.lang.StringBuilder;     case 127: goto $r189 = new java.lang.StringBuilder;     default: goto $i31 = (int) b0; };	$r208 = new java.lang.StringBuilder;	specialinvoke $r208.<java.lang.StringBuilder: void <init>()>();	$r82 = virtualinvoke $r208.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TIMESTAMP ");	$i24 = (int) b0;	$r81 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i24);	$r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81);	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>();	return $r84
;block_num 2