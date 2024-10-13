(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3185 0)
(declare-sort var1055 0)
(declare-sort var2909 0)
(declare-sort var455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _layout/-1636718259 (var3185) var1055)
(declare-fun var2909-init () var2909)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var455) String)
(declare-fun cast-from-var3185-to-var455 (var3185) var455)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2909 String) void)
(declare-const null-var3185 var3185)
(declare-const null-var1055 var1055)
(declare-const var907 var3185) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlide 
(assert (not (= var907 null-var3185)))
(define-const var168 var1055 (_layout/-1636718259 var907)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
(assert (not (= var168 null-var1055))) ; Cond: $r1 != null 
(define-const var39 var1055 (_layout/-1636718259 var907)) ; Statement: $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
(assert (not (not (= var39 null-var1055)))) ; Negate: Cond: $r2 != null  
(define-const var2051 var2909 var2909-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var602 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var602)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var602!1 String)
(assert (= var602!1 ""))
(assert true)
(define-const var3905 String (append/672562846 var602!1 "SlideLayout was not found for ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SlideLayout was not found for ") 
(declare-const var602!2 String)
(assert (= var602!2 (str.++ var602!1 "SlideLayout was not found for ")))
(assert true)
(define-const var2233 String (append/-1031950772 var3905 (cast-from-var3185-to-var455 var907))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3905!1 String)
(assert (str.prefixof var3905 var3905!1))
(assert true)
(define-const var3442 String (toString/-2075883882 var2233)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2051 var3442)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2051!1 var2909)
(declare-const var3442!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {_layout/-1636718259=([org.apache.poi.xslf.usermodel.XSLFSlide], org.apache.poi.xslf.usermodel.XSLFSlideLayout), var2909-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3185-to-var455=([org.apache.poi.xslf.usermodel.XSLFSlide], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3185=org.apache.poi.xslf.usermodel.XSLFSlide, var907=r0, var1055=org.apache.poi.xslf.usermodel.XSLFSlideLayout, var168=$r1, var39=$r2, var2909=java.lang.IllegalArgumentException, var2051=$r4, var602=$r5, var3905=$r6, var455=java.lang.Object, var2233=$r7, var3442=$r8}
; {org.apache.poi.xslf.usermodel.XSLFSlide=var3185, r0=var907, org.apache.poi.xslf.usermodel.XSLFSlideLayout=var1055, $r1=var168, $r2=var39, java.lang.IllegalArgumentException=var2909, $r4=var2051, $r5=var602, $r6=var3905, java.lang.Object=var455, $r7=var2233, $r8=var3442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlide;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	$r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SlideLayout was not found for ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 3