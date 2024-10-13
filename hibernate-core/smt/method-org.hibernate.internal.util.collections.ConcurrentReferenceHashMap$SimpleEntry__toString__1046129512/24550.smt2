(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1722 0)
(declare-sort var3984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/-602228016 (var1722) var3984)
(declare-fun append/-1031950772 (String var3984) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-602228016 (var1722) var3984)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1722 var1722)
(declare-const var3117 var1722) ; Statement: r1 := @this: org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry 
(assert (not (= var3117 null-var1722)))
(define-const var3319 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3319)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3319!1 String)
(assert (= var3319!1 ""))
(define-const var955 var3984 (key/-602228016 var3117)) ; Statement: $r2 = r1.<org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry: java.lang.Object key> 
(assert true)
(define-const var2609 String (append/-1031950772 var3319!1 var955)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3319!2 String)
(assert (str.prefixof var3319!1 var3319!2))
(assert true)
(define-const var159 String (append/672562846 var2609 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var2609!1 String)
(assert (= var2609!1 (str.++ var2609 "=")))
(define-const var398 var3984 (value/-602228016 var3117)) ; Statement: $r4 = r1.<org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry: java.lang.Object value> 
(assert true)
(define-const var2141 String (append/-1031950772 var159 var398)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var159!1 String)
(assert (str.prefixof var159 var159!1))
(assert true)
(define-const var1725 String (toString/-2075883882 var2141)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/-602228016=([org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-602228016=([org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1722=org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry, var3117=r1, var3319=$r0, var3984=java.lang.Object, var955=$r2, var2609=$r3, var159=$r5, var398=$r4, var2141=$r6, var1725=$r7}
; {org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry=var1722, r1=var3117, $r0=var3319, java.lang.Object=var3984, $r2=var955, $r3=var2609, $r5=var159, $r4=var398, $r6=var2141, $r7=var1725}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry: java.lang.Object key>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = r1.<org.hibernate.internal.util.collections.ConcurrentReferenceHashMap$SimpleEntry: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1