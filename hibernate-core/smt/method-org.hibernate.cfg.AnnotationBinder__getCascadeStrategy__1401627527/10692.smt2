(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2420 0)
(declare-sort var626 0)
(declare-sort var3381 0)
(declare-sort var3936 0)
(declare-sort var2156 0)
(declare-sort var2068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3936_convertToHibernateCascadeType/-1640980682 ((Array Int var2420)) var3381)
(declare-fun var626_value/1268662170 (var626) (Array Int var2156))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-1523274177 (var2068) Iterator)
(declare-fun cast-from-var3381-to-var2068 (var3381) var2068)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun length/-171891354 (String) Int)
(declare-fun substring/-975425934 (String Int) String)
(declare-const null-__Array__Int__var2420__ (Array Int var2420))
(declare-const null-var626 var626)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2156__ (Array Int var2156))
(declare-const var2008 (Array Int var2420)) ; Statement: r0 := @parameter0: javax.persistence.CascadeType[] 
(assert (not (= var2008 null-__Array__Int__var2420__)))
(declare-const var1049 var626) ; Statement: r2 := @parameter1: org.hibernate.annotations.Cascade 
(assert (not (= var1049 null-var626)))
(declare-const var724 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var724 null-Bool)))
(declare-const var3874 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3874 null-Bool)))
(define-const var1869 var3381 (var3936_convertToHibernateCascadeType/-1640980682 var2008)) ; Statement: r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0) 
 ; Statement: if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>() 
(assert (not (= var1049 null-var626))) ; Cond: r2 != null 
(define-const var3922 (Array Int var2156) (var626_value/1268662170 var1049)) ; Statement: $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>() 
(assert true) ; Non Conditional
 ; Statement: if $r23 == null goto (branch) 
(assert (= var3922 null-__Array__Int__var2156__)) ; Cond: $r23 == null 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var724 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var3874 1 0) 0)) ; Cond: z1 == 0 
(define-const var1422 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1422)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1422!1 String)
(assert (= var1422!1 ""))
(assert true)
(define-const var2573 Iterator (iterator/-1523274177 (cast-from-var3381-to-var2068 var1869))) ; Statement: $r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var360 Bool (Iterator_hasNext/-1669924200 var2573)) ; Statement: $z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var360 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var116 Int (length/-171891354 var1422!1)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r24 = "none" 
(assert (not (<= var116 0))) ; Negate: Cond: $i0 <= 0  
(assert true)
(define-const var992 String (substring/-975425934 var1422!1 1)) ; Statement: $r24 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= return $r24] 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var3936_convertToHibernateCascadeType/-1640980682=([javax.persistence.CascadeType[]], java.util.EnumSet), var626_value/1268662170=([org.hibernate.annotations.Cascade], org.hibernate.annotations.CascadeType[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-1523274177=([java.util.AbstractCollection], java.util.Iterator), cast-from-var3381-to-var2068=([java.util.EnumSet], java.util.AbstractCollection), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), length/-171891354=([java.lang.StringBuilder], int), substring/-975425934=([java.lang.StringBuilder, int], java.lang.String)}
; {var2420=javax.persistence.CascadeType, var2008=r0, var626=org.hibernate.annotations.Cascade, var1049=r2, var724=z0, var3874=z1, var3381=java.util.EnumSet, var3936=org.hibernate.cfg.AnnotationBinder, var1869=r1, var2156=org.hibernate.annotations.CascadeType, var3922=$r23, var1422=$r3, var2068=java.util.AbstractCollection, var2573=$r19, var360=$z2, var116=$i0, var992=$r24}
; {javax.persistence.CascadeType=var2420, r0=var2008, org.hibernate.annotations.Cascade=var626, r2=var1049, z0=var724, z1=var3874, java.util.EnumSet=var3381, org.hibernate.cfg.AnnotationBinder=var3936, r1=var1869, org.hibernate.annotations.CascadeType=var2156, $r23=var3922, $r3=var1422, java.util.AbstractCollection=var2068, $r19=var2573, $z2=var360, $i0=var116, $r24=var992}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: javax.persistence.CascadeType[];	r2 := @parameter1: org.hibernate.annotations.Cascade;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0);	if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>();	$r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>();	if $r23 == null goto (branch);	if z0 == 0 goto (branch);	if z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r24 = "none";	$r24 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String substring(int)>(1);	goto [?= return $r24];	return $r24
;block_num 10