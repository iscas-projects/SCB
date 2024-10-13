(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3334 0)
(declare-sort var212 0)
(declare-sort var594 0)
(declare-sort var458 0)
(declare-sort var1556 0)
(declare-sort var383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLayouts/1833343309 (var3334) var594)
(declare-fun toLowerCase/1946809429 (String var458) String)
(declare-fun var594_get/1088891777 (var594 var1556) var1556)
(declare-fun cast-from-String-to-var1556 (String) var1556)
(declare-fun cast-from-var1556-to-var383 (var1556) var383)
(declare-const null-var3334 var3334)
(declare-const null-String String)
(declare-const var458-ROOT var458)
(declare-const var3501 var3334) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideMaster 
(assert (not (= var3501 null-var3334)))
(declare-const var3452 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3452 null-String)))
(assert true)
(define-const var1049 var594 (getLayouts/1833343309 var3501)) ; Statement: $r4 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideMaster: java.util.Map getLayouts()>() 
(define-const var2858 var458 var458-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1670 String (toLowerCase/1946809429 var3452 var2858)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2402 var1556 (var594_get/1088891777 var1049 (cast-from-String-to-var1556 var1670))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var991 var383 (cast-from-var1556-to-var383 var2402)) ; Statement: $r6 = (org.apache.poi.xslf.usermodel.XSLFSlideLayout) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getLayouts/1833343309=([org.apache.poi.xslf.usermodel.XSLFSlideMaster], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var594_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1556=([java.lang.String], java.lang.Object), cast-from-var1556-to-var383=([java.lang.Object], org.apache.poi.xslf.usermodel.XSLFSlideLayout)}
; {var3334=org.apache.poi.xslf.usermodel.XSLFSlideMaster, var3501=r0, var3452=r1, var212=null_type, var594=java.util.Map, var1049=$r4, var458=java.util.Locale, var2858=$r2, var1670=$r3, var1556=java.lang.Object, var2402=$r5, var383=org.apache.poi.xslf.usermodel.XSLFSlideLayout, var991=$r6}
; {org.apache.poi.xslf.usermodel.XSLFSlideMaster=var3334, r0=var3501, r1=var3452, null_type=var212, java.util.Map=var594, $r4=var1049, java.util.Locale=var458, $r2=var2858, $r3=var1670, java.lang.Object=var1556, $r5=var2402, org.apache.poi.xslf.usermodel.XSLFSlideLayout=var383, $r6=var991}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideMaster;	r1 := @parameter0: java.lang.String;	$r4 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideMaster: java.util.Map getLayouts()>();	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	$r6 = (org.apache.poi.xslf.usermodel.XSLFSlideLayout) $r5;	return $r6
;block_num 1