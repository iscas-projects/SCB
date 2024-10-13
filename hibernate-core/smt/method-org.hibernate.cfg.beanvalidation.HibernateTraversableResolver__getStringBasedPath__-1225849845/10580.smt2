(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2622 0)
(declare-sort var2036 0)
(declare-sort var3986 0)
(declare-sort var71 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3986_iterator/-1089954711 (var3986) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2036_getName/942764273 (var2036) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2622 var2622)
(declare-const null-var2036 var2036)
(declare-const null-var3986 var3986)
(declare-const null-String String)
(declare-const var3897 var2622) ; Statement: r18 := @this: org.hibernate.cfg.beanvalidation.HibernateTraversableResolver 
(assert (not (= var3897 null-var2622)))
(declare-const var766 var2036) ; Statement: r3 := @parameter0: javax.validation.Path$Node 
(assert (not (= var766 null-var2036)))
(declare-const var222 var3986) ; Statement: r1 := @parameter1: javax.validation.Path 
(assert (not (= var222 null-var3986)))
(define-const var3520 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3520)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3520!1 String)
(assert (= var3520!1 ""))
(define-const var3833 Iterator (var3986_iterator/-1089954711 var222)) ; Statement: r2 = interfaceinvoke r1.<javax.validation.Path: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2508 Bool (Iterator_hasNext/-1669924200 var3833)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
(assert (= (ite var2508 1 0) 0)) ; Cond: $z0 == 0 
(define-const var852 String (var2036_getName/942764273 var766)) ; Statement: $r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
 ; Statement: if $r4 != null goto $r5 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
(assert (not (= var852 null-String))) ; Cond: $r4 != null 
(define-const var3785 String (var2036_getName/942764273 var766)) ; Statement: $r5 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3520!1 var3785)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3520!2 String)
(assert (= var3520!2 (str.++ var3520!1 var3785)))
(assert true)
(define-const var131 String (toString/-2075883882 var3520!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3986_iterator/-1089954711=([javax.validation.Path], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2036_getName/942764273=([javax.validation.Path$Node], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2622=org.hibernate.cfg.beanvalidation.HibernateTraversableResolver, var3897=r18, var2036=javax.validation.Path$Node, var766=r3, var3986=javax.validation.Path, var222=r1, var3520=$r0, var3833=r2, var2508=$z0, var852=$r4, var71=null_type, var3785=$r5, var131=$r6}
; {org.hibernate.cfg.beanvalidation.HibernateTraversableResolver=var2622, r18=var3897, javax.validation.Path$Node=var2036, r3=var766, javax.validation.Path=var3986, r1=var222, $r0=var3520, r2=var3833, $z0=var2508, $r4=var852, null_type=var71, $r5=var3785, $r6=var131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: org.hibernate.cfg.beanvalidation.HibernateTraversableResolver;	r3 := @parameter0: javax.validation.Path$Node;	r1 := @parameter1: javax.validation.Path;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<javax.validation.Path: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	$r4 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	if $r4 != null goto $r5 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	$r5 = interfaceinvoke r3.<javax.validation.Path$Node: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4