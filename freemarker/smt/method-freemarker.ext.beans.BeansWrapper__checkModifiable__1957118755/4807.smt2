(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var355 0)
(declare-sort var145 0)
(declare-sort var3301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writeProtected/-302782480 (var355) Bool)
(declare-fun var145-init () var145)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3301) ClassObject)
(declare-fun cast-from-var355-to-var3301 (var355) var3301)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var145 String) void)
(declare-const null-var355 var355)
(declare-const var952 var355) ; Statement: r0 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var952 null-var355)))
(define-const var558 Bool (writeProtected/-302782480 var952)) ; Statement: $z0 = r0.<freemarker.ext.beans.BeansWrapper: boolean writeProtected> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var558 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1421 var145 var145-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var3670 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3670)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3670!1 String)
(assert (= var3670!1 ""))
(assert true)
(define-const var1625 String (append/672562846 var3670!1 "Can\u0027t modify the ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t modify the ") 
(declare-const var3670!2 String)
(assert (= var3670!2 (str.++ var3670!1 "Can\u0027t modify the ")))
(assert true)
(define-const var3048 ClassObject (getClass/1258963082 (cast-from-var355-to-var3301 var952))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1445 String (getName/-1958580599 var3048)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2666 String (append/672562846 var1625 var1445)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1625!1 String)
(assert (= var1625!1 (str.++ var1625 var1445)))
(assert true)
(define-const var3890 String (append/672562846 var2666 " object, as it was write protected.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" object, as it was write protected.") 
(declare-const var2666!1 String)
(assert (= var2666!1 (str.++ var2666 " object, as it was write protected.")))
(assert true)
(define-const var688 String (toString/-2075883882 var3890)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1421 var688)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1421!1 var145)
(declare-const var688!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {writeProtected/-302782480=([freemarker.ext.beans.BeansWrapper], boolean), var145-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var355-to-var3301=([freemarker.ext.beans.BeansWrapper], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var355=freemarker.ext.beans.BeansWrapper, var952=r0, var558=$z0, var145=java.lang.IllegalStateException, var1421=$r1, var3670=$r2, var1625=$r5, var3301=java.lang.Object, var3048=$r3, var1445=$r4, var2666=$r6, var3890=$r7, var688=$r8}
; {freemarker.ext.beans.BeansWrapper=var355, r0=var952, $z0=var558, java.lang.IllegalStateException=var145, $r1=var1421, $r2=var3670, $r5=var1625, java.lang.Object=var3301, $r3=var3048, $r4=var1445, $r6=var2666, $r7=var3890, $r8=var688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.BeansWrapper;	$z0 = r0.<freemarker.ext.beans.BeansWrapper: boolean writeProtected>;	if $z0 == 0 goto return;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t modify the ");	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" object, as it was write protected.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2