(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun previous/-1119108017 (var1648) var1648)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun idx/-1119108017 (var1648) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun next/-1119108017 (var1648) var1648)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1648 var1648)
(declare-const var2572 var1648) ; Statement: r1 := @this: org.apache.lucene.geo.Tessellator$Node 
(assert (not (= var2572 null-var1648)))
(define-const var3863 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3863)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3863!1 String)
(assert (= var3863!1 ""))
(define-const var2947 var1648 (previous/-1119108017 var2572)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous> 
(assert (not (not (= var2947 null-var1648)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var3863!1 "||-")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("||-") 
(declare-const var3863!2 String)
(assert (= var3863!2 (str.++ var3863!1 "||-")))
 ; Statement: goto [?= $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>] 
(assert true) ; Non Conditional
(define-const var3272 Int (idx/-1119108017 var2572)) ; Statement: $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx> 
(assert true)
;(assert (append/-1001720160 var3863!2 var3272)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3863!3 String)
(assert (str.prefixof var3863!2 var3863!3))
(define-const var3979 var1648 (next/-1119108017 var2572)) ; Statement: $r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next> 
 ; Statement: if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(assert (not (not (= var3979 null-var1648)))) ; Negate: Cond: $r5 != null  
(assert true)
;(assert (append/672562846 var3863!3 " -||")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -||") 
(declare-const var3863!4 String)
(assert (= var3863!4 (str.++ var3863!3 " -||")))
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3360 String (toString/-2075883882 var3863!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), previous/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), idx/-1119108017=([org.apache.lucene.geo.Tessellator$Node], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), next/-1119108017=([org.apache.lucene.geo.Tessellator$Node], org.apache.lucene.geo.Tessellator$Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1648=org.apache.lucene.geo.Tessellator$Node, var2572=r1, var3863=$r0, var2947=$r2, var3272=$i1, var3979=$r5, var3360=$r8}
; {org.apache.lucene.geo.Tessellator$Node=var1648, r1=var2572, $r0=var3863, $r2=var2947, $i1=var3272, $r5=var3979, $r8=var3360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Tessellator$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	if $r2 != null goto $r3 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node previous>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("||-");	goto [?= $i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>];	$i1 = r1.<org.apache.lucene.geo.Tessellator$Node: int idx>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = r1.<org.apache.lucene.geo.Tessellator$Node: org.apache.lucene.geo.Tessellator$Node next>;	if $r5 != null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -||");	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5