(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3335 0)
(declare-sort var1809 0)
(declare-sort var1865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$templateSource/1563630701 (var3335) var1809)
(declare-fun var1865-init () var1865)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1809) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1865 String) void)
(declare-const null-var3335 var3335)
(declare-const var1249 var3335) ; Statement: r0 := @this: freemarker.cache.FileTemplateLoader$4 
(assert (not (= var1249 null-var3335)))
(define-const var2721 var1809 (val$templateSource/1563630701 var1249)) ; Statement: $r1 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource> 
(define-const var3456 Bool false) ; Statement: $z0 = $r1 instanceof java.io.File 
 ; Statement: if $z0 != 0 goto $r2 = new java.io.InputStreamReader 
(assert (not (not (= (ite var3456 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var58 var1865 var1865-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2732 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2732)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2732!1 String)
(assert (= var2732!1 ""))
(assert true)
(define-const var3229 String (append/672562846 var2732!1 "templateSource wasn\u0027t a File, but a: ")) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("templateSource wasn\'t a File, but a: ") 
(declare-const var2732!2 String)
(assert (= var2732!2 (str.++ var2732!1 "templateSource wasn\u0027t a File, but a: ")))
(define-const var2151 var1809 (val$templateSource/1563630701 var1249)) ; Statement: $r9 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource> 
(assert true)
(define-const var2847 ClassObject (getClass/1258963082 var2151)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var369 String (getName/-1958580599 var2847)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2150 String (append/672562846 var3229 var369)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3229!1 String)
(assert (= var3229!1 (str.++ var3229 var369)))
(assert true)
(define-const var3402 String (toString/-2075883882 var2150)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var58 var3402)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var58!1 var1865)
(declare-const var3402!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {val$templateSource/1563630701=([freemarker.cache.FileTemplateLoader$4], java.lang.Object), var1865-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3335=freemarker.cache.FileTemplateLoader$4, var1249=r0, var1809=java.lang.Object, var2721=$r1, var3456=$z0, var1865=java.lang.IllegalArgumentException, var58=$r7, var2732=$r8, var3229=$r12, var2151=$r9, var2847=$r10, var369=$r11, var2150=$r13, var3402=$r14}
; {freemarker.cache.FileTemplateLoader$4=var3335, r0=var1249, java.lang.Object=var1809, $r1=var2721, $z0=var3456, java.lang.IllegalArgumentException=var1865, $r7=var58, $r8=var2732, $r12=var3229, $r9=var2151, $r10=var2847, $r11=var369, $r13=var2150, $r14=var3402}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.FileTemplateLoader$4;	$r1 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource>;	$z0 = $r1 instanceof java.io.File;	if $z0 != 0 goto $r2 = new java.io.InputStreamReader;	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("templateSource wasn\'t a File, but a: ");	$r9 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 2