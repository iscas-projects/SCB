(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var887 0)
(declare-sort var863 0)
(declare-sort var1859 0)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPathSource/-787522163 (var887) var1859)
(declare-fun var3021-init () var3021)
(declare-fun <init>/875830710 (var3021 String) void)
(declare-const null-var887 var887)
(declare-const null-String String)
(declare-const null-var1859 var1859)
(declare-const var1656 var887) ; Statement: r5 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl 
(assert (not (= var1656 null-var887)))
(declare-const var2450 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2450 null-String)))
(define-const var2119 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2119)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2119!1 String)
(assert (= var2119!1 ""))
(assert true)
(define-const var2512 String (append/672562846 var2119!1 "Unable to resolve attribute [")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve attribute [") 
(declare-const var2119!2 String)
(assert (= var2119!2 (str.++ var2119!1 "Unable to resolve attribute [")))
(assert true)
(define-const var1208 String (append/672562846 var2512 var2450)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2512!1 String)
(assert (= var2512!1 (str.++ var2512 var2450)))
(assert true)
(define-const var1524 String (append/672562846 var1208 "] against path")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] against path") 
(declare-const var1208!1 String)
(assert (= var1208!1 (str.++ var1208 "] against path")))
(assert true)
(define-const var1952 String (toString/-2075883882 var1524)) ; Statement: r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1447 var1859 (getPathSource/-787522163 var1656)) ; Statement: r6 = virtualinvoke r5.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>() 
 ; Statement: if r6 == null goto $r7 = new java.lang.IllegalArgumentException 
(assert (= var1447 null-var1859)) ; Cond: r6 == null 
(define-const var2839 var3021 var3021-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2839 var1952)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r14) 

(declare-const var2839!1 var3021)
(declare-const var1952!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPathSource/-787522163=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathSource), var3021-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var887=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var1656=r5, var2450=r1, var863=null_type, var2119=$r0, var2512=$r2, var1208=$r3, var1524=$r4, var1952=r14, var1859=org.hibernate.query.criteria.internal.PathSource, var1447=r6, var3021=java.lang.IllegalArgumentException, var2839=$r7}
; {org.hibernate.query.criteria.internal.path.AbstractPathImpl=var887, r5=var1656, r1=var2450, null_type=var863, $r0=var2119, $r2=var2512, $r3=var1208, $r4=var1524, r14=var1952, org.hibernate.query.criteria.internal.PathSource=var1859, r6=var1447, java.lang.IllegalArgumentException=var3021, $r7=var2839}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve attribute [");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] against path");	r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = virtualinvoke r5.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: org.hibernate.query.criteria.internal.PathSource getPathSource()>();	if r6 == null goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r14);	return $r7
;block_num 2