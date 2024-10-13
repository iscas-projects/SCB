(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun x/-2041764292 (var698) Float32)
(declare-fun append/991902413 (String Float32) String)
(declare-fun y/-2041764292 (var698) Float32)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var698 var698)
(declare-const var3680 var698) ; Statement: r1 := @this: org.apache.lucene.geo.XYPoint 
(assert (not (= var3680 null-var698)))
(define-const var2150 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2150)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2150!1 String)
(assert (= var2150!1 ""))
(assert true)
;(assert (append/672562846 var2150!1 "Point(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Point(") 
(declare-const var2150!2 String)
(assert (= var2150!2 (str.++ var2150!1 "Point(")))
(define-const var839 Float32 (x/-2041764292 var3680)) ; Statement: $f0 = r1.<org.apache.lucene.geo.XYPoint: float x> 
(assert true)
;(assert (append/991902413 var2150!2 var839)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var2150!3 String)
(assert (str.prefixof var2150!2 var2150!3))
(assert true)
;(assert (append/672562846 var2150!3 ",")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2150!4 String)
(assert (= var2150!4 (str.++ var2150!3 ",")))
(define-const var3854 Float32 (y/-2041764292 var3680)) ; Statement: $f1 = r1.<org.apache.lucene.geo.XYPoint: float y> 
(assert true)
;(assert (append/991902413 var2150!4 var3854)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1) 
(declare-const var2150!5 String)
(assert (str.prefixof var2150!4 var2150!5))
(assert true)
;(assert (append/-1166366385 var2150!5 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2150!6 String)
(assert (str.prefixof var2150!5 var2150!6))
(assert true)
(define-const var3457 String (toString/-2075883882 var2150!6)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), x/-2041764292=([org.apache.lucene.geo.XYPoint], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), y/-2041764292=([org.apache.lucene.geo.XYPoint], float), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var698=org.apache.lucene.geo.XYPoint, var3680=r1, var2150=$r0, var839=$f0, var3854=$f1, var3457=$r2}
; {org.apache.lucene.geo.XYPoint=var698, r1=var3680, $r0=var2150, $f0=var839, $f1=var3854, $r2=var3457}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.XYPoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Point(");	$f0 = r1.<org.apache.lucene.geo.XYPoint: float x>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$f1 = r1.<org.apache.lucene.geo.XYPoint: float y>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1