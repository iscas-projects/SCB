(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2814 0)
(declare-sort var1360 0)
(declare-sort var2153 0)
(declare-sort var1750 0)
(declare-sort var1188 0)
(declare-sort var271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1750_convertToHibernateCascadeType/-1640980682 ((Array Int var2814)) var2153)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-1523274177 (var271) Iterator)
(declare-fun cast-from-var2153-to-var271 (var2153) var271)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun length/-171891354 (String) Int)
(declare-fun substring/-975425934 (String Int) String)
(declare-const null-__Array__Int__var2814__ (Array Int var2814))
(declare-const null-var1360 var1360)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1188__ (Array Int var1188))
(declare-const var199 (Array Int var2814)) ; Statement: r0 := @parameter0: javax.persistence.CascadeType[] 
(assert (not (= var199 null-__Array__Int__var2814__)))
(declare-const var1183 var1360) ; Statement: r2 := @parameter1: org.hibernate.annotations.Cascade 
(assert (not (= var1183 null-var1360)))
(declare-const var2022 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2022 null-Bool)))
(declare-const var2382 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2382 null-Bool)))
(define-const var2630 var2153 (var1750_convertToHibernateCascadeType/-1640980682 var199)) ; Statement: r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0) 
 ; Statement: if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>() 
(assert (not (not (= var1183 null-var1360)))) ; Negate: Cond: r2 != null  
(define-const var2241 (Array Int var1188) null-__Array__Int__var1188__) ; Statement: $r23 = null 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r23 == null goto (branch) 
(assert (= var2241 null-__Array__Int__var1188__)) ; Cond: $r23 == null 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var2022 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var2382 1 0) 0)) ; Cond: z1 == 0 
(define-const var1868 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1868)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1868!1 String)
(assert (= var1868!1 ""))
(assert true)
(define-const var2488 Iterator (iterator/-1523274177 (cast-from-var2153-to-var271 var2630))) ; Statement: $r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var597 Bool (Iterator_hasNext/-1669924200 var2488)) ; Statement: $z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var597 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2477 Int (length/-171891354 var1868!1)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r24 = "none" 
(assert (not (<= var2477 0))) ; Negate: Cond: $i0 <= 0  
(assert true)
(define-const var3460 String (substring/-975425934 var1868!1 1)) ; Statement: $r24 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= return $r24] 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1750_convertToHibernateCascadeType/-1640980682=([javax.persistence.CascadeType[]], java.util.EnumSet), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-1523274177=([java.util.AbstractCollection], java.util.Iterator), cast-from-var2153-to-var271=([java.util.EnumSet], java.util.AbstractCollection), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), length/-171891354=([java.lang.StringBuilder], int), substring/-975425934=([java.lang.StringBuilder, int], java.lang.String)}
; {var2814=javax.persistence.CascadeType, var199=r0, var1360=org.hibernate.annotations.Cascade, var1183=r2, var2022=z0, var2382=z1, var2153=java.util.EnumSet, var1750=org.hibernate.cfg.AnnotationBinder, var2630=r1, var1188=org.hibernate.annotations.CascadeType, var2241=$r23, var1868=$r3, var271=java.util.AbstractCollection, var2488=$r19, var597=$z2, var2477=$i0, var3460=$r24}
; {javax.persistence.CascadeType=var2814, r0=var199, org.hibernate.annotations.Cascade=var1360, r2=var1183, z0=var2022, z1=var2382, java.util.EnumSet=var2153, org.hibernate.cfg.AnnotationBinder=var1750, r1=var2630, org.hibernate.annotations.CascadeType=var1188, $r23=var2241, $r3=var1868, java.util.AbstractCollection=var271, $r19=var2488, $z2=var597, $i0=var2477, $r24=var3460}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: javax.persistence.CascadeType[];	r2 := @parameter1: org.hibernate.annotations.Cascade;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r1 = staticinvoke <org.hibernate.cfg.AnnotationBinder: java.util.EnumSet convertToHibernateCascadeType(javax.persistence.CascadeType[])>(r0);	if r2 != null goto $r23 = interfaceinvoke r2.<org.hibernate.annotations.Cascade: org.hibernate.annotations.CascadeType[] value()>();	$r23 = null;	goto [?= (branch)];	if $r23 == null goto (branch);	if z0 == 0 goto (branch);	if z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke r1.<java.util.EnumSet: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r19.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r24 = "none";	$r24 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String substring(int)>(1);	goto [?= return $r24];	return $r24
;block_num 10