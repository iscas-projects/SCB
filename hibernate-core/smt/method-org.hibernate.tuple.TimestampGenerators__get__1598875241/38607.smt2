(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var984 0)
(declare-sort var2714 0)
(declare-sort var3748 0)
(declare-sort var3855 0)
(declare-sort var1422 0)
(declare-sort var2297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var401_get/1088891777 (var401 var2714) var2714)
(declare-fun cast-from-ClassObject-to-var2714 (ClassObject) var2714)
(declare-fun cast-from-var2714-to-var3748 (var2714) var3748)
(declare-fun var3855_isNull/-1052882743 (var2714) Bool)
(declare-fun cast-from-var3748-to-var2714 (var3748) var2714)
(declare-fun var1422-init () var1422)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1422 String) void)
(declare-fun cast-from-var1422-to-var2297 (var1422) var2297)
(declare-const null-ClassObject ClassObject)
(declare-const var984-generators var401)
(declare-const var3729 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3729 null-ClassObject)))
(define-const var3101 var401 var984-generators) ; Statement: $r1 = <org.hibernate.tuple.TimestampGenerators: java.util.Map generators> 
(define-const var2906 var2714 (var401_get/1088891777 var3101 (cast-from-ClassObject-to-var2714 var3729))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var1569 var3748 (cast-from-var2714-to-var3748 var2906)) ; Statement: r3 = (org.hibernate.tuple.ValueGenerator) $r2 
(define-const var1153 Bool (var3855_isNull/-1052882743 (cast-from-var3748-to-var2714 var1569))) ; Statement: $z0 = staticinvoke <java.util.Objects: boolean isNull(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto return r3 
(assert (not (= (ite var1153 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1844 var1422 var1422-init) ; Statement: $r12 = new org.hibernate.HibernateException 
(define-const var3699 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3699)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3699!1 String)
(assert (= var3699!1 ""))
(assert true)
(define-const var3791 String (append/672562846 var3699!1 "Unsupported property type [")) ; Statement: $r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported property type [") 
(declare-const var3699!2 String)
(assert (= var3699!2 (str.++ var3699!1 "Unsupported property type [")))
(assert true)
(define-const var101 String (getName/-1958580599 var3729)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1975 String (append/672562846 var3791 var101)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3791!1 String)
(assert (= var3791!1 (str.++ var3791 var101)))
(assert true)
(define-const var934 String (append/672562846 var1975 "] for @CreationTimestamp or @UpdateTimestamp generator annotation")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for @CreationTimestamp or @UpdateTimestamp generator annotation") 
(declare-const var1975!1 String)
(assert (= var1975!1 (str.++ var1975 "] for @CreationTimestamp or @UpdateTimestamp generator annotation")))
(assert true)
(define-const var1359 String (toString/-2075883882 var934)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1844 var1359)) ; Statement: specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var1844!1 var1422)
(declare-const var1359!1 String)
(define-const var1371 var2297 (cast-from-var1422-to-var2297 var1844!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var401_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var2714=([java.lang.Class], java.lang.Object), cast-from-var2714-to-var3748=([java.lang.Object], org.hibernate.tuple.ValueGenerator), var3855_isNull/-1052882743=([java.lang.Object], boolean), cast-from-var3748-to-var2714=([org.hibernate.tuple.ValueGenerator], java.lang.Object), var1422-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1422-to-var2297=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3729=r0, var401=java.util.Map, var984=org.hibernate.tuple.TimestampGenerators, var3101=$r1, var2714=java.lang.Object, var2906=$r2, var3748=org.hibernate.tuple.ValueGenerator, var1569=r3, var3855=java.util.Objects, var1153=$z0, var1422=org.hibernate.HibernateException, var1844=$r12, var3699=$r11, var3791=$r7, var101=$r6, var1975=$r8, var934=$r9, var1359=$r10, var2297=java.lang.Throwable, var1371=$r13}
; {r0=var3729, java.util.Map=var401, org.hibernate.tuple.TimestampGenerators=var984, $r1=var3101, java.lang.Object=var2714, $r2=var2906, org.hibernate.tuple.ValueGenerator=var3748, r3=var1569, java.util.Objects=var3855, $z0=var1153, org.hibernate.HibernateException=var1422, $r12=var1844, $r11=var3699, $r7=var3791, $r6=var101, $r8=var1975, $r9=var934, $r10=var1359, java.lang.Throwable=var2297, $r13=var1371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = <org.hibernate.tuple.TimestampGenerators: java.util.Map generators>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (org.hibernate.tuple.ValueGenerator) $r2;	$z0 = staticinvoke <java.util.Objects: boolean isNull(java.lang.Object)>(r3);	if $z0 == 0 goto return r3;	$r12 = new org.hibernate.HibernateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported property type [");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] for @CreationTimestamp or @UpdateTimestamp generator annotation");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2