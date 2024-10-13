(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2757 0)
(declare-sort var2062 0)
(declare-sort var2690 0)
(declare-sort var3444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _master/-1286692137 (var2757) var2062)
(declare-fun var2690-init () var2690)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3444) String)
(declare-fun cast-from-var2757-to-var3444 (var2757) var3444)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2690 String) void)
(declare-const null-var2757 var2757)
(declare-const null-var2062 var2062)
(declare-const var3557 var2757) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideLayout 
(assert (not (= var3557 null-var2757)))
(define-const var1370 var2062 (_master/-1286692137 var3557)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
(assert (not (= var1370 null-var2062))) ; Cond: $r1 != null 
(define-const var3566 var2062 (_master/-1286692137 var3557)) ; Statement: $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
(assert (not (not (= var3566 null-var2062)))) ; Negate: Cond: $r2 != null  
(define-const var3384 var2690 var2690-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var3013 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3013)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3013!1 String)
(assert (= var3013!1 ""))
(assert true)
(define-const var1632 String (append/672562846 var3013!1 "SlideMaster was not found for ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SlideMaster was not found for ") 
(declare-const var3013!2 String)
(assert (= var3013!2 (str.++ var3013!1 "SlideMaster was not found for ")))
(assert true)
(define-const var1285 String (append/-1031950772 var1632 (cast-from-var2757-to-var3444 var3557))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1632!1 String)
(assert (str.prefixof var1632 var1632!1))
(assert true)
(define-const var939 String (toString/-2075883882 var1285)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3384 var939)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3384!1 var2690)
(declare-const var939!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {_master/-1286692137=([org.apache.poi.xslf.usermodel.XSLFSlideLayout], org.apache.poi.xslf.usermodel.XSLFSlideMaster), var2690-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2757-to-var3444=([org.apache.poi.xslf.usermodel.XSLFSlideLayout], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2757=org.apache.poi.xslf.usermodel.XSLFSlideLayout, var3557=r0, var2062=org.apache.poi.xslf.usermodel.XSLFSlideMaster, var1370=$r1, var3566=$r2, var2690=java.lang.IllegalStateException, var3384=$r4, var3013=$r5, var1632=$r6, var3444=java.lang.Object, var1285=$r7, var939=$r8}
; {org.apache.poi.xslf.usermodel.XSLFSlideLayout=var2757, r0=var3557, org.apache.poi.xslf.usermodel.XSLFSlideMaster=var2062, $r1=var1370, $r2=var3566, java.lang.IllegalStateException=var2690, $r4=var3384, $r5=var3013, $r6=var1632, java.lang.Object=var3444, $r7=var1285, $r8=var939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideLayout;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	$r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SlideMaster was not found for ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 3