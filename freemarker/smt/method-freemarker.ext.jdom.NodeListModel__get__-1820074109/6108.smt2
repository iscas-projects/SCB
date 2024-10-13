(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1909 0)
(declare-sort var3991 0)
(declare-sort var924 0)
(declare-sort var400 0)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1909-init () var1909)
(declare-fun nodes/1336386696 (var1909) var3991)
(declare-fun var400-init () var400)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2693) String)
(declare-fun cast-from-var924-to-var2693 (var924) var2693)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var400 String) void)
(declare-const null-var1909 var1909)
(declare-const null-Int Int)
(declare-const null-var924 var924)
(declare-const var1851 var1909) ; Statement: r1 := @this: freemarker.ext.jdom.NodeListModel 
(assert (not (= var1851 null-var1909)))
(declare-const var3015 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3015 null-Int)))
(define-const var3367 var1909 var1909-init) ; Statement: $r0 = new freemarker.ext.jdom.NodeListModel 
(define-const var3586 var3991 (nodes/1336386696 var1851)) ; Statement: $r2 = r1.<freemarker.ext.jdom.NodeListModel: java.util.List nodes> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2926 var924) ; Statement: $r5 := @caughtexception 
(assert (not (= var2926 null-var924)))
(define-const var510 var400 var400-init) ; Statement: $r6 = new freemarker.template.TemplateModelException 
(define-const var3900 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3900)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3900!1 String)
(assert (= var3900!1 ""))
(assert true)
(define-const var1283 String (append/672562846 var3900!1 "Index out of bounds: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index out of bounds: ") 
(declare-const var3900!2 String)
(assert (= var3900!2 (str.++ var3900!1 "Index out of bounds: ")))
(assert true)
(define-const var1997 String (getMessage/849299655 (cast-from-var924-to-var2693 var2926))) ; Statement: $r8 = virtualinvoke $r5.<java.lang.IndexOutOfBoundsException: java.lang.String getMessage()>() 
(assert true)
(define-const var1957 String (append/672562846 var1283 var1997)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1283!1 String)
(assert (= var1283!1 (str.++ var1283 var1997)))
(assert true)
(define-const var3224 String (toString/-2075883882 var1957)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var510 var3224)) ; Statement: specialinvoke $r6.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r11) 

(declare-const var510!1 var400)
(declare-const var3224!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1909-init=([], freemarker.ext.jdom.NodeListModel), nodes/1336386696=([freemarker.ext.jdom.NodeListModel], java.util.List), var400-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var924-to-var2693=([java.lang.IndexOutOfBoundsException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var1909=freemarker.ext.jdom.NodeListModel, var1851=r1, var3015=i0, var3367=$r0, var3991=java.util.List, var3586=$r2, var924=java.lang.IndexOutOfBoundsException, var2926=$r5, var400=freemarker.template.TemplateModelException, var510=$r6, var3900=$r7, var1283=$r9, var2693=java.lang.Throwable, var1997=$r8, var1957=$r10, var3224=$r11}
; {freemarker.ext.jdom.NodeListModel=var1909, r1=var1851, i0=var3015, $r0=var3367, java.util.List=var3991, $r2=var3586, java.lang.IndexOutOfBoundsException=var924, $r5=var2926, freemarker.template.TemplateModelException=var400, $r6=var510, $r7=var3900, $r9=var1283, java.lang.Throwable=var2693, $r8=var1997, $r10=var1957, $r11=var3224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jdom.NodeListModel;	i0 := @parameter0: int;	$r0 = new freemarker.ext.jdom.NodeListModel;	$r2 = r1.<freemarker.ext.jdom.NodeListModel: java.util.List nodes>;	$r5 := @caughtexception;	$r6 = new freemarker.template.TemplateModelException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index out of bounds: ");	$r8 = virtualinvoke $r5.<java.lang.IndexOutOfBoundsException: java.lang.String getMessage()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2