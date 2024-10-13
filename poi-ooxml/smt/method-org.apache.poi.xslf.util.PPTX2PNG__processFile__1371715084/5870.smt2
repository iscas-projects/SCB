(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3980 0)
(declare-sort var1389 0)
(declare-sort var3201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quiet/-1346839480 (var3980) Bool)
(declare-fun file/-1346839480 (var3980) var1389)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var1389) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3980_usage/-523519013 (String) void)
(declare-const null-var3980 var3980)
(declare-const null-var3201 var3201)
(declare-const var668 var3980) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var668 null-var3980)))
(define-const var2504 Bool (quiet/-1346839480 var668)) ; Statement: $z0 = r0.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
 ; Statement: if $z0 != 0 goto $r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.io.File file> 
(assert (not (= (ite var2504 1 0) 0))) ; Cond: $z0 != 0 
(define-const var552 var1389 (file/-1346839480 var668)) ; Statement: $r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.io.File file> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var176 var3201) ; Statement: $r52 := @caughtexception 
(assert (not (= var176 null-var3201)))
(define-const var2408 String String-init) ; Statement: $r97 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2408)) ; Statement: specialinvoke $r97.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2408!1 String)
(assert (= var2408!1 ""))
(assert true)
(define-const var1419 String (append/672562846 var2408!1 "\u0027")) ; Statement: $r56 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2408!2 String)
(assert (= var2408!2 (str.++ var2408!1 "\u0027")))
(define-const var2320 var1389 (file/-1346839480 var668)) ; Statement: $r54 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.io.File file> 
(assert true)
(define-const var2372 String (getName/1128186653 var2320)) ; Statement: $r55 = virtualinvoke $r54.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1622 String (append/672562846 var1419 var2372)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var1419!1 String)
(assert (= var1419!1 (str.++ var1419 var2372)))
(assert true)
(define-const var703 String (append/672562846 var1622 "\u0027: Format not supported - try to include poi-scratchpad.jar into the CLASSPATH.")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\': Format not supported - try to include poi-scratchpad.jar into the CLASSPATH.") 
(declare-const var1622!1 String)
(assert (= var1622!1 (str.++ var1622 "\u0027: Format not supported - try to include poi-scratchpad.jar into the CLASSPATH.")))
(assert true)
(define-const var572 String (toString/-2075883882 var703)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3980_usage/-523519013 var572)) ; Statement: staticinvoke <org.apache.poi.xslf.util.PPTX2PNG: void usage(java.lang.String)>($r59) 

(declare-const var572!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), file/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1128186653=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3980_usage/-523519013=([java.lang.String], void)}
; {var3980=org.apache.poi.xslf.util.PPTX2PNG, var668=r0, var2504=$z0, var1389=java.io.File, var552=$r1, var3201=org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException, var176=$r52, var2408=$r97, var1419=$r56, var2320=$r54, var2372=$r55, var1622=$r57, var703=$r58, var572=$r59}
; {org.apache.poi.xslf.util.PPTX2PNG=var3980, r0=var668, $z0=var2504, java.io.File=var1389, $r1=var552, org.apache.poi.xslf.util.PPTX2PNG$NoScratchpadException=var3201, $r52=var176, $r97=var2408, $r56=var1419, $r54=var2320, $r55=var2372, $r57=var1622, $r58=var703, $r59=var572}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTX2PNG;	$z0 = r0.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	if $z0 != 0 goto $r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.io.File file>;	$r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.io.File file>;	$r52 := @caughtexception;	$r97 = new java.lang.StringBuilder;	specialinvoke $r97.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r54 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.io.File file>;	$r55 = virtualinvoke $r54.<java.io.File: java.lang.String getName()>();	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\': Format not supported - try to include poi-scratchpad.jar into the CLASSPATH.");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.poi.xslf.util.PPTX2PNG: void usage(java.lang.String)>($r59);	return
;block_num 3