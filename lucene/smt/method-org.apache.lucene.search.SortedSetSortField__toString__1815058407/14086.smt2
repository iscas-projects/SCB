(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2645 0)
(declare-sort var597 0)
(declare-sort var1371 0)
(declare-sort var1470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getField/665941068 (var597) String)
(declare-fun cast-from-var2645-to-var597 (var2645) var597)
(declare-fun getReverse/456721163 (var597) Bool)
(declare-fun missingValue/-543715700 (var597) var1371)
(declare-fun selector/-575826809 (var2645) var1470)
(declare-fun append/-1031950772 (String var1371) String)
(declare-fun cast-from-var1470-to-var1371 (var1470) var1371)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2645 var2645)
(declare-const null-var1371 var1371)
(declare-const var3979 var2645) ; Statement: r1 := @this: org.apache.lucene.search.SortedSetSortField 
(assert (not (= var3979 null-var2645)))
(define-const var3787 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3787)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3787!1 String)
(assert (= var3787!1 ""))
(assert true)
(define-const var2667 String (append/672562846 var3787!1 "<sortedset: \u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<sortedset: \"") 
(declare-const var3787!2 String)
(assert (= var3787!2 (str.++ var3787!1 "<sortedset: \u0022")))
(assert true)
(define-const var2950 String (getField/665941068 (cast-from-var2645-to-var597 var3979))) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.search.SortedSetSortField: java.lang.String getField()>() 
(assert true)
(define-const var540 String (append/672562846 var2667 var2950)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2667!1 String)
(assert (= var2667!1 (str.++ var2667 var2950)))
(assert true)
;(assert (append/672562846 var540 "\u0022>")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var540!1 String)
(assert (= var540!1 (str.++ var540 "\u0022>")))
(assert true)
(define-const var3680 Bool (getReverse/456721163 (cast-from-var2645-to-var597 var3979))) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.search.SortedSetSortField: boolean getReverse()>() 
 ; Statement: if $z0 == 0 goto $r5 = r1.<org.apache.lucene.search.SortedSetSortField: java.lang.Object missingValue> 
(assert (= (ite var3680 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3487 var1371 (missingValue/-543715700 (cast-from-var2645-to-var597 var3979))) ; Statement: $r5 = r1.<org.apache.lucene.search.SortedSetSortField: java.lang.Object missingValue> 
 ; Statement: if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=") 
(assert (= var3487 null-var1371)) ; Cond: $r5 == null 
(assert true)
;(assert (append/672562846 var3787!2 " selector=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=") 
(declare-const var3787!3 String)
(assert (= var3787!3 (str.++ var3787!2 " selector=")))
(define-const var2564 var1470 (selector/-575826809 var3979)) ; Statement: $r6 = r1.<org.apache.lucene.search.SortedSetSortField: org.apache.lucene.search.SortedSetSelector$Type selector> 
(assert true)
;(assert (append/-1031950772 var3787!3 (cast-from-var1470-to-var1371 var2564))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3787!4 String)
(assert (str.prefixof var3787!3 var3787!4))
(assert true)
(define-const var1910 String (toString/-2075883882 var3787!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getField/665941068=([org.apache.lucene.search.SortField], java.lang.String), cast-from-var2645-to-var597=([org.apache.lucene.search.SortedSetSortField], org.apache.lucene.search.SortField), getReverse/456721163=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), selector/-575826809=([org.apache.lucene.search.SortedSetSortField], org.apache.lucene.search.SortedSetSelector$Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1470-to-var1371=([org.apache.lucene.search.SortedSetSelector$Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2645=org.apache.lucene.search.SortedSetSortField, var3979=r1, var3787=$r0, var2667=$r3, var597=org.apache.lucene.search.SortField, var2950=$r2, var540=$r4, var3680=$z0, var1371=java.lang.Object, var3487=$r5, var1470=org.apache.lucene.search.SortedSetSelector$Type, var2564=$r6, var1910=$r7}
; {org.apache.lucene.search.SortedSetSortField=var2645, r1=var3979, $r0=var3787, $r3=var2667, org.apache.lucene.search.SortField=var597, $r2=var2950, $r4=var540, $z0=var3680, java.lang.Object=var1371, $r5=var3487, org.apache.lucene.search.SortedSetSelector$Type=var1470, $r6=var2564, $r7=var1910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortedSetSortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<sortedset: \"");	$r2 = virtualinvoke r1.<org.apache.lucene.search.SortedSetSortField: java.lang.String getField()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$z0 = virtualinvoke r1.<org.apache.lucene.search.SortedSetSortField: boolean getReverse()>();	if $z0 == 0 goto $r5 = r1.<org.apache.lucene.search.SortedSetSortField: java.lang.Object missingValue>;	$r5 = r1.<org.apache.lucene.search.SortedSetSortField: java.lang.Object missingValue>;	if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=");	$r6 = r1.<org.apache.lucene.search.SortedSetSortField: org.apache.lucene.search.SortedSetSelector$Type selector>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3