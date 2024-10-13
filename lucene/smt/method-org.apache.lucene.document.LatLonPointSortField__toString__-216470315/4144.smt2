(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getField/665941068 (var401) String)
(declare-fun cast-from-var834-to-var401 (var834) var401)
(declare-fun latitude/1865506805 (var834) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun longitude/1865506805 (var834) Float64)
(declare-fun getMissingValue/-1324424712 (var834) Float64)
(declare-fun doubleValue/-2921339 (Float64) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var834 var834)
(declare-const var286 var834) ; Statement: r1 := @this: org.apache.lucene.document.LatLonPointSortField 
(assert (not (= var286 null-var834)))
(define-const var820 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var820)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var820!1 String)
(assert (= var820!1 ""))
(assert true)
;(assert (append/672562846 var820!1 "<distance:")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<distance:") 
(declare-const var820!2 String)
(assert (= var820!2 (str.++ var820!1 "<distance:")))
(assert true)
;(assert (append/-1166366385 var820!2 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var820!3 String)
(assert (str.prefixof var820!2 var820!3))
(assert true)
(define-const var3869 String (getField/665941068 (cast-from-var834-to-var401 var286))) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.document.LatLonPointSortField: java.lang.String getField()>() 
(assert true)
;(assert (append/672562846 var820!3 var3869)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var820!4 String)
(assert (= var820!4 (str.++ var820!3 var3869)))
(assert true)
;(assert (append/-1166366385 var820!4 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var820!5 String)
(assert (str.prefixof var820!4 var820!5))
(assert true)
;(assert (append/672562846 var820!5 " latitude=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" latitude=") 
(declare-const var820!6 String)
(assert (= var820!6 (str.++ var820!5 " latitude=")))
(define-const var3731 Float64 (latitude/1865506805 var286)) ; Statement: $d0 = r1.<org.apache.lucene.document.LatLonPointSortField: double latitude> 
(assert true)
;(assert (append/33611274 var820!6 var3731)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var820!7 String)
(assert (str.prefixof var820!6 var820!7))
(assert true)
;(assert (append/672562846 var820!7 " longitude=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" longitude=") 
(declare-const var820!8 String)
(assert (= var820!8 (str.++ var820!7 " longitude=")))
(define-const var736 Float64 (longitude/1865506805 var286)) ; Statement: $d1 = r1.<org.apache.lucene.document.LatLonPointSortField: double longitude> 
(assert true)
;(assert (append/33611274 var820!8 var736)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var820!9 String)
(assert (str.prefixof var820!8 var820!9))
(assert true)
(define-const var1688 Float64 (getMissingValue/-1324424712 var286)) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.document.LatLonPointSortField: java.lang.Double getMissingValue()>() 
(assert true)
(define-const var2912 Float64 (doubleValue/-2921339 var1688)) ; Statement: $d2 = virtualinvoke $r3.<java.lang.Double: double doubleValue()>() 
(define-const var15 Int (ite (fp.gt ((_ to_fp 11 53) #x7ff0000000000000) var2912) 1 (ite (fp.lt ((_ to_fp 11 53) #x7ff0000000000000) var2912) (- 1) 0))) ; Statement: $b0 = #Infinity cmpl $d2 
 ; Statement: if $b0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (= var15 0)) ; Cond: $b0 == 0 
(assert true)
;(assert (append/-1166366385 var820!9 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var820!10 String)
(assert (str.prefixof var820!9 var820!10))
(assert true)
(define-const var1539 String (toString/-2075883882 var820!10)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getField/665941068=([org.apache.lucene.search.SortField], java.lang.String), cast-from-var834-to-var401=([org.apache.lucene.document.LatLonPointSortField], org.apache.lucene.search.SortField), latitude/1865506805=([org.apache.lucene.document.LatLonPointSortField], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), longitude/1865506805=([org.apache.lucene.document.LatLonPointSortField], double), getMissingValue/-1324424712=([org.apache.lucene.document.LatLonPointSortField], java.lang.Double), doubleValue/-2921339=([java.lang.Double], double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var834=org.apache.lucene.document.LatLonPointSortField, var286=r1, var820=$r0, var401=org.apache.lucene.search.SortField, var3869=$r2, var3731=$d0, var736=$d1, var1688=$r3, var2912=$d2, var15=$b0, var1539=$r4}
; {org.apache.lucene.document.LatLonPointSortField=var834, r1=var286, $r0=var820, org.apache.lucene.search.SortField=var401, $r2=var3869, $d0=var3731, $d1=var736, $r3=var1688, $d2=var2912, $b0=var15, $r4=var1539}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonPointSortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<distance:");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke r1.<org.apache.lucene.document.LatLonPointSortField: java.lang.String getField()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" latitude=");	$d0 = r1.<org.apache.lucene.document.LatLonPointSortField: double latitude>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" longitude=");	$d1 = r1.<org.apache.lucene.document.LatLonPointSortField: double longitude>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	$r3 = virtualinvoke r1.<org.apache.lucene.document.LatLonPointSortField: java.lang.Double getMissingValue()>();	$d2 = virtualinvoke $r3.<java.lang.Double: double doubleValue()>();	$b0 = #Infinity cmpl $d2;	if $b0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2