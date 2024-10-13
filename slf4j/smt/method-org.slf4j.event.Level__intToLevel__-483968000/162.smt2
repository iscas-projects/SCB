(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var501-init () var501)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var501 String) void)
(declare-const null-Int Int)
(declare-const var3896 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3896 null-Int)))
 ; Statement: lookupswitch(i0) {     case 0: goto $r4 = <org.slf4j.event.Level: org.slf4j.event.Level TRACE>;     case 10: goto $r3 = <org.slf4j.event.Level: org.slf4j.event.Level DEBUG>;     case 20: goto $r2 = <org.slf4j.event.Level: org.slf4j.event.Level INFO>;     case 30: goto $r1 = <org.slf4j.event.Level: org.slf4j.event.Level WARN>;     case 40: goto $r0 = <org.slf4j.event.Level: org.slf4j.event.Level ERROR>;     default: goto $r5 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3896 40)) (and (not (= var3896 30)) (and (not (= var3896 20)) (and (not (= var3896 10)) (and (not (= var3896 0)) true)))))) ; Intersect: Negate: Cond: i0 == 40   and Intersect: Negate: Cond: i0 == 30   and Intersect: Negate: Cond: i0 == 20   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 0   and Non Conditional     
(define-const var373 var501 var501-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3390 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var2352 String (append/672562846 var3390!1 "Level integer [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Level integer [") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "Level integer [")))
(assert true)
(define-const var624 String (append/-1001720160 var2352 var3896)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2352!1 String)
(assert (str.prefixof var2352 var2352!1))
(assert true)
(define-const var3866 String (append/672562846 var624 "] not recognized.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not recognized.") 
(declare-const var624!1 String)
(assert (= var624!1 (str.++ var624 "] not recognized.")))
(assert true)
(define-const var2226 String (toString/-2075883882 var3866)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var373 var2226)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var373!1 var501)
(declare-const var2226!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var501-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3896=i0, var501=java.lang.IllegalArgumentException, var373=$r5, var3390=$r6, var2352=$r7, var624=$r8, var3866=$r9, var2226=$r10}
; {i0=var3896, java.lang.IllegalArgumentException=var501, $r5=var373, $r6=var3390, $r7=var2352, $r8=var624, $r9=var3866, $r10=var2226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	lookupswitch(i0) {     case 0: goto $r4 = <org.slf4j.event.Level: org.slf4j.event.Level TRACE>;     case 10: goto $r3 = <org.slf4j.event.Level: org.slf4j.event.Level DEBUG>;     case 20: goto $r2 = <org.slf4j.event.Level: org.slf4j.event.Level INFO>;     case 30: goto $r1 = <org.slf4j.event.Level: org.slf4j.event.Level WARN>;     case 40: goto $r0 = <org.slf4j.event.Level: org.slf4j.event.Level ERROR>;     default: goto $r5 = new java.lang.IllegalArgumentException; };	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Level integer [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not recognized.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2