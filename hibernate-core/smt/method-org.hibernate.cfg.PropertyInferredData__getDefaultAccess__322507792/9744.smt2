(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2201 0)
(declare-sort var145 0)
(declare-sort var1512 0)
(declare-sort var3397 0)
(declare-sort var2243 0)
(declare-sort var1799 0)
(declare-sort var616 0)
(declare-sort var2866 0)
(declare-sort var2250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2243!class ClassObject)
(declare-const var1799!class ClassObject)
(declare-fun defaultAccess/1216992018 (var2201) var145)
(declare-fun property/1216992018 (var2201) var1512)
(declare-fun var1512_getAnnotation/894663943 (var1512 ClassObject) var3397)
(declare-fun cast-from-var3397-to-var2243 (var3397) var2243)
(declare-fun cast-from-var3397-to-var1799 (var3397) var1799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var616) String)
(declare-fun cast-from-var1512-to-var616 (var1512) var616)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2866-init () var2866)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2866 String) void)
(declare-fun cast-from-var2866-to-var2250 (var2866) var2250)
(declare-const null-var2201 var2201)
(declare-const var145-DEFAULT var145)
(declare-const null-var2243 var2243)
(declare-const null-var1799 var1799)
(declare-const var3679 var2201) ; Statement: r0 := @this: org.hibernate.cfg.PropertyInferredData 
(assert (not (= var3679 null-var2201)))
(define-const var2994 var145 (defaultAccess/1216992018 var3679)) ; Statement: r17 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.cfg.AccessType defaultAccess> 
(define-const var1577 var145 var145-DEFAULT) ; Statement: r18 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(define-const var3593 var145 var145-DEFAULT) ; Statement: r19 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(define-const var2686 var1512 (property/1216992018 var3679)) ; Statement: $r1 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var1676 var3397 (var1512_getAnnotation/894663943 var2686 var2243!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;") 
(define-const var1623 var2243 (cast-from-var3397-to-var2243 var1676)) ; Statement: r3 = (org.hibernate.annotations.AccessType) $r2 
 ; Statement: if r3 == null goto $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (= var1623 null-var2243)) ; Cond: r3 == null 
(define-const var791 var1512 (property/1216992018 var3679)) ; Statement: $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var1150 var3397 (var1512_getAnnotation/894663943 var791 var1799!class)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(define-const var2807 var1799 (cast-from-var3397-to-var1799 var1150)) ; Statement: $r16 = (javax.persistence.Access) $r5 
 ; Statement: if $r16 == null goto $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (= var2807 null-var1799)) ; Cond: $r16 == null 
(define-const var3220 var145 var145-DEFAULT) ; Statement: $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r18 == $r6 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (not (= var1577 var3220))) ; Negate: Cond: r18 == $r6  
(define-const var2473 var145 var145-DEFAULT) ; Statement: $r8 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r19 == $r8 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (not (= var3593 var2473))) ; Negate: Cond: r19 == $r8  
 ; Statement: if r18 == r19 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (not (= var1577 var3593))) ; Negate: Cond: r18 == r19  
(define-const var3650 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3650)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3650!1 String)
(assert (= var3650!1 ""))
(define-const var1198 var1512 (property/1216992018 var3679)) ; Statement: $r10 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(assert true)
(define-const var2219 String (toString/-522406933 (cast-from-var1512-to-var616 var1198))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3650!1 var2219)) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3650!2 String)
(assert (= var3650!2 (str.++ var3650!1 var2219)))
(assert true)
;(assert (append/672562846 var3650!2 " defines @AccessType and @Access with contradicting values. Use of @Access only is recommended.")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" defines @AccessType and @Access with contradicting values. Use of @Access only is recommended.") 
(declare-const var3650!3 String)
(assert (= var3650!3 (str.++ var3650!2 " defines @AccessType and @Access with contradicting values. Use of @Access only is recommended.")))
(define-const var2209 var2866 var2866-init) ; Statement: $r22 = new org.hibernate.MappingException 
(assert true)
(define-const var1594 String (toString/-2075883882 var3650!3)) ; Statement: $r13 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2209 var1594)) ; Statement: specialinvoke $r22.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13) 

(declare-const var2209!1 var2866)
(declare-const var1594!1 String)
(define-const var1900 var2250 (cast-from-var2866-to-var2250 var2209!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultAccess/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.cfg.AccessType), property/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.annotations.common.reflection.XProperty), var1512_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3397-to-var2243=([java.lang.annotation.Annotation], org.hibernate.annotations.AccessType), cast-from-var3397-to-var1799=([java.lang.annotation.Annotation], javax.persistence.Access), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1512-to-var616=([org.hibernate.annotations.common.reflection.XProperty], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2866-init=([], org.hibernate.MappingException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2866-to-var2250=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2201=org.hibernate.cfg.PropertyInferredData, var3679=r0, var145=org.hibernate.cfg.AccessType, var2994=r17, var1577=r18, var3593=r19, var1512=org.hibernate.annotations.common.reflection.XProperty, var2686=$r1, var3397=java.lang.annotation.Annotation, var2243=org.hibernate.annotations.AccessType, var1676=$r2, var1623=r3, var791=$r4, var1799=javax.persistence.Access, var1150=$r5, var2807=$r16, var3220=$r6, var2473=$r8, var3650=$r21, var1198=$r10, var616=java.lang.Object, var2219=$r11, var2866=org.hibernate.MappingException, var2209=$r22, var1594=$r13, var2250=java.lang.Throwable, var1900=$r23}
; {org.hibernate.cfg.PropertyInferredData=var2201, r0=var3679, org.hibernate.cfg.AccessType=var145, r17=var2994, r18=var1577, r19=var3593, org.hibernate.annotations.common.reflection.XProperty=var1512, $r1=var2686, java.lang.annotation.Annotation=var3397, org.hibernate.annotations.AccessType=var2243, $r2=var1676, r3=var1623, $r4=var791, javax.persistence.Access=var1799, $r5=var1150, $r16=var2807, $r6=var3220, $r8=var2473, $r21=var3650, $r10=var1198, java.lang.Object=var616, $r11=var2219, org.hibernate.MappingException=var2866, $r22=var2209, $r13=var1594, java.lang.Throwable=var2250, $r23=var1900}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.PropertyInferredData;	r17 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.cfg.AccessType defaultAccess>;	r18 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	r19 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r1 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;");	r3 = (org.hibernate.annotations.AccessType) $r2;	if r3 == null goto $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r16 = (javax.persistence.Access) $r5;	if $r16 == null goto $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r18 == $r6 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r8 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r19 == $r8 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r18 == r19 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r10 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" defines @AccessType and @Access with contradicting values. Use of @Access only is recommended.");	$r22 = new org.hibernate.MappingException;	$r13 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 6