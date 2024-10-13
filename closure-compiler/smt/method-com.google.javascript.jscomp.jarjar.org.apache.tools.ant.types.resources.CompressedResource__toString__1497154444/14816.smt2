(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var546 0)
(declare-sort var139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCompressionName/-1723502851 (var546) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1668676610 (var139) String)
(declare-fun cast-from-var546-to-var139 (var546) var139)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var546 var546)
(declare-const var2517 var546) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource 
(assert (not (= var2517 null-var546)))
(define-const var3353 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3353)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3353!1 String)
(assert (= var3353!1 ""))
(assert true)
(define-const var3524 String (getCompressionName/-1723502851 var2517)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource: java.lang.String getCompressionName()>() 
(assert true)
(define-const var107 String (append/672562846 var3353!1 var3524)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3353!2 String)
(assert (= var3353!2 (str.++ var3353!1 var3524)))
(assert true)
(define-const var825 String (append/672562846 var107 " compressed ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" compressed ") 
(declare-const var107!1 String)
(assert (= var107!1 (str.++ var107 " compressed ")))
(assert true)
(define-const var338 String (toString/1668676610 (cast-from-var546-to-var139 var2517))) ; Statement: $r4 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource: java.lang.String toString()>() 
(assert true)
(define-const var251 String (append/672562846 var825 var338)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var825!1 String)
(assert (= var825!1 (str.++ var825 var338)))
(assert true)
(define-const var97 String (toString/-2075883882 var251)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCompressionName/-1723502851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1668676610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), cast-from-var546-to-var139=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource, var2517=r1, var3353=$r0, var3524=$r2, var107=$r3, var825=$r5, var139=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var338=$r4, var251=$r6, var97=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource=var546, r1=var2517, $r0=var3353, $r2=var3524, $r3=var107, $r5=var825, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var139, $r4=var338, $r6=var251, $r7=var97}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.CompressedResource: java.lang.String getCompressionName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" compressed ");	$r4 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ContentTransformingResource: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1