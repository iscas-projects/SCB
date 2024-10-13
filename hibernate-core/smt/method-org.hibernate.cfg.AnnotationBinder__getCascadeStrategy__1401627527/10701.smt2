(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3907 0)
(declare-sort var1365 0)
(declare-sort var2411 0)
(declare-sort var2966 0)
(declare-sort var1296 0)
(declare-sort var344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2966_convertToHibernateCascadeType/-1640980682 ((Array Int var3907)) var2411)
(declare-fun var1365_value/1268662170 (var1365) (Array Int var1296))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-1523274177 (var344) Iterator)
(declare-fun cast-from-var2411-to-var344 (var2411) var344)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun length/-171891354 (String) Int)
(declare-const null-__Array__Int__var3907__ (Array Int var3907))
(declare-const null-var1365 var1365)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1296__ (Array Int var1296))
(declare-const var1677 (Array Int var3907)) ; Statement: r0 := @parameter0: javax.persistence.CascadeType[] 
(assert (not (= var1677 null-__Array__Int__var3907__)))
(declare-const var81 var1365) ; Statement: r2 := @parameter1: org.hibernate.annotations.Cascade 
(assert (not (= var81 null-var1365)))
(declare-const var2484 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2484 null-Bool)))
(declare-const var3032 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3032 null-Bool)))
(define-const var2838 var2411 (var2966_convertToHibernateCascadeType/-1640980682 var1677)) ; Statement: r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0) 
 ; Statement: if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>() 
(assert (not (= var81 null-var1365))) ; Cond: r2 != null 
(define-const var3546 (Array Int var1296) (var1365_value/1268662170 var81)) ; Statement: $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>() 
(assert true) ; Non Conditional
 ; Statement: if $r23 == null goto (branch) 
(assert (= var3546 null-__Array__Int__var1296__)) ; Cond: $r23 == null 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var2484 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var3032 1 0) 0)) ; Cond: z1 == 0 
(define-const var516 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var516)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var516!1 String)
(assert (= var516!1 ""))
(assert true)
(define-const var2116 Iterator (iterator/-1523274177 (cast-from-var2411-to-var344 var2838))) ; Statement: $r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3209 Bool (Iterator_hasNext/-1669924200 var2116)) ; Statement: $z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var3209 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1389 Int (length/-171891354 var516!1)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r24 = "none" 
(assert (<= var1389 0)) ; Cond: $i0 <= 0 
(define-const var3915 String "none") ; Statement: $r24 = "none" 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2966_convertToHibernateCascadeType/-1640980682=([javax.persistence.CascadeType[]], java.util.EnumSet), var1365_value/1268662170=([org.hibernate.annotations.Cascade], org.hibernate.annotations.CascadeType[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-1523274177=([java.util.AbstractCollection], java.util.Iterator), cast-from-var2411-to-var344=([java.util.EnumSet], java.util.AbstractCollection), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), length/-171891354=([java.lang.StringBuilder], int)}
; {var3907=javax.persistence.CascadeType, var1677=r0, var1365=org.hibernate.annotations.Cascade, var81=r2, var2484=z0, var3032=z1, var2411=java.util.EnumSet, var2966=org.hibernate.cfg.AnnotationBinder, var2838=r1, var1296=org.hibernate.annotations.CascadeType, var3546=$r23, var516=$r3, var344=java.util.AbstractCollection, var2116=$r19, var3209=$z2, var1389=$i0, var3915=$r24}
; {javax.persistence.CascadeType=var3907, r0=var1677, org.hibernate.annotations.Cascade=var1365, r2=var81, z0=var2484, z1=var3032, java.util.EnumSet=var2411, org.hibernate.cfg.AnnotationBinder=var2966, r1=var2838, org.hibernate.annotations.CascadeType=var1296, $r23=var3546, $r3=var516, java.util.AbstractCollection=var344, $r19=var2116, $z2=var3209, $i0=var1389, $r24=var3915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @parameter0: javax.persistence.CascadeType[];	r2 := @parameter1: org.hibernate.annotations.Cascade;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0);	if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>();	$r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>();	if $r23 == null goto (branch);	if z0 == 0 goto (branch);	if z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r24 = "none";	$r24 = "none";	return $r24
;block_num 10