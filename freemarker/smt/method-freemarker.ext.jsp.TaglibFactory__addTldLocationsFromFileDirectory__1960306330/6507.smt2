(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var633 0)
(declare-sort var2814 0)
(declare-sort var1288 0)
(declare-sort var905 0)
(declare-sort var3262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDirectory/-2122094196 (var2814) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var905_jQuoteNoXSS/-1670165981 (var3262) String)
(declare-fun cast-from-var2814-to-var3262 (var2814) var3262)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warn/-1154811012 (var1288 String) void)
(declare-const null-var633 var633)
(declare-const null-var2814 var2814)
(declare-const var633-LOG var1288)
(declare-const var2765 var633) ; Statement: r9 := @this: freemarker.ext.jsp.TaglibFactory 
(assert (not (= var2765 null-var633)))
(declare-const var1967 var2814) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1967 null-var2814)))
(assert true)
(define-const var1594 Bool (isDirectory/-2122094196 var1967)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 == 0 goto $r2 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(assert (= (ite var1594 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2571 var1288 var633-LOG) ; Statement: $r2 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(define-const var64 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var64)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var64!1 String)
(assert (= var64!1 ""))
(assert true)
(define-const var2747 String (append/672562846 var64!1 "Skipped scanning for *.tld for non-existent directory: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipped scanning for *.tld for non-existent directory: ") 
(declare-const var64!2 String)
(assert (= var64!2 (str.++ var64!1 "Skipped scanning for *.tld for non-existent directory: ")))
(define-const var765 String (var905_jQuoteNoXSS/-1670165981 (cast-from-var2814-to-var3262 var1967))) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r0) 
(assert true)
(define-const var3116 String (append/672562846 var2747 var765)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2747!1 String)
(assert (= var2747!1 (str.++ var2747 var765)))
(assert true)
(define-const var2939 String (toString/-2075883882 var3116)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warn/-1154811012 var2571 var2939)) ; Statement: virtualinvoke $r2.<freemarker.log.Logger: void warn(java.lang.String)>($r6) 

(declare-const var2571!1 var1288)
(declare-const var2939!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isDirectory/-2122094196=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var905_jQuoteNoXSS/-1670165981=([java.lang.Object], java.lang.String), cast-from-var2814-to-var3262=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warn/-1154811012=([freemarker.log.Logger, java.lang.String], void)}
; {var633=freemarker.ext.jsp.TaglibFactory, var2765=r9, var2814=java.io.File, var1967=r0, var1594=$z0, var1288=freemarker.log.Logger, var2571=$r2, var64=$r1, var2747=$r4, var905=freemarker.template.utility.StringUtil, var3262=java.lang.Object, var765=$r3, var3116=$r5, var2939=$r6}
; {freemarker.ext.jsp.TaglibFactory=var633, r9=var2765, java.io.File=var2814, r0=var1967, $z0=var1594, freemarker.log.Logger=var1288, $r2=var2571, $r1=var64, $r4=var2747, freemarker.template.utility.StringUtil=var905, java.lang.Object=var3262, $r3=var765, $r5=var3116, $r6=var2939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: freemarker.ext.jsp.TaglibFactory;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	if $z0 == 0 goto $r2 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$r2 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipped scanning for *.tld for non-existent directory: ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<freemarker.log.Logger: void warn(java.lang.String)>($r6);	return
;block_num 3