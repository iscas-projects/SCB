(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort var431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2669-to-var431 (var2669) var431)
(declare-fun regexpr/-1556785572 (var431) var2669)
(declare-fun walkStatus/319082119 (var2669) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun label/319082119 (var2669) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2669 var2669)
(declare-const var3202 var2669) ; Statement: r0 := @parameter0: org.javacc.parser.RegularExpression 
(assert (not (= var3202 null-var2669)))
(define-const var2522 Bool false) ; Statement: $z0 = r0 instanceof org.javacc.parser.RJustName 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.javacc.parser.RChoice 
(assert (not (= (ite var2522 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2551 var431 (cast-from-var2669-to-var431 var3202)) ; Statement: r49 = (org.javacc.parser.RJustName) r0 
(define-const var199 var2669 (regexpr/-1556785572 var2551)) ; Statement: $r17 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr> 
(define-const var3296 Int (walkStatus/319082119 var199)) ; Statement: $i0 = $r17.<org.javacc.parser.RegularExpression: int walkStatus> 
(define-const var3482 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 != $i4 goto $r18 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr> 
(assert (not (not (= var3296 var3482)))) ; Negate: Cond: $i0 != $i4  
(define-const var1817 var2669 (regexpr/-1556785572 var2551)) ; Statement: $r41 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr> 
(define-const var2089 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i6 = (int) -2 
(declare-const var1817!1 var2669)
(assert (not (= var1817!1 null-var2669)))
(assert (= (walkStatus/319082119 var1817!1) var2089)) ; Statement: $r41.<org.javacc.parser.RegularExpression: int walkStatus> = $i6 
(define-const var2965 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2965)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2965!1 String)
(assert (= var2965!1 ""))
(assert true)
(define-const var3537 String (append/672562846 var2965!1 "...")) ; Statement: $r45 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var2965!2 String)
(assert (= var2965!2 (str.++ var2965!1 "...")))
(define-const var1989 var2669 (regexpr/-1556785572 var2551)) ; Statement: $r43 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr> 
(define-const var1818 String (label/319082119 var1989)) ; Statement: $r44 = $r43.<org.javacc.parser.RegularExpression: java.lang.String label> 
(assert true)
(define-const var923 String (append/672562846 var3537 var1818)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44) 
(declare-const var3537!1 String)
(assert (= var3537!1 (str.++ var3537 var1818)))
(assert true)
(define-const var3350 String (append/672562846 var923 "...")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var923!1 String)
(assert (= var923!1 (str.++ var923 "...")))
(assert true)
(define-const var2720 String (toString/-2075883882 var3350)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2194 String var2720) ; Statement: <org.javacc.parser.Semanticize: java.lang.String loopString> = $r48 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2669-to-var431=([org.javacc.parser.RegularExpression], org.javacc.parser.RJustName), regexpr/-1556785572=([org.javacc.parser.RJustName], org.javacc.parser.RegularExpression), walkStatus/319082119=([org.javacc.parser.RegularExpression], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), label/319082119=([org.javacc.parser.RegularExpression], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2669=org.javacc.parser.RegularExpression, var3202=r0, var2522=$z0, var431=org.javacc.parser.RJustName, var2551=r49, var199=$r17, var3296=$i0, var3482=$i4, var1817=$r41, var2089=$i6, var2965=$r52, var3537=$r45, var1989=$r43, var1818=$r44, var923=$r46, var3350=$r47, var2720=$r48, var2194=<org.javacc.parser.Semanticize: java.lang.String loopString>}
; {org.javacc.parser.RegularExpression=var2669, r0=var3202, $z0=var2522, org.javacc.parser.RJustName=var431, r49=var2551, $r17=var199, $i0=var3296, $i4=var3482, $r41=var1817, $i6=var2089, $r52=var2965, $r45=var3537, $r43=var1989, $r44=var1818, $r46=var923, $r47=var3350, $r48=var2720, <org.javacc.parser.Semanticize: java.lang.String loopString>=var2194}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.parser.RegularExpression;	$z0 = r0 instanceof org.javacc.parser.RJustName;	if $z0 == 0 goto $z1 = r0 instanceof org.javacc.parser.RChoice;	r49 = (org.javacc.parser.RJustName) r0;	$r17 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr>;	$i0 = $r17.<org.javacc.parser.RegularExpression: int walkStatus>;	$i4 = (int) -1;	if $i0 != $i4 goto $r18 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr>;	$r41 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr>;	$i6 = (int) -2;	$r41.<org.javacc.parser.RegularExpression: int walkStatus> = $i6;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	$r43 = r49.<org.javacc.parser.RJustName: org.javacc.parser.RegularExpression regexpr>;	$r44 = $r43.<org.javacc.parser.RegularExpression: java.lang.String label>;	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	<org.javacc.parser.Semanticize: java.lang.String loopString> = $r48;	return 1
;block_num 3