(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3124 0)
(declare-sort var1351 0)
(declare-sort var925 0)
(declare-sort var2393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1351-init () var1351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun superClassOrInterface/-1905509094 (var3124) ClassObject)
(declare-fun append/-1031950772 (String var925) String)
(declare-fun cast-from-ClassObject-to-var925 (ClassObject) var925)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1351 String) void)
(declare-fun cast-from-var1351-to-var2393 (var1351) var2393)
(declare-const null-var3124 var3124)
(declare-const var470 var3124) ; Statement: r2 := @this: org.hibernate.bytecode.internal.none.NoneBasicProxyFactory 
(assert (not (= var470 null-var3124)))
(define-const var3885 var1351 var1351-init) ; Statement: $r9 = new org.hibernate.HibernateException 
(define-const var2968 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2968)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2968!1 String)
(assert (= var2968!1 ""))
(assert true)
(define-const var1733 String (append/672562846 var2968!1 "NoneBasicProxyFactory is unable to generate a BasicProxy for type ")) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NoneBasicProxyFactory is unable to generate a BasicProxy for type ") 
(declare-const var2968!2 String)
(assert (= var2968!2 (str.++ var2968!1 "NoneBasicProxyFactory is unable to generate a BasicProxy for type ")))
(define-const var300 ClassObject (superClassOrInterface/-1905509094 var470)) ; Statement: $r3 = r2.<org.hibernate.bytecode.internal.none.NoneBasicProxyFactory: java.lang.Class superClassOrInterface> 
(assert true)
(define-const var763 String (append/-1031950772 var1733 (cast-from-ClassObject-to-var925 var300))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1733!1 String)
(assert (str.prefixof var1733 var1733!1))
(assert true)
(define-const var3157 String (append/672562846 var763 ". Enable a different BytecodeProvider.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Enable a different BytecodeProvider.") 
(declare-const var763!1 String)
(assert (= var763!1 (str.++ var763 ". Enable a different BytecodeProvider.")))
(assert true)
(define-const var3022 String (toString/-2075883882 var3157)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3885 var3022)) ; Statement: specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var3885!1 var1351)
(declare-const var3022!1 String)
(define-const var2441 var2393 (cast-from-var1351-to-var2393 var3885!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1351-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), superClassOrInterface/-1905509094=([org.hibernate.bytecode.internal.none.NoneBasicProxyFactory], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var925=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1351-to-var2393=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3124=org.hibernate.bytecode.internal.none.NoneBasicProxyFactory, var470=r2, var1351=org.hibernate.HibernateException, var3885=$r9, var2968=$r8, var1733=$r4, var300=$r3, var925=java.lang.Object, var763=$r5, var3157=$r6, var3022=$r7, var2393=java.lang.Throwable, var2441=$r10}
; {org.hibernate.bytecode.internal.none.NoneBasicProxyFactory=var3124, r2=var470, org.hibernate.HibernateException=var1351, $r9=var3885, $r8=var2968, $r4=var1733, $r3=var300, java.lang.Object=var925, $r5=var763, $r6=var3157, $r7=var3022, java.lang.Throwable=var2393, $r10=var2441}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.bytecode.internal.none.NoneBasicProxyFactory;	$r9 = new org.hibernate.HibernateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NoneBasicProxyFactory is unable to generate a BasicProxy for type ");	$r3 = r2.<org.hibernate.bytecode.internal.none.NoneBasicProxyFactory: java.lang.Class superClassOrInterface>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Enable a different BytecodeProvider.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 1