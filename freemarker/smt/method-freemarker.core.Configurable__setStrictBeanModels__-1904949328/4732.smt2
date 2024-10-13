(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var651 0)
(declare-sort var2947 0)
(declare-sort var2636 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2061!class ClassObject)
(declare-fun objectWrapper/-2041385216 (var651) var2947)
(declare-fun var2636-init () var2636)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2636 String) void)
(declare-const null-var651 var651)
(declare-const null-Bool Bool)
(declare-const var3751 var651) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var3751 null-var651)))
(declare-const var3582 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3582 null-Bool)))
(define-const var170 var2947 (objectWrapper/-2041385216 var3751)) ; Statement: $r1 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> 
(define-const var160 Bool true) ; Statement: $z0 = $r1 instanceof freemarker.ext.beans.BeansWrapper 
 ; Statement: if $z0 != 0 goto $r2 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> 
(assert (not (not (= (ite var160 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1415 var2636 var2636-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var2888 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2888)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2888!1 String)
(assert (= var2888!1 ""))
(assert true)
(define-const var319 String (append/672562846 var2888!1 "The value of the object_wrapper setting isn\u0027t a ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value of the object_wrapper setting isn\'t a ") 
(declare-const var2888!2 String)
(assert (= var2888!2 (str.++ var2888!1 "The value of the object_wrapper setting isn\u0027t a ")))
(define-const var1416 ClassObject var2061!class) ; Statement: $r6 = class "Lfreemarker/ext/beans/BeansWrapper;" 
(assert true)
(define-const var272 String (getName/-1958580599 var1416)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3711 String (append/672562846 var319 var272)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var319!1 String)
(assert (= var319!1 (str.++ var319 var272)))
(assert true)
(define-const var1585 String (append/672562846 var3711 ".")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3711!1 String)
(assert (= var3711!1 (str.++ var3711 ".")))
(assert true)
(define-const var2809 String (toString/-2075883882 var1585)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1415 var2809)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var1415!1 var2636)
(declare-const var2809!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {objectWrapper/-2041385216=([freemarker.core.Configurable], freemarker.template.ObjectWrapper), var2636-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var651=freemarker.core.Configurable, var3751=r0, var3582=z1, var2947=freemarker.template.ObjectWrapper, var170=$r1, var160=$z0, var2636=java.lang.IllegalStateException, var1415=$r4, var2888=$r5, var319=$r8, var2061=freemarker.ext.beans.BeansWrapper, var1416=$r6, var272=$r7, var3711=$r9, var1585=$r10, var2809=$r11}
; {freemarker.core.Configurable=var651, r0=var3751, z1=var3582, freemarker.template.ObjectWrapper=var2947, $r1=var170, $z0=var160, java.lang.IllegalStateException=var2636, $r4=var1415, $r5=var2888, $r8=var319, freemarker.ext.beans.BeansWrapper=var2061, $r6=var1416, $r7=var272, $r9=var3711, $r10=var1585, $r11=var2809}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.Configurable;	z1 := @parameter0: boolean;	$r1 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper>;	$z0 = $r1 instanceof freemarker.ext.beans.BeansWrapper;	if $z0 != 0 goto $r2 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper>;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value of the object_wrapper setting isn\'t a ");	$r6 = class "Lfreemarker/ext/beans/BeansWrapper;";	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2