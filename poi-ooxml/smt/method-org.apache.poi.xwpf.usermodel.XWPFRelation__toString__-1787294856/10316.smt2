(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var938 0)
(declare-sort var3962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getContentType/-305056247 (var3962) String)
(declare-fun cast-from-var938-to-var3962 (var938) var3962)
(declare-fun getDefaultFileName/1074358836 (var3962) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var938 var938)
(declare-const var767 var938) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFRelation 
(assert (not (= var767 null-var938)))
(define-const var1650 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1650)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1650!1 String)
(assert (= var1650!1 ""))
(assert true)
(define-const var4 String (append/672562846 var1650!1 "XWPFRelation{")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XWPFRelation{") 
(declare-const var1650!2 String)
(assert (= var1650!2 (str.++ var1650!1 "XWPFRelation{")))
(assert true)
(define-const var442 String (getContentType/-305056247 (cast-from-var938-to-var3962 var767))) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var3312 String (append/672562846 var4 var442)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var4!1 String)
(assert (= var4!1 (str.++ var4 var442)))
(assert true)
(define-const var2188 String (append/672562846 var3312 "/")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 "/")))
(assert true)
(define-const var3806 String (getDefaultFileName/1074358836 (cast-from-var938-to-var3962 var767))) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFRelation: java.lang.String getDefaultFileName()>() 
(assert true)
(define-const var441 String (append/672562846 var2188 var3806)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2188!1 String)
(assert (= var2188!1 (str.++ var2188 var3806)))
(assert true)
(define-const var528 String (append/672562846 var441 "}")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var441!1 String)
(assert (= var441!1 (str.++ var441 "}")))
(assert true)
(define-const var1884 String (toString/-2075883882 var528)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var938-to-var3962=([org.apache.poi.xwpf.usermodel.XWPFRelation], org.apache.poi.ooxml.POIXMLRelation), getDefaultFileName/1074358836=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var938=org.apache.poi.xwpf.usermodel.XWPFRelation, var767=r1, var1650=$r0, var4=$r3, var3962=org.apache.poi.ooxml.POIXMLRelation, var442=$r2, var3312=$r4, var2188=$r6, var3806=$r5, var441=$r7, var528=$r8, var1884=$r9}
; {org.apache.poi.xwpf.usermodel.XWPFRelation=var938, r1=var767, $r0=var1650, $r3=var4, org.apache.poi.ooxml.POIXMLRelation=var3962, $r2=var442, $r4=var3312, $r6=var2188, $r5=var3806, $r7=var441, $r8=var528, $r9=var1884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFRelation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XWPFRelation{");	$r2 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFRelation: java.lang.String getContentType()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r5 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFRelation: java.lang.String getDefaultFileName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1