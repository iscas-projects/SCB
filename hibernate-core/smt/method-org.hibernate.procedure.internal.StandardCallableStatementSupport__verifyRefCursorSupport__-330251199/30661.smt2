(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1674 0)
(declare-sort var1311 0)
(declare-sort var246 0)
(declare-sort var2470 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsRefCursors/-535395643 (var1674) Bool)
(declare-fun var246-init () var246)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2470) ClassObject)
(declare-fun cast-from-var1311-to-var2470 (var1311) var2470)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var246 String) void)
(declare-fun cast-from-var246-to-var1148 (var246) var1148)
(declare-const null-var1674 var1674)
(declare-const null-var1311 var1311)
(declare-const var810 var1674) ; Statement: r0 := @this: org.hibernate.procedure.internal.StandardCallableStatementSupport 
(assert (not (= var810 null-var1674)))
(declare-const var814 var1311) ; Statement: r3 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var814 null-var1311)))
(define-const var1234 Bool (supportsRefCursors/-535395643 var810)) ; Statement: $z0 = r0.<org.hibernate.procedure.internal.StandardCallableStatementSupport: boolean supportsRefCursors> 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1234 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1437 var246 var246-init) ; Statement: $r11 = new org.hibernate.QueryException 
(define-const var2945 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2945)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2945!1 String)
(assert (= var2945!1 ""))
(assert true)
(define-const var2949 String (append/672562846 var2945!1 "Dialect [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dialect [") 
(declare-const var2945!2 String)
(assert (= var2945!2 (str.++ var2945!1 "Dialect [")))
(assert true)
(define-const var3024 ClassObject (getClass/1258963082 (cast-from-var1311-to-var2470 var814))) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var57 String (getName/-1958580599 var3024)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2148 String (append/672562846 var2949 var57)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2949!1 String)
(assert (= var2949!1 (str.++ var2949 var57)))
(assert true)
(define-const var992 String (append/672562846 var2148 "] not known to support REF_CURSOR parameters")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not known to support REF_CURSOR parameters") 
(declare-const var2148!1 String)
(assert (= var2148!1 (str.++ var2148 "] not known to support REF_CURSOR parameters")))
(assert true)
(define-const var1090 String (toString/-2075883882 var992)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var1437 var1090)) ; Statement: specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var1437!1 var246)
(declare-const var1090!1 String)
(define-const var3199 var1148 (cast-from-var246-to-var1148 var1437!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsRefCursors/-535395643=([org.hibernate.procedure.internal.StandardCallableStatementSupport], boolean), var246-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1311-to-var2470=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var246-to-var1148=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1674=org.hibernate.procedure.internal.StandardCallableStatementSupport, var810=r0, var1311=org.hibernate.dialect.Dialect, var814=r3, var1234=$z0, var246=org.hibernate.QueryException, var1437=$r11, var2945=$r10, var2949=$r6, var2470=java.lang.Object, var3024=$r4, var57=$r5, var2148=$r7, var992=$r8, var1090=$r9, var1148=java.lang.Throwable, var3199=$r12}
; {org.hibernate.procedure.internal.StandardCallableStatementSupport=var1674, r0=var810, org.hibernate.dialect.Dialect=var1311, r3=var814, $z0=var1234, org.hibernate.QueryException=var246, $r11=var1437, $r10=var2945, $r6=var2949, java.lang.Object=var2470, $r4=var3024, $r5=var57, $r7=var2148, $r8=var992, $r9=var1090, java.lang.Throwable=var1148, $r12=var3199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.procedure.internal.StandardCallableStatementSupport;	r3 := @parameter0: org.hibernate.dialect.Dialect;	$z0 = r0.<org.hibernate.procedure.internal.StandardCallableStatementSupport: boolean supportsRefCursors>;	if $z0 != 0 goto return;	$r11 = new org.hibernate.QueryException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dialect [");	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not known to support REF_CURSOR parameters");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2