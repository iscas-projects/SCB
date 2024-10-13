(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun x/-65988152 (var252) (Array Int Float32))
(declare-fun getLength-Arr-Float32-1 ((Array Int Float32)) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var252 var252)
(declare-const var791 var252) ; Statement: r1 := @this: org.apache.lucene.geo.XYLine 
(assert (not (= var791 null-var252)))
(define-const var464 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var464)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var464!1 String)
(assert (= var464!1 ""))
(assert true)
;(assert (append/672562846 var464!1 "XYLINE(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XYLINE(") 
(declare-const var464!2 String)
(assert (= var464!2 (str.++ var464!1 "XYLINE(")))
(define-const var3220 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1879 (Array Int Float32) (x/-65988152 var791)) ; Statement: $r2 = r1.<org.apache.lucene.geo.XYLine: float[] x> 
(define-const var3135 Int (getLength-Arr-Float32-1 var1879)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var3220 var3135)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/-1166366385 var464!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var464!3 String)
(assert (str.prefixof var464!2 var464!3))
(assert true)
(define-const var3617 String (toString/-2075883882 var464!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), x/-65988152=([org.apache.lucene.geo.XYLine], float[]), getLength-Arr-Float32-1=([float[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var252=org.apache.lucene.geo.XYLine, var791=r1, var464=$r0, var3220=i1, var1879=$r2, var3135=$i0, var3617=$r3}
; {org.apache.lucene.geo.XYLine=var252, r1=var791, $r0=var464, i1=var3220, $r2=var1879, $i0=var3135, $r3=var3617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.XYLine;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XYLINE(");	i1 = 0;	$r2 = r1.<org.apache.lucene.geo.XYLine: float[] x>;	$i0 = lengthof $r2;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3