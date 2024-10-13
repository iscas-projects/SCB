(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var3883 0)
(declare-sort var2539 0)
(declare-sort var1663 0)
(declare-sort var2793 0)
(declare-sort var3099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1663_convertToHibernateCascadeType/-1640980682 ((Array Int var851)) var2539)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-1523274177 (var3099) Iterator)
(declare-fun cast-from-var2539-to-var3099 (var2539) var3099)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun length/-171891354 (String) Int)
(declare-const null-__Array__Int__var851__ (Array Int var851))
(declare-const null-var3883 var3883)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2793__ (Array Int var2793))
(declare-const var2623 (Array Int var851)) ; Statement: r0 := @parameter0: javax.persistence.CascadeType[] 
(assert (not (= var2623 null-__Array__Int__var851__)))
(declare-const var2376 var3883) ; Statement: r2 := @parameter1: org.hibernate.annotations.Cascade 
(assert (not (= var2376 null-var3883)))
(declare-const var1953 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1953 null-Bool)))
(declare-const var459 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var459 null-Bool)))
(define-const var2105 var2539 (var1663_convertToHibernateCascadeType/-1640980682 var2623)) ; Statement: r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0) 
 ; Statement: if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>() 
(assert (not (not (= var2376 null-var3883)))) ; Negate: Cond: r2 != null  
(define-const var277 (Array Int var2793) null-__Array__Int__var2793__) ; Statement: $r23 = null 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r23 == null goto (branch) 
(assert (= var277 null-__Array__Int__var2793__)) ; Cond: $r23 == null 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var1953 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var459 1 0) 0)) ; Cond: z1 == 0 
(define-const var2948 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2948)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2948!1 String)
(assert (= var2948!1 ""))
(assert true)
(define-const var872 Iterator (iterator/-1523274177 (cast-from-var2539-to-var3099 var2105))) ; Statement: $r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var86 Bool (Iterator_hasNext/-1669924200 var872)) ; Statement: $z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var86 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3405 Int (length/-171891354 var2948!1)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r24 = "none" 
(assert (<= var3405 0)) ; Cond: $i0 <= 0 
(define-const var2621 String "none") ; Statement: $r24 = "none" 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1663_convertToHibernateCascadeType/-1640980682=([javax.persistence.CascadeType[]], java.util.EnumSet), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-1523274177=([java.util.AbstractCollection], java.util.Iterator), cast-from-var2539-to-var3099=([java.util.EnumSet], java.util.AbstractCollection), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), length/-171891354=([java.lang.StringBuilder], int)}
; {var851=javax.persistence.CascadeType, var2623=r0, var3883=org.hibernate.annotations.Cascade, var2376=r2, var1953=z0, var459=z1, var2539=java.util.EnumSet, var1663=org.hibernate.cfg.AnnotationBinder, var2105=r1, var2793=org.hibernate.annotations.CascadeType, var277=$r23, var2948=$r3, var3099=java.util.AbstractCollection, var872=$r19, var86=$z2, var3405=$i0, var2621=$r24}
; {javax.persistence.CascadeType=var851, r0=var2623, org.hibernate.annotations.Cascade=var3883, r2=var2376, z0=var1953, z1=var459, java.util.EnumSet=var2539, org.hibernate.cfg.AnnotationBinder=var1663, r1=var2105, org.hibernate.annotations.CascadeType=var2793, $r23=var277, $r3=var2948, java.util.AbstractCollection=var3099, $r19=var872, $z2=var86, $i0=var3405, $r24=var2621}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @parameter0: javax.persistence.CascadeType[];	r2 := @parameter1: org.hibernate.annotations.Cascade;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0);	if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>();	$r23 = null;	goto [?= (branch)];	if $r23 == null goto (branch);	if z0 == 0 goto (branch);	if z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r24 = "none";	$r24 = "none";	return $r24
;block_num 10