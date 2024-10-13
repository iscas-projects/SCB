(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun previous/-1119108017 (var2585) var2585)
(declare-fun idx/-1119108017 (var2585) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun next/-1119108017 (var2585) var2585)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2585 var2585)
(declare-const var3834 var2585) ; Statement: r1 := @this: org.apache.lucene.geo.Tessellator$Node 
(assert (not (= var3834 null-var2585)))
(define-const var2508 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2508)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2508!1 String)
(assert (= var2508!1 ""))
(define-const var1200 var2585 (previous/-1119108017 var3834)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
(assert (not (= var1200 null-var2585))) ; Cond: $r2 != null 
(define-const var74 var2585 (previous/-1119108017 var3834)) ; Statement: $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
(define-const var921 Int (idx/-1119108017 var74)) ; Statement: $i0 = $r3.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
(define-const var3679 String (append/-1001720160 var2508!1 var921)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2508!2 String)
(assert (str.prefixof var2508!1 var2508!2))
(assert true)
;(assert (append/672562846 var3679 " <- ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <- ") 
(declare-const var3679!1 String)
(assert (= var3679!1 (str.++ var3679 " <- ")))
(assert true) ; Non Conditional
(define-const var624 Int (idx/-1119108017 var3834)) ; Statement: $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
;(assert (append/-1001720160 var2508!2 var624)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2508!3 String)
(assert (str.prefixof var2508!2 var2508!3))
(define-const var1641 var2585 (next/-1119108017 var3834)) ; Statement: $r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next> 
 ; Statement: if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(assert (not (not (= var1641 null-var2585)))) ; Negate: Cond: $r5 != null  
(assert true)
;(assert (append/672562846 var2508!3 " -||")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -||") 
(declare-const var2508!4 String)
(assert (= var2508!4 (str.++ var2508!3 " -||")))
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2982 String (toString/-2075883882 var2508!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), previous/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), idx/-1119108017=([org.apache.lucene.geo.Tessellator$Node], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), next/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2585=org.apache.lucene.geo.Tessellator$Node, var3834=r1, var2508=$r0, var1200=$r2, var74=$r3, var921=$i0, var3679=$r4, var624=$i1, var1641=$r5, var2982=$r8}
; {org.apache.lucene.geo.Tessellator$Node=var2585, r1=var3834, $r0=var2508, $r2=var1200, $r3=var74, $i0=var921, $r4=var3679, $i1=var624, $r5=var1641, $r8=var2982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Tessellator$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	$r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	$i0 = $r3.<org.apache.lucene.geo.Tessellator$Node: int idx>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <- ");	$i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next>;	if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -||");	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5