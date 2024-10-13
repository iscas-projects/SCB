(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var1775 0)
(declare-sort var3594 0)
(declare-sort var647 0)
(declare-sort var3679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/813437137 (var647 var1775 var3594) void)
(declare-fun cast-from-var2453-to-var647 (var2453) var647)
(declare-fun getClass/1258963082 (var1775) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var3679-init () var3679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3679 String) void)
(declare-const null-var2453 var2453)
(declare-const null-var1775 var1775)
(declare-const null-var3594 var3594)
(declare-const var1190 var2453) ; Statement: r0 := @this: freemarker.ext.beans.ArrayModel 
(assert (not (= var1190 null-var2453)))
(declare-const var3450 var1775) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3450 null-var1775)))
(declare-const var2380 var3594) ; Statement: r2 := @parameter1: freemarker.ext.beans.BeansWrapper 
(assert (not (= var2380 null-var3594)))
(assert true)
;(assert (<init>/813437137 (cast-from-var2453-to-var647 var1190) var3450 var2380)) ; Statement: specialinvoke r0.<freemarker.ext.beans.BeanModel: void <init>(java.lang.Object,freemarker.ext.beans.BeansWrapper)>(r1, r2) 

(declare-const var1190!1 var2453)
(declare-const var3450!1 var1775)
(declare-const var2380!1 var3594)
(assert true)
(define-const var2469 ClassObject (getClass/1258963082 var3450!1)) ; Statement: r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2615 Bool (isArray/1369458484 var2469)) ; Statement: $z0 = virtualinvoke r3.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 != 0 goto $i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r1) 
(assert (not (not (= (ite var2615 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1731 var3679 var3679-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3401 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3401)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3401!1 String)
(assert (= var3401!1 ""))
(assert true)
(define-const var1379 String (append/672562846 var3401!1 "Object is not an array, it\u0027s ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Object is not an array, it\'s ") 
(declare-const var3401!2 String)
(assert (= var3401!2 (str.++ var3401!1 "Object is not an array, it\u0027s ")))
(assert true)
(define-const var805 ClassObject (getClass/1258963082 var3450!1)) ; Statement: $r6 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3121 String (getName/-1958580599 var805)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1215 String (append/672562846 var1379 var3121)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1379!1 String)
(assert (= var1379!1 (str.++ var1379 var3121)))
(assert true)
(define-const var3022 String (toString/-2075883882 var1215)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1731 var3022)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1731!1 var3679)
(declare-const var3022!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/813437137=([freemarker.ext.beans.BeanModel, java.lang.Object, freemarker.ext.beans.BeansWrapper], void), cast-from-var2453-to-var647=([freemarker.ext.beans.ArrayModel], freemarker.ext.beans.BeanModel), getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), var3679-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2453=freemarker.ext.beans.ArrayModel, var1190=r0, var1775=java.lang.Object, var3450=r1, var3594=freemarker.ext.beans.BeansWrapper, var2380=r2, var647=freemarker.ext.beans.BeanModel, var2469=r3, var2615=$z0, var3679=java.lang.IllegalArgumentException, var1731=$r4, var3401=$r5, var1379=$r8, var805=$r6, var3121=$r7, var1215=$r9, var3022=$r10}
; {freemarker.ext.beans.ArrayModel=var2453, r0=var1190, java.lang.Object=var1775, r1=var3450, freemarker.ext.beans.BeansWrapper=var3594, r2=var2380, freemarker.ext.beans.BeanModel=var647, r3=var2469, $z0=var2615, java.lang.IllegalArgumentException=var3679, $r4=var1731, $r5=var3401, $r8=var1379, $r6=var805, $r7=var3121, $r9=var1215, $r10=var3022}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.ArrayModel;	r1 := @parameter0: java.lang.Object;	r2 := @parameter1: freemarker.ext.beans.BeansWrapper;	specialinvoke r0.<freemarker.ext.beans.BeanModel: void <init>(java.lang.Object,freemarker.ext.beans.BeansWrapper)>(r1, r2);	r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke r3.<java.lang.Class: boolean isArray()>();	if $z0 != 0 goto $i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r1);	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Object is not an array, it\'s ");	$r6 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 2