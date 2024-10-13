(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var11 0)
(declare-sort var2790 0)
(declare-sort var2244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2790_getPathIdentifier/-1280971676 (var2790) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2244 String) void)
(declare-fun cast-from-var11-to-var2244 (var11) var2244)
(declare-fun pathSource/-1372721747 (var11) var2790)
(declare-const null-var11 var11)
(declare-const null-var2790 var2790)
(declare-const var3324 var11) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.IllegalDereferenceException 
(assert (not (= var3324 null-var11)))
(declare-const var2578 var2790) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.PathSource 
(assert (not (= var2578 null-var2790)))
(define-const var1468 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1468)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1468!1 String)
(assert (= var1468!1 ""))
(assert true)
(define-const var1880 String (append/672562846 var1468!1 "Illegal attempt to dereference path source [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal attempt to dereference path source [") 
(declare-const var1468!2 String)
(assert (= var1468!2 (str.++ var1468!1 "Illegal attempt to dereference path source [")))
(define-const var3026 String (var2790_getPathIdentifier/-1280971676 var2578)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var3423 String (append/672562846 var1880 var3026)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1880!1 String)
(assert (= var1880!1 (str.++ var1880 var3026)))
(assert true)
(define-const var3413 String (append/672562846 var3423 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 "]")))
(assert true)
(define-const var2135 String (toString/-2075883882 var3413)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var11-to-var2244 var3324) var2135)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var3324!1 var11)
(declare-const var2135!1 String)
(declare-const var3324!2 var11)
(assert (not (= var3324!2 null-var11)))
(assert (= (pathSource/-1372721747 var3324!2) var2578)) ; Statement: r0.<org.hibernate.query.criteria.internal.IllegalDereferenceException: org.hibernate.query.criteria.internal.PathSource pathSource> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2790_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var11-to-var2244=([org.hibernate.query.criteria.internal.IllegalDereferenceException], java.lang.RuntimeException), pathSource/-1372721747=([org.hibernate.query.criteria.internal.IllegalDereferenceException], org.hibernate.query.criteria.internal.PathSource)}
; {var11=org.hibernate.query.criteria.internal.IllegalDereferenceException, var3324=r0, var2790=org.hibernate.query.criteria.internal.PathSource, var2578=r2, var1468=$r1, var1880=$r4, var3026=$r3, var3423=$r5, var3413=$r6, var2135=$r7, var2244=java.lang.RuntimeException}
; {org.hibernate.query.criteria.internal.IllegalDereferenceException=var11, r0=var3324, org.hibernate.query.criteria.internal.PathSource=var2790, r2=var2578, $r1=var1468, $r4=var1880, $r3=var3026, $r5=var3423, $r6=var3413, $r7=var2135, java.lang.RuntimeException=var2244}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.IllegalDereferenceException;	r2 := @parameter0: org.hibernate.query.criteria.internal.PathSource;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal attempt to dereference path source [");	$r3 = interfaceinvoke r2.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	r0.<org.hibernate.query.criteria.internal.IllegalDereferenceException: org.hibernate.query.criteria.internal.PathSource pathSource> = r2;	return
;block_num 1