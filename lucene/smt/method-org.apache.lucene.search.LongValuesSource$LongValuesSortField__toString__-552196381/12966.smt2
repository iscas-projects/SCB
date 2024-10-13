(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1920 0)
(declare-sort var2957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getField/665941068 (var2957) String)
(declare-fun cast-from-var1920-to-var2957 (var1920) var2957)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reverse/-543715700 (var2957) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1920 var1920)
(declare-const var1203 var1920) ; Statement: r1 := @this: org.apache.lucene.search.LongValuesSource$LongValuesSortField 
(assert (not (= var1203 null-var1920)))
(define-const var3555 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3555 "<")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("<") 
(declare-const var3555!1 String)
(assert (= var3555!1 "<"))
(assert true)
(define-const var3965 String (getField/665941068 (cast-from-var1920-to-var2957 var1203))) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.search.LongValuesSource$LongValuesSortField: java.lang.String getField()>() 
(assert true)
(define-const var3630 String (append/672562846 var3555!1 var3965)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3555!2 String)
(assert (= var3555!2 (str.++ var3555!1 var3965)))
(assert true)
;(assert (append/672562846 var3630 ">")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3630!1 String)
(assert (= var3630!1 (str.++ var3630 ">")))
(define-const var1580 Bool (reverse/-543715700 (cast-from-var1920-to-var2957 var1203))) ; Statement: $z0 = r1.<org.apache.lucene.search.LongValuesSource$LongValuesSortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1580 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2410 String (toString/-2075883882 var3555!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getField/665941068=([org.apache.lucene.search.SortField], java.lang.String), cast-from-var1920-to-var2957=([org.apache.lucene.search.LongValuesSource$LongValuesSortField], org.apache.lucene.search.SortField), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1920=org.apache.lucene.search.LongValuesSource$LongValuesSortField, var1203=r1, var3555=$r0, var2957=org.apache.lucene.search.SortField, var3965=$r2, var3630=$r3, var1580=$z0, var2410=$r4}
; {org.apache.lucene.search.LongValuesSource$LongValuesSortField=var1920, r1=var1203, $r0=var3555, org.apache.lucene.search.SortField=var2957, $r2=var3965, $r3=var3630, $z0=var1580, $r4=var2410}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.LongValuesSource$LongValuesSortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("<");	$r2 = virtualinvoke r1.<org.apache.lucene.search.LongValuesSource$LongValuesSortField: java.lang.String getField()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$z0 = r1.<org.apache.lucene.search.LongValuesSource$LongValuesSortField: boolean reverse>;	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2