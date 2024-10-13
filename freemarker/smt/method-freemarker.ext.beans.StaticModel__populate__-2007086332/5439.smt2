(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var888 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun clazz/1083137467 (var1720) ClassObject)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var888_isPublic/-426263739 (Int) Bool)
(declare-fun var3694-init () var3694)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var3694 String) void)
(declare-const null-var1720 var1720)
(declare-const var2487 var1720) ; Statement: r0 := @this: freemarker.ext.beans.StaticModel 
(assert (not (= var2487 null-var1720)))
(define-const var1716 ClassObject (clazz/1083137467 var2487)) ; Statement: $r1 = r0.<freemarker.ext.beans.StaticModel: java.lang.Class clazz> 
(assert true)
(define-const var2162 Int (getModifiers/698981592 var1716)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Class: int getModifiers()>() 
(define-const var1620 Bool (var888_isPublic/-426263739 var2162)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $r2 = r0.<freemarker.ext.beans.StaticModel: freemarker.ext.beans.BeansWrapper wrapper> 
(assert (not (not (= (ite var1620 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1930 var3694 var3694-init) ; Statement: $r46 = new freemarker.template.TemplateModelException 
(define-const var2778 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2778)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2778!1 String)
(assert (= var2778!1 ""))
(assert true)
(define-const var692 String (append/672562846 var2778!1 "Can\u0027t wrap the non-public class ")) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t wrap the non-public class ") 
(declare-const var2778!2 String)
(assert (= var2778!2 (str.++ var2778!1 "Can\u0027t wrap the non-public class ")))
(define-const var884 ClassObject (clazz/1083137467 var2487)) ; Statement: $r48 = r0.<freemarker.ext.beans.StaticModel: java.lang.Class clazz> 
(assert true)
(define-const var1339 String (getName/-1958580599 var884)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1975 String (append/672562846 var692 var1339)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var692!1 String)
(assert (= var692!1 (str.++ var692 var1339)))
(assert true)
(define-const var1236 String (toString/-2075883882 var1975)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var1930 var1236)) ; Statement: specialinvoke $r46.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r52) 

(declare-const var1930!1 var3694)
(declare-const var1236!1 String)
 ; Statement: throw $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {clazz/1083137467=([freemarker.ext.beans.StaticModel], java.lang.Class), getModifiers/698981592=([java.lang.Class], int), var888_isPublic/-426263739=([int], boolean), var3694-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var1720=freemarker.ext.beans.StaticModel, var2487=r0, var1716=$r1, var2162=$i0, var888=java.lang.reflect.Modifier, var1620=$z0, var3694=freemarker.template.TemplateModelException, var1930=$r46, var2778=$r47, var692=$r50, var884=$r48, var1339=$r49, var1975=$r51, var1236=$r52}
; {freemarker.ext.beans.StaticModel=var1720, r0=var2487, $r1=var1716, $i0=var2162, java.lang.reflect.Modifier=var888, $z0=var1620, freemarker.template.TemplateModelException=var3694, $r46=var1930, $r47=var2778, $r50=var692, $r48=var884, $r49=var1339, $r51=var1975, $r52=var1236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.StaticModel;	$r1 = r0.<freemarker.ext.beans.StaticModel: java.lang.Class clazz>;	$i0 = virtualinvoke $r1.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0);	if $z0 != 0 goto $r2 = r0.<freemarker.ext.beans.StaticModel: freemarker.ext.beans.BeansWrapper wrapper>;	$r46 = new freemarker.template.TemplateModelException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t wrap the non-public class ");	$r48 = r0.<freemarker.ext.beans.StaticModel: java.lang.Class clazz>;	$r49 = virtualinvoke $r48.<java.lang.Class: java.lang.String getName()>();	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r46.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r52);	throw $r46
;block_num 2