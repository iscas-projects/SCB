(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var705 0)
(declare-sort var3390 0)
(declare-sort var753 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun model/106961601 (var705) var3390)
(declare-fun var753-init () var753)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3497) ClassObject)
(declare-fun cast-from-var3390-to-var3497 (var3390) var3497)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var753 String) void)
(declare-const null-var705 var705)
(declare-const var2946 var705) ; Statement: r0 := @this: freemarker.ext.beans.HashAdapter 
(assert (not (= var2946 null-var705)))
(define-const var1898 var3390 (model/106961601 var2946)) ; Statement: $r1 = r0.<freemarker.ext.beans.HashAdapter: freemarker.template.TemplateHashModel model> 
(define-const var1209 Bool true) ; Statement: $z0 = $r1 instanceof freemarker.template.TemplateHashModelEx 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.UnsupportedOperationException 
(assert (= (ite var1209 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2104 var753 var753-init) ; Statement: $r2 = new java.lang.UnsupportedOperationException 
(define-const var665 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var665)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var665!1 String)
(assert (= var665!1 ""))
(assert true)
(define-const var1945 String (append/672562846 var665!1 "Operation supported only on TemplateHashModelEx. ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Operation supported only on TemplateHashModelEx. ") 
(declare-const var665!2 String)
(assert (= var665!2 (str.++ var665!1 "Operation supported only on TemplateHashModelEx. ")))
(define-const var3340 var3390 (model/106961601 var2946)) ; Statement: $r4 = r0.<freemarker.ext.beans.HashAdapter: freemarker.template.TemplateHashModel model> 
(assert true)
(define-const var3043 ClassObject (getClass/1258963082 (cast-from-var3390-to-var3497 var3340))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var737 String (getName/-1958580599 var3043)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2333 String (append/672562846 var1945 var737)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1945!1 String)
(assert (= var1945!1 (str.++ var1945 var737)))
(assert true)
(define-const var3603 String (append/672562846 var2333 " does not implement it though.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement it though.") 
(declare-const var2333!1 String)
(assert (= var2333!1 (str.++ var2333 " does not implement it though.")))
(assert true)
(define-const var1720 String (toString/-2075883882 var3603)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2104 var1720)) ; Statement: specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r10) 

(declare-const var2104!1 var753)
(declare-const var1720!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {model/106961601=([freemarker.ext.beans.HashAdapter], freemarker.template.TemplateHashModel), var753-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3390-to-var3497=([freemarker.template.TemplateHashModel], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var705=freemarker.ext.beans.HashAdapter, var2946=r0, var3390=freemarker.template.TemplateHashModel, var1898=$r1, var1209=$z0, var753=java.lang.UnsupportedOperationException, var2104=$r2, var665=$r3, var1945=$r7, var3340=$r4, var3497=java.lang.Object, var3043=$r5, var737=$r6, var2333=$r8, var3603=$r9, var1720=$r10}
; {freemarker.ext.beans.HashAdapter=var705, r0=var2946, freemarker.template.TemplateHashModel=var3390, $r1=var1898, $z0=var1209, java.lang.UnsupportedOperationException=var753, $r2=var2104, $r3=var665, $r7=var1945, $r4=var3340, java.lang.Object=var3497, $r5=var3043, $r6=var737, $r8=var2333, $r9=var3603, $r10=var1720}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.HashAdapter;	$r1 = r0.<freemarker.ext.beans.HashAdapter: freemarker.template.TemplateHashModel model>;	$z0 = $r1 instanceof freemarker.template.TemplateHashModelEx;	if $z0 == 0 goto $r2 = new java.lang.UnsupportedOperationException;	$r2 = new java.lang.UnsupportedOperationException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Operation supported only on TemplateHashModelEx. ");	$r4 = r0.<freemarker.ext.beans.HashAdapter: freemarker.template.TemplateHashModel model>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement it though.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r10);	throw $r2
;block_num 2