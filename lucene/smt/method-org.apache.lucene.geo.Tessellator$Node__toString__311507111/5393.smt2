(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun previous/-1119108017 (var1981) var1981)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun idx/-1119108017 (var1981) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun next/-1119108017 (var1981) var1981)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1981 var1981)
(declare-const var3279 var1981) ; Statement: r1 := @this: org.apache.lucene.geo.Tessellator$Node 
(assert (not (= var3279 null-var1981)))
(define-const var1749 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1749)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1749!1 String)
(assert (= var1749!1 ""))
(define-const var427 var1981 (previous/-1119108017 var3279)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
(assert (not (not (= var427 null-var1981)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var1749!1 "||-")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("||-") 
(declare-const var1749!2 String)
(assert (= var1749!2 (str.++ var1749!1 "||-")))
 ; Statement: goto [?= $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>] 
(assert true) ; Non Conditional
(define-const var3663 Int (idx/-1119108017 var3279)) ; Statement: $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
;(assert (append/-1001720160 var1749!2 var3663)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1749!3 String)
(assert (str.prefixof var1749!2 var1749!3))
(define-const var874 var1981 (next/-1119108017 var3279)) ; Statement: $r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next> 
 ; Statement: if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(assert (not (= var874 null-var1981))) ; Cond: $r5 != null 
(assert true)
(define-const var2705 String (append/672562846 var1749!3 " -> ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var1749!4 String)
(assert (= var1749!4 (str.++ var1749!3 " -> ")))
(define-const var1138 var1981 (next/-1119108017 var3279)) ; Statement: $r6 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next> 
(define-const var1524 Int (idx/-1119108017 var1138)) ; Statement: $i2 = $r6.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
;(assert (append/-1001720160 var2705 var1524)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2705!1 String)
(assert (str.prefixof var2705 var2705!1))
(assert true) ; Non Conditional
(assert true)
(define-const var681 String (toString/-2075883882 var1749!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), previous/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), idx/-1119108017=([org.apache.lucene.geo.Tessellator$Node], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), next/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1981=org.apache.lucene.geo.Tessellator$Node, var3279=r1, var1749=$r0, var427=$r2, var3663=$i1, var874=$r5, var2705=$r7, var1138=$r6, var1524=$i2, var681=$r8}
; {org.apache.lucene.geo.Tessellator$Node=var1981, r1=var3279, $r0=var1749, $r2=var427, $i1=var3663, $r5=var874, $r7=var2705, $r6=var1138, $i2=var1524, $r8=var681}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Tessellator$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("||-");	goto [?= $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>];	$i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next>;	if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r6 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next>;	$i2 = $r6.<org.apache.lucene.geo.Tessellator$Node: int idx>;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5