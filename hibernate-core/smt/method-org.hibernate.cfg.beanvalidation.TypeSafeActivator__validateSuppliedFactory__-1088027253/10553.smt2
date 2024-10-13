(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1044 0)
(declare-sort var1138 0)
(declare-sort var1303 0)
(declare-sort var2983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1138!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1044) Bool)
(declare-fun var1303-init () var1303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getClass/1258963082 (var1044) ClassObject)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1507713506 (var1303 String) void)
(declare-fun cast-from-var1303-to-var2983 (var1303) var2983)
(declare-const null-var1044 var1044)
(declare-const var3036 var1044) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3036 null-var1044)))
(define-const var2974 ClassObject var1138!class) ; Statement: $r1 = class "Ljavax/validation/ValidatorFactory;" 
(assert true)
(define-const var2418 Bool (isInstance/451912363 var2974 var3036)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2418 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3472 var1303 var1303-init) ; Statement: $r15 = new org.hibernate.cfg.beanvalidation.IntegrationException 
(define-const var2379 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2379)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2379!1 String)
(assert (= var2379!1 ""))
(assert true)
(define-const var2727 String (append/672562846 var2379!1 "Given object was not an instance of ")) ; Statement: $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given object was not an instance of ") 
(declare-const var2379!2 String)
(assert (= var2379!2 (str.++ var2379!1 "Given object was not an instance of ")))
(define-const var812 ClassObject var1138!class) ; Statement: $r4 = class "Ljavax/validation/ValidatorFactory;" 
(assert true)
(define-const var2114 String (getName/-1958580599 var812)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var48 String (append/672562846 var2727 var2114)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2727!1 String)
(assert (= var2727!1 (str.++ var2727 var2114)))
(assert true)
(define-const var207 String (append/672562846 var48 "[")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var48!1 String)
(assert (= var48!1 (str.++ var48 "[")))
(assert true)
(define-const var247 ClassObject (getClass/1258963082 var3036)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3832 String (getName/-1958580599 var247)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1975 String (append/672562846 var207 var3832)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var207!1 String)
(assert (= var207!1 (str.++ var207 var3832)))
(assert true)
(define-const var3285 String (append/672562846 var1975 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1975!1 String)
(assert (= var1975!1 (str.++ var1975 "]")))
(assert true)
(define-const var188 String (toString/-2075883882 var3285)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1507713506 var3472 var188)) ; Statement: specialinvoke $r15.<org.hibernate.cfg.beanvalidation.IntegrationException: void <init>(java.lang.String)>($r13) 

(declare-const var3472!1 var1303)
(declare-const var188!1 String)
(define-const var2788 var2983 (cast-from-var1303-to-var2983 var3472!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var1303-init=([], org.hibernate.cfg.beanvalidation.IntegrationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1507713506=([org.hibernate.cfg.beanvalidation.IntegrationException, java.lang.String], void), cast-from-var1303-to-var2983=([org.hibernate.cfg.beanvalidation.IntegrationException], java.lang.Throwable)}
; {var1044=java.lang.Object, var3036=r0, var1138=javax.validation.ValidatorFactory, var2974=$r1, var2418=$z0, var1303=org.hibernate.cfg.beanvalidation.IntegrationException, var3472=$r15, var2379=$r14, var2727=$r6, var812=$r4, var2114=$r5, var48=$r7, var207=$r10, var247=$r8, var3832=$r9, var1975=$r11, var3285=$r12, var188=$r13, var2983=java.lang.Throwable, var2788=$r16}
; {java.lang.Object=var1044, r0=var3036, javax.validation.ValidatorFactory=var1138, $r1=var2974, $z0=var2418, org.hibernate.cfg.beanvalidation.IntegrationException=var1303, $r15=var3472, $r14=var2379, $r6=var2727, $r4=var812, $r5=var2114, $r7=var48, $r10=var207, $r8=var247, $r9=var3832, $r11=var1975, $r12=var3285, $r13=var188, java.lang.Throwable=var2983, $r16=var2788}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r1 = class "Ljavax/validation/ValidatorFactory;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto return;	$r15 = new org.hibernate.cfg.beanvalidation.IntegrationException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given object was not an instance of ");	$r4 = class "Ljavax/validation/ValidatorFactory;";	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r8 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.cfg.beanvalidation.IntegrationException: void <init>(java.lang.String)>($r13);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2