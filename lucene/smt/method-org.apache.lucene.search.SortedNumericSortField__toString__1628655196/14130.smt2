(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2211 0)
(declare-sort var1987 0)
(declare-sort var2630 0)
(declare-sort var3263 0)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getField/665941068 (var1987) String)
(declare-fun cast-from-var2211-to-var1987 (var2211) var1987)
(declare-fun getReverse/456721163 (var1987) Bool)
(declare-fun missingValue/-543715700 (var1987) var2630)
(declare-fun selector/-1895671876 (var2211) var3263)
(declare-fun append/-1031950772 (String var2630) String)
(declare-fun cast-from-var3263-to-var2630 (var3263) var2630)
(declare-fun type/-1895671876 (var2211) var748)
(declare-fun cast-from-var748-to-var2630 (var748) var2630)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2211 var2211)
(declare-const null-var2630 var2630)
(declare-const var1311 var2211) ; Statement: r1 := @this: org.apache.lucene.search.SortedNumericSortField 
(assert (not (= var1311 null-var2211)))
(define-const var3755 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3755)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3755!1 String)
(assert (= var3755!1 ""))
(assert true)
(define-const var3514 String (append/672562846 var3755!1 "<sortednumeric: \u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<sortednumeric: \"") 
(declare-const var3755!2 String)
(assert (= var3755!2 (str.++ var3755!1 "<sortednumeric: \u0022")))
(assert true)
(define-const var2972 String (getField/665941068 (cast-from-var2211-to-var1987 var1311))) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.search.SortedNumericSortField: java.lang.String getField()>() 
(assert true)
(define-const var3689 String (append/672562846 var3514 var2972)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3514!1 String)
(assert (= var3514!1 (str.++ var3514 var2972)))
(assert true)
;(assert (append/672562846 var3689 "\u0022>")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var3689!1 String)
(assert (= var3689!1 (str.++ var3689 "\u0022>")))
(assert true)
(define-const var873 Bool (getReverse/456721163 (cast-from-var2211-to-var1987 var1311))) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.search.SortedNumericSortField: boolean getReverse()>() 
 ; Statement: if $z0 == 0 goto $r5 = r1.<org.apache.lucene.search.SortedNumericSortField: java.lang.Object missingValue> 
(assert (= (ite var873 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2177 var2630 (missingValue/-543715700 (cast-from-var2211-to-var1987 var1311))) ; Statement: $r5 = r1.<org.apache.lucene.search.SortedNumericSortField: java.lang.Object missingValue> 
 ; Statement: if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=") 
(assert (= var2177 null-var2630)) ; Cond: $r5 == null 
(assert true)
;(assert (append/672562846 var3755!2 " selector=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=") 
(declare-const var3755!3 String)
(assert (= var3755!3 (str.++ var3755!2 " selector=")))
(define-const var1580 var3263 (selector/-1895671876 var1311)) ; Statement: $r6 = r1.<org.apache.lucene.search.SortedNumericSortField: org.apache.lucene.search.SortedNumericSelector$Type selector> 
(assert true)
;(assert (append/-1031950772 var3755!3 (cast-from-var3263-to-var2630 var1580))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3755!4 String)
(assert (str.prefixof var3755!3 var3755!4))
(assert true)
;(assert (append/672562846 var3755!4 " type=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type=") 
(declare-const var3755!5 String)
(assert (= var3755!5 (str.++ var3755!4 " type=")))
(define-const var2891 var748 (type/-1895671876 var1311)) ; Statement: $r7 = r1.<org.apache.lucene.search.SortedNumericSortField: org.apache.lucene.search.SortField$Type type> 
(assert true)
;(assert (append/-1031950772 var3755!5 (cast-from-var748-to-var2630 var2891))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3755!6 String)
(assert (str.prefixof var3755!5 var3755!6))
(assert true)
(define-const var2661 String (toString/-2075883882 var3755!6)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getField/665941068=([org.apache.lucene.search.SortField], java.lang.String), cast-from-var2211-to-var1987=([org.apache.lucene.search.SortedNumericSortField], org.apache.lucene.search.SortField), getReverse/456721163=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), selector/-1895671876=([org.apache.lucene.search.SortedNumericSortField], org.apache.lucene.search.SortedNumericSelector$Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3263-to-var2630=([org.apache.lucene.search.SortedNumericSelector$Type], java.lang.Object), type/-1895671876=([org.apache.lucene.search.SortedNumericSortField], org.apache.lucene.search.SortField$Type), cast-from-var748-to-var2630=([org.apache.lucene.search.SortField$Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2211=org.apache.lucene.search.SortedNumericSortField, var1311=r1, var3755=$r0, var3514=$r3, var1987=org.apache.lucene.search.SortField, var2972=$r2, var3689=$r4, var873=$z0, var2630=java.lang.Object, var2177=$r5, var3263=org.apache.lucene.search.SortedNumericSelector$Type, var1580=$r6, var748=org.apache.lucene.search.SortField$Type, var2891=$r7, var2661=$r8}
; {org.apache.lucene.search.SortedNumericSortField=var2211, r1=var1311, $r0=var3755, $r3=var3514, org.apache.lucene.search.SortField=var1987, $r2=var2972, $r4=var3689, $z0=var873, java.lang.Object=var2630, $r5=var2177, org.apache.lucene.search.SortedNumericSelector$Type=var3263, $r6=var1580, org.apache.lucene.search.SortField$Type=var748, $r7=var2891, $r8=var2661}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortedNumericSortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<sortednumeric: \"");	$r2 = virtualinvoke r1.<org.apache.lucene.search.SortedNumericSortField: java.lang.String getField()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$z0 = virtualinvoke r1.<org.apache.lucene.search.SortedNumericSortField: boolean getReverse()>();	if $z0 == 0 goto $r5 = r1.<org.apache.lucene.search.SortedNumericSortField: java.lang.Object missingValue>;	$r5 = r1.<org.apache.lucene.search.SortedNumericSortField: java.lang.Object missingValue>;	if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" selector=");	$r6 = r1.<org.apache.lucene.search.SortedNumericSortField: org.apache.lucene.search.SortedNumericSelector$Type selector>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" type=");	$r7 = r1.<org.apache.lucene.search.SortedNumericSortField: org.apache.lucene.search.SortField$Type type>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3