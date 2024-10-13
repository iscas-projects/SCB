(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lon/-1809948707 (var499) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun lat/-1809948707 (var499) Float64)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var499 var499)
(declare-const var1561 var499) ; Statement: r1 := @this: org.apache.lucene.geo.Point 
(assert (not (= var1561 null-var499)))
(define-const var1305 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1305)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1305!1 String)
(assert (= var1305!1 ""))
(assert true)
;(assert (append/672562846 var1305!1 "Point(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Point(") 
(declare-const var1305!2 String)
(assert (= var1305!2 (str.++ var1305!1 "Point(")))
(define-const var2687 Float64 (lon/-1809948707 var1561)) ; Statement: $d0 = r1.<org.apache.lucene.geo.Point: double lon> 
(assert true)
;(assert (append/33611274 var1305!2 var2687)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var1305!3 String)
(assert (str.prefixof var1305!2 var1305!3))
(assert true)
;(assert (append/672562846 var1305!3 ",")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1305!4 String)
(assert (= var1305!4 (str.++ var1305!3 ",")))
(define-const var2981 Float64 (lat/-1809948707 var1561)) ; Statement: $d1 = r1.<org.apache.lucene.geo.Point: double lat> 
(assert true)
;(assert (append/33611274 var1305!4 var2981)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var1305!5 String)
(assert (str.prefixof var1305!4 var1305!5))
(assert true)
;(assert (append/-1166366385 var1305!5 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1305!6 String)
(assert (str.prefixof var1305!5 var1305!6))
(assert true)
(define-const var2431 String (toString/-2075883882 var1305!6)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lon/-1809948707=([org.apache.lucene.geo.Point], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), lat/-1809948707=([org.apache.lucene.geo.Point], double), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var499=org.apache.lucene.geo.Point, var1561=r1, var1305=$r0, var2687=$d0, var2981=$d1, var2431=$r2}
; {org.apache.lucene.geo.Point=var499, r1=var1561, $r0=var1305, $d0=var2687, $d1=var2981, $r2=var2431}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Point;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Point(");	$d0 = r1.<org.apache.lucene.geo.Point: double lon>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$d1 = r1.<org.apache.lucene.geo.Point: double lat>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1