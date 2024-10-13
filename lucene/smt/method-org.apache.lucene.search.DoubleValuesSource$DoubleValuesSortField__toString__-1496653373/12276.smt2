(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2784 0)
(declare-sort var633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getField/665941068 (var633) String)
(declare-fun cast-from-var2784-to-var633 (var2784) var633)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reverse/-543715700 (var633) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2784 var2784)
(declare-const var2905 var2784) ; Statement: r1 := @this: org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField 
(assert (not (= var2905 null-var2784)))
(define-const var960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var960 "<")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("<") 
(declare-const var960!1 String)
(assert (= var960!1 "<"))
(assert true)
(define-const var905 String (getField/665941068 (cast-from-var2784-to-var633 var2905))) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField: java.lang.String getField()>() 
(assert true)
(define-const var2560 String (append/672562846 var960!1 var905)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var960!2 String)
(assert (= var960!2 (str.++ var960!1 var905)))
(assert true)
;(assert (append/672562846 var2560 ">")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2560!1 String)
(assert (= var2560!1 (str.++ var2560 ">")))
(define-const var466 Bool (reverse/-543715700 (cast-from-var2784-to-var633 var2905))) ; Statement: $z0 = r1.<org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var466 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2386 String (toString/-2075883882 var960!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getField/665941068=([org.apache.lucene.search.SortField], java.lang.String), cast-from-var2784-to-var633=([org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField], org.apache.lucene.search.SortField), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2784=org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField, var2905=r1, var960=$r0, var633=org.apache.lucene.search.SortField, var905=$r2, var2560=$r3, var466=$z0, var2386=$r4}
; {org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField=var2784, r1=var2905, $r0=var960, org.apache.lucene.search.SortField=var633, $r2=var905, $r3=var2560, $z0=var466, $r4=var2386}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("<");	$r2 = virtualinvoke r1.<org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField: java.lang.String getField()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$z0 = r1.<org.apache.lucene.search.DoubleValuesSource$DoubleValuesSortField: boolean reverse>;	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2