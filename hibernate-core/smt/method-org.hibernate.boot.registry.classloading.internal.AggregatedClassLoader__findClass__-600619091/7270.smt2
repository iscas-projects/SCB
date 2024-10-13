(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1927 0)
(declare-sort var2853 0)
(declare-sort var3567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newClassLoaderIterator/-1205850976 (var1927) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3567-init () var3567)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1087086210 (var3567 String) void)
(declare-const null-var1927 var1927)
(declare-const null-String String)
(declare-const var933 var1927) ; Statement: r0 := @this: org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader 
(assert (not (= var933 null-var1927)))
(declare-const var1459 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1459 null-String)))
(assert true)
(define-const var2119 Iterator (newClassLoaderIterator/-1205850976 var933)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader: java.util.Iterator newClassLoaderIterator()>() 
(assert true) ; Non Conditional
(define-const var3580 Bool (Iterator_hasNext/-1669924200 var2119)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.ClassNotFoundException 
(assert (= (ite var3580 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3078 var3567 var3567-init) ; Statement: $r2 = new java.lang.ClassNotFoundException 
(define-const var1280 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1280)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1280!1 String)
(assert (= var1280!1 ""))
(assert true)
(define-const var1360 String (append/672562846 var1280!1 "Could not load requested class : ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load requested class : ") 
(declare-const var1280!2 String)
(assert (= var1280!2 (str.++ var1280!1 "Could not load requested class : ")))
(assert true)
(define-const var2502 String (append/672562846 var1360 var1459)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1360!1 String)
(assert (= var1360!1 (str.++ var1360 var1459)))
(assert true)
(define-const var2744 String (toString/-2075883882 var2502)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1087086210 var3078 var2744)) ; Statement: specialinvoke $r2.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r7) 

(declare-const var3078!1 var3567)
(declare-const var2744!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newClassLoaderIterator/-1205850976=([org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3567-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var1927=org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader, var933=r0, var1459=r4, var2853=null_type, var2119=r1, var3580=$z0, var3567=java.lang.ClassNotFoundException, var3078=$r2, var1280=$r3, var1360=$r5, var2502=$r6, var2744=$r7}
; {org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader=var1927, r0=var933, r4=var1459, null_type=var2853, r1=var2119, $z0=var3580, java.lang.ClassNotFoundException=var3567, $r2=var3078, $r3=var1280, $r5=var1360, $r6=var2502, $r7=var2744}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader;	r4 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.boot.registry.classloading.internal.AggregatedClassLoader: java.util.Iterator newClassLoaderIterator()>();	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r2 = new java.lang.ClassNotFoundException;	$r2 = new java.lang.ClassNotFoundException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load requested class : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 3