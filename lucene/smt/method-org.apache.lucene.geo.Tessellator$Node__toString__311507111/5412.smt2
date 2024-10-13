(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun previous/-1119108017 (var2971) var2971)
(declare-fun idx/-1119108017 (var2971) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun next/-1119108017 (var2971) var2971)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2971 var2971)
(declare-const var1899 var2971) ; Statement: r1 := @this: org.apache.lucene.geo.Tessellator$Node 
(assert (not (= var1899 null-var2971)))
(define-const var174 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var174)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var174!1 String)
(assert (= var174!1 ""))
(define-const var2006 var2971 (previous/-1119108017 var1899)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
(assert (not (= var2006 null-var2971))) ; Cond: $r2 != null 
(define-const var2290 var2971 (previous/-1119108017 var1899)) ; Statement: $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
(define-const var2323 Int (idx/-1119108017 var2290)) ; Statement: $i0 = $r3.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
(define-const var874 String (append/-1001720160 var174!1 var2323)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var174!2 String)
(assert (str.prefixof var174!1 var174!2))
(assert true)
;(assert (append/672562846 var874 " <- ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <- ") 
(declare-const var874!1 String)
(assert (= var874!1 (str.++ var874 " <- ")))
(assert true) ; Non Conditional
(define-const var1246 Int (idx/-1119108017 var1899)) ; Statement: $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
;(assert (append/-1001720160 var174!2 var1246)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var174!3 String)
(assert (str.prefixof var174!2 var174!3))
(define-const var3171 var2971 (next/-1119108017 var1899)) ; Statement: $r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next> 
 ; Statement: if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(assert (not (= var3171 null-var2971))) ; Cond: $r5 != null 
(assert true)
(define-const var2497 String (append/672562846 var174!3 " -> ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var174!4 String)
(assert (= var174!4 (str.++ var174!3 " -> ")))
(define-const var337 var2971 (next/-1119108017 var1899)) ; Statement: $r6 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next> 
(define-const var2214 Int (idx/-1119108017 var337)) ; Statement: $i2 = $r6.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
;(assert (append/-1001720160 var2497 var2214)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2497!1 String)
(assert (str.prefixof var2497 var2497!1))
(assert true) ; Non Conditional
(assert true)
(define-const var1307 String (toString/-2075883882 var174!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), previous/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), idx/-1119108017=([org.apache.lucene.geo.Tessellator$Node], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), next/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2971=org.apache.lucene.geo.Tessellator$Node, var1899=r1, var174=$r0, var2006=$r2, var2290=$r3, var2323=$i0, var874=$r4, var1246=$i1, var3171=$r5, var2497=$r7, var337=$r6, var2214=$i2, var1307=$r8}
; {org.apache.lucene.geo.Tessellator$Node=var2971, r1=var1899, $r0=var174, $r2=var2006, $r3=var2290, $i0=var2323, $r4=var874, $i1=var1246, $r5=var3171, $r7=var2497, $r6=var337, $i2=var2214, $r8=var1307}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Tessellator$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	$r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	$i0 = $r3.<org.apache.lucene.geo.Tessellator$Node: int idx>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <- ");	$i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next>;	if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r6 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next>;	$i2 = $r6.<org.apache.lucene.geo.Tessellator$Node: int idx>;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5