(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun minX/-1739306981 (var3227) Float32)
(declare-fun append/991902413 (String Float32) String)
(declare-fun maxX/-1739306981 (var3227) Float32)
(declare-fun minY/-1739306981 (var3227) Float32)
(declare-fun maxY/-1739306981 (var3227) Float32)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3227 var3227)
(declare-const var458 var3227) ; Statement: r1 := @this: org.apache.lucene.geo.XYRectangle 
(assert (not (= var458 null-var3227)))
(define-const var1921 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1921)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1921!1 String)
(assert (= var1921!1 ""))
(assert true)
;(assert (append/672562846 var1921!1 "XYRectangle(x=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XYRectangle(x=") 
(declare-const var1921!2 String)
(assert (= var1921!2 (str.++ var1921!1 "XYRectangle(x=")))
(define-const var3306 Float32 (minX/-1739306981 var458)) ; Statement: $f0 = r1.<org.apache.lucene.geo.XYRectangle: float minX> 
(assert true)
;(assert (append/991902413 var1921!2 var3306)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1921!3 String)
(assert (str.prefixof var1921!2 var1921!3))
(assert true)
;(assert (append/672562846 var1921!3 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1921!4 String)
(assert (= var1921!4 (str.++ var1921!3 " TO ")))
(define-const var3420 Float32 (maxX/-1739306981 var458)) ; Statement: $f1 = r1.<org.apache.lucene.geo.XYRectangle: float maxX> 
(assert true)
;(assert (append/991902413 var1921!4 var3420)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1) 
(declare-const var1921!5 String)
(assert (str.prefixof var1921!4 var1921!5))
(assert true)
;(assert (append/672562846 var1921!5 " y=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" y=") 
(declare-const var1921!6 String)
(assert (= var1921!6 (str.++ var1921!5 " y=")))
(define-const var238 Float32 (minY/-1739306981 var458)) ; Statement: $f2 = r1.<org.apache.lucene.geo.XYRectangle: float minY> 
(assert true)
;(assert (append/991902413 var1921!6 var238)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f2) 
(declare-const var1921!7 String)
(assert (str.prefixof var1921!6 var1921!7))
(assert true)
;(assert (append/672562846 var1921!7 " TO ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var1921!8 String)
(assert (= var1921!8 (str.++ var1921!7 " TO ")))
(define-const var3796 Float32 (maxY/-1739306981 var458)) ; Statement: $f3 = r1.<org.apache.lucene.geo.XYRectangle: float maxY> 
(assert true)
;(assert (append/991902413 var1921!8 var3796)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f3) 
(declare-const var1921!9 String)
(assert (str.prefixof var1921!8 var1921!9))
(assert true)
;(assert (append/672562846 var1921!9 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1921!10 String)
(assert (= var1921!10 (str.++ var1921!9 ")")))
(assert true)
(define-const var563 String (toString/-2075883882 var1921!10)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), minX/-1739306981=([org.apache.lucene.geo.XYRectangle], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), maxX/-1739306981=([org.apache.lucene.geo.XYRectangle], float), minY/-1739306981=([org.apache.lucene.geo.XYRectangle], float), maxY/-1739306981=([org.apache.lucene.geo.XYRectangle], float), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3227=org.apache.lucene.geo.XYRectangle, var458=r1, var1921=$r0, var3306=$f0, var3420=$f1, var238=$f2, var3796=$f3, var563=$r2}
; {org.apache.lucene.geo.XYRectangle=var3227, r1=var458, $r0=var1921, $f0=var3306, $f1=var3420, $f2=var238, $f3=var3796, $r2=var563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.XYRectangle;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XYRectangle(x=");	$f0 = r1.<org.apache.lucene.geo.XYRectangle: float minX>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$f1 = r1.<org.apache.lucene.geo.XYRectangle: float maxX>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" y=");	$f2 = r1.<org.apache.lucene.geo.XYRectangle: float minY>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$f3 = r1.<org.apache.lucene.geo.XYRectangle: float maxY>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1