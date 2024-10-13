(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3390 0)
(declare-sort var1639 0)
(declare-sort var2199 0)
(declare-sort var1363 0)
(declare-sort var2722 0)
(declare-sort var3913 0)
(declare-sort var3954 0)
(declare-sort var3765 0)
(declare-sort var3979 0)
(declare-sort var3409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3409!class ClassObject)
(declare-fun <init>/1864152545 (var1639) void)
(declare-fun cast-from-var3390-to-var1639 (var3390) var1639)
(declare-fun var2199-init () var2199)
(declare-fun <init>/-325640736 (var2199) void)
(declare-fun cast-from-var2199-to-var1363 (var2199) var1363)
(declare-fun tags/768591902 (var3390) var1363)
(declare-fun outs/768591902 (var3390) var1363)
(declare-fun var2722_getCurrentEnvironment/-1977882473 () var2722)
(declare-fun environment/768591902 (var3390) var2722)
(declare-fun getConfiguration/-1910593647 (var2722) var3913)
(declare-fun getIncompatibleImprovements/-528438951 (var3913) var3954)
(declare-fun intValue/1676201972 (var3954) Int)
(declare-fun incompatibleImprovements/768591902 (var3390) Int)
(declare-fun getGlobalVariable/-641050368 (var2722 String) var3765)
(declare-fun var3979-init () var3979)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var3979 String) void)
(declare-const null-var3390 var3390)
(declare-const var3732 var3390) ; Statement: r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext 
(assert (not (= var3732 null-var3390)))
(assert true)
;(assert (<init>/1864152545 (cast-from-var3390-to-var1639 var3732))) ; Statement: specialinvoke r0.<javax.servlet.jsp.PageContext: void <init>()>() 

(declare-const var3732!1 var3390)
(define-const var3707 var2199 var2199-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3707)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var3707!1 var2199)
(declare-const var3732!2 var3390)
(assert (not (= var3732!2 null-var3390)))
(assert (= (tags/768591902 var3732!2) (cast-from-var2199-to-var1363 var3707!1))) ; Statement: r0.<freemarker.ext.jsp.FreeMarkerPageContext: java.util.List tags> = $r1 
(define-const var2260 var2199 var2199-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2260)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var2260!1 var2199)
(declare-const var3732!3 var3390)
(assert (not (= var3732!3 null-var3390)))
(assert (= (outs/768591902 var3732!3) (cast-from-var2199-to-var1363 var2260!1))) ; Statement: r0.<freemarker.ext.jsp.FreeMarkerPageContext: java.util.List outs> = $r2 
(define-const var2035 var2722 var2722_getCurrentEnvironment/-1977882473) ; Statement: $r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(declare-const var3732!4 var3390)
(assert (not (= var3732!4 null-var3390)))
(assert (= (environment/768591902 var3732!4) var2035)) ; Statement: r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment> = $r3 
(define-const var3293 var2722 (environment/768591902 var3732!4)) ; Statement: $r4 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment> 
(assert true)
(define-const var3519 var3913 (getConfiguration/-1910593647 var3293)) ; Statement: $r5 = virtualinvoke $r4.<freemarker.core.Environment: freemarker.template.Configuration getConfiguration()>() 
(assert true)
(define-const var972 var3954 (getIncompatibleImprovements/-528438951 var3519)) ; Statement: $r6 = virtualinvoke $r5.<freemarker.template.Configuration: freemarker.template.Version getIncompatibleImprovements()>() 
(assert true)
(define-const var2423 Int (intValue/1676201972 var972)) ; Statement: $i0 = virtualinvoke $r6.<freemarker.template.Version: int intValue()>() 
(declare-const var3732!5 var3390)
(assert (not (= var3732!5 null-var3390)))
(assert (= (incompatibleImprovements/768591902 var3732!5) var2423)) ; Statement: r0.<freemarker.ext.jsp.FreeMarkerPageContext: int incompatibleImprovements> = $i0 
(define-const var1601 var2722 (environment/768591902 var3732!5)) ; Statement: $r7 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment> 
(assert true)
(define-const var398 var3765 (getGlobalVariable/-641050368 var1601 "__FreeMarkerServlet.Application__")) ; Statement: r52 = virtualinvoke $r7.<freemarker.core.Environment: freemarker.template.TemplateModel getGlobalVariable(java.lang.String)>("__FreeMarkerServlet.Application__") 
(define-const var1803 Bool true) ; Statement: $z0 = r52 instanceof freemarker.ext.servlet.ServletContextHashModel 
 ; Statement: if $z0 != 0 goto $z1 = r52 instanceof freemarker.ext.servlet.ServletContextHashModel 
(assert (not (= (ite var1803 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3700 Bool true) ; Statement: $z1 = r52 instanceof freemarker.ext.servlet.ServletContextHashModel 
 ; Statement: if $z1 == 0 goto $r8 = new freemarker.template.TemplateModelException 
(assert (= (ite var3700 1 0) 0)) ; Cond: $z1 == 0 
(define-const var478 var3979 var3979-init) ; Statement: $r8 = new freemarker.template.TemplateModelException 
(define-const var454 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var454)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var454!1 String)
(assert (= var454!1 ""))
(assert true)
(define-const var251 String (append/672562846 var454!1 "Could not find an instance of ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find an instance of ") 
(declare-const var454!2 String)
(assert (= var454!2 (str.++ var454!1 "Could not find an instance of ")))
(define-const var401 ClassObject var3409!class) ; Statement: $r10 = class "Lfreemarker/ext/servlet/ServletContextHashModel;" 
(assert true)
(define-const var1249 String (getName/-1958580599 var401)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1199 String (append/672562846 var251 var1249)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var251!1 String)
(assert (= var251!1 (str.++ var251 var1249)))
(assert true)
(define-const var2770 String (append/672562846 var1199 " in the data model under either the name ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in the data model under either the name ") 
(declare-const var1199!1 String)
(assert (= var1199!1 (str.++ var1199 " in the data model under either the name ")))
(assert true)
(define-const var1496 String (append/672562846 var2770 "__FreeMarkerServlet.Application__")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("__FreeMarkerServlet.Application__") 
(declare-const var2770!1 String)
(assert (= var2770!1 (str.++ var2770 "__FreeMarkerServlet.Application__")))
(assert true)
(define-const var2230 String (append/672562846 var1496 " or ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or ") 
(declare-const var1496!1 String)
(assert (= var1496!1 (str.++ var1496 " or ")))
(assert true)
(define-const var577 String (append/672562846 var2230 "Application")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Application") 
(declare-const var2230!1 String)
(assert (= var2230!1 (str.++ var2230 "Application")))
(assert true)
(define-const var854 String (toString/-2075883882 var577)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var478 var854)) ; Statement: specialinvoke $r8.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r18) 

(declare-const var478!1 var3979)
(declare-const var854!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1864152545=([javax.servlet.jsp.PageContext], void), cast-from-var3390-to-var1639=([freemarker.ext.jsp.FreeMarkerPageContext], javax.servlet.jsp.PageContext), var2199-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2199-to-var1363=([java.util.ArrayList], java.util.List), tags/768591902=([freemarker.ext.jsp.FreeMarkerPageContext], java.util.List), outs/768591902=([freemarker.ext.jsp.FreeMarkerPageContext], java.util.List), var2722_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), environment/768591902=([freemarker.ext.jsp.FreeMarkerPageContext], freemarker.core.Environment), getConfiguration/-1910593647=([freemarker.core.Environment], freemarker.template.Configuration), getIncompatibleImprovements/-528438951=([freemarker.template.Configuration], freemarker.template.Version), intValue/1676201972=([freemarker.template.Version], int), incompatibleImprovements/768591902=([freemarker.ext.jsp.FreeMarkerPageContext], int), getGlobalVariable/-641050368=([freemarker.core.Environment, java.lang.String], freemarker.template.TemplateModel), var3979-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var3390=freemarker.ext.jsp.FreeMarkerPageContext, var3732=r0, var1639=javax.servlet.jsp.PageContext, var2199=java.util.ArrayList, var3707=$r1, var1363=java.util.List, var2260=$r2, var2722=freemarker.core.Environment, var2035=$r3, var3293=$r4, var3913=freemarker.template.Configuration, var3519=$r5, var3954=freemarker.template.Version, var972=$r6, var2423=$i0, var1601=$r7, var3765=freemarker.template.TemplateModel, var398=r52, var1803=$z0, var3700=$z1, var3979=freemarker.template.TemplateModelException, var478=$r8, var454=$r9, var251=$r12, var3409=freemarker.ext.servlet.ServletContextHashModel, var401=$r10, var1249=$r11, var1199=$r13, var2770=$r14, var1496=$r15, var2230=$r16, var577=$r17, var854=$r18}
; {freemarker.ext.jsp.FreeMarkerPageContext=var3390, r0=var3732, javax.servlet.jsp.PageContext=var1639, java.util.ArrayList=var2199, $r1=var3707, java.util.List=var1363, $r2=var2260, freemarker.core.Environment=var2722, $r3=var2035, $r4=var3293, freemarker.template.Configuration=var3913, $r5=var3519, freemarker.template.Version=var3954, $r6=var972, $i0=var2423, $r7=var1601, freemarker.template.TemplateModel=var3765, r52=var398, $z0=var1803, $z1=var3700, freemarker.template.TemplateModelException=var3979, $r8=var478, $r9=var454, $r12=var251, freemarker.ext.servlet.ServletContextHashModel=var3409, $r10=var401, $r11=var1249, $r13=var1199, $r14=var2770, $r15=var1496, $r16=var2230, $r17=var577, $r18=var854}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext;	specialinvoke r0.<javax.servlet.jsp.PageContext: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<freemarker.ext.jsp.FreeMarkerPageContext: java.util.List tags> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<freemarker.ext.jsp.FreeMarkerPageContext: java.util.List outs> = $r2;	$r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment> = $r3;	$r4 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;	$r5 = virtualinvoke $r4.<freemarker.core.Environment: freemarker.template.Configuration getConfiguration()>();	$r6 = virtualinvoke $r5.<freemarker.template.Configuration: freemarker.template.Version getIncompatibleImprovements()>();	$i0 = virtualinvoke $r6.<freemarker.template.Version: int intValue()>();	r0.<freemarker.ext.jsp.FreeMarkerPageContext: int incompatibleImprovements> = $i0;	$r7 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;	r52 = virtualinvoke $r7.<freemarker.core.Environment: freemarker.template.TemplateModel getGlobalVariable(java.lang.String)>("__FreeMarkerServlet.Application__");	$z0 = r52 instanceof freemarker.ext.servlet.ServletContextHashModel;	if $z0 != 0 goto $z1 = r52 instanceof freemarker.ext.servlet.ServletContextHashModel;	$z1 = r52 instanceof freemarker.ext.servlet.ServletContextHashModel;	if $z1 == 0 goto $r8 = new freemarker.template.TemplateModelException;	$r8 = new freemarker.template.TemplateModelException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find an instance of ");	$r10 = class "Lfreemarker/ext/servlet/ServletContextHashModel;";	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in the data model under either the name ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("__FreeMarkerServlet.Application__");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Application");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r18);	throw $r8
;block_num 3