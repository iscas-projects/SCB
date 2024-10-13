(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2616 0)
(declare-sort var1595 0)
(declare-sort var605 0)
(declare-sort var900 0)
(declare-sort var3078 0)
(declare-sort var2179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun referencedEntityName/1955730900 (var2616) String)
(declare-fun var1595_get/1088891777 (var1595 var605) var605)
(declare-fun cast-from-String-to-var605 (String) var605)
(declare-fun cast-from-var605-to-var900 (var605) var900)
(declare-fun var3078-init () var3078)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3078 String) void)
(declare-fun cast-from-var3078-to-var2179 (var3078) var2179)
(declare-const null-var2616 var2616)
(declare-const null-var1595 var1595)
(declare-const null-var900 var900)
(declare-const var426 var2616) ; Statement: r1 := @this: org.hibernate.cfg.CopyIdentifierComponentSecondPass 
(assert (not (= var426 null-var2616)))
(declare-const var2566 var1595) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var2566 null-var1595)))
(define-const var434 String (referencedEntityName/1955730900 var426)) ; Statement: $r2 = r1.<org.hibernate.cfg.CopyIdentifierComponentSecondPass: java.lang.String referencedEntityName> 
(define-const var3091 var605 (var1595_get/1088891777 var2566 (cast-from-String-to-var605 var434))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var2284 var900 (cast-from-var605-to-var900 var3091)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (not (= var2284 null-var900)))) ; Negate: Cond: r4 != null  
(define-const var3964 var3078 var3078-init) ; Statement: $r39 = new org.hibernate.AnnotationException 
(define-const var3098 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3098)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3098!1 String)
(assert (= var3098!1 ""))
(assert true)
(define-const var172 String (append/672562846 var3098!1 "Unknown entity name: ")) ; Statement: $r26 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity name: ") 
(declare-const var3098!2 String)
(assert (= var3098!2 (str.++ var3098!1 "Unknown entity name: ")))
(define-const var522 String (referencedEntityName/1955730900 var426)) ; Statement: $r25 = r1.<org.hibernate.cfg.CopyIdentifierComponentSecondPass: java.lang.String referencedEntityName> 
(assert true)
(define-const var3751 String (append/672562846 var172 var522)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var172!1 String)
(assert (= var172!1 (str.++ var172 var522)))
(assert true)
(define-const var286 String (toString/-2075883882 var3751)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3964 var286)) ; Statement: specialinvoke $r39.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r28) 

(declare-const var3964!1 var3078)
(declare-const var286!1 String)
(define-const var2888 var2179 (cast-from-var3078-to-var2179 var3964!1)) ; Statement: $r44 = (java.lang.Throwable) $r39 
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {referencedEntityName/1955730900=([org.hibernate.cfg.CopyIdentifierComponentSecondPass], java.lang.String), var1595_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var605=([java.lang.String], java.lang.Object), cast-from-var605-to-var900=([java.lang.Object], org.hibernate.mapping.PersistentClass), var3078-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3078-to-var2179=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2616=org.hibernate.cfg.CopyIdentifierComponentSecondPass, var426=r1, var1595=java.util.Map, var2566=r0, var434=$r2, var605=java.lang.Object, var3091=$r3, var900=org.hibernate.mapping.PersistentClass, var2284=r4, var3078=org.hibernate.AnnotationException, var3964=$r39, var3098=$r38, var172=$r26, var522=$r25, var3751=$r27, var286=$r28, var2179=java.lang.Throwable, var2888=$r44}
; {org.hibernate.cfg.CopyIdentifierComponentSecondPass=var2616, r1=var426, java.util.Map=var1595, r0=var2566, $r2=var434, java.lang.Object=var605, $r3=var3091, org.hibernate.mapping.PersistentClass=var900, r4=var2284, org.hibernate.AnnotationException=var3078, $r39=var3964, $r38=var3098, $r26=var172, $r25=var522, $r27=var3751, $r28=var286, java.lang.Throwable=var2179, $r44=var2888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.CopyIdentifierComponentSecondPass;	r0 := @parameter0: java.util.Map;	$r2 = r1.<org.hibernate.cfg.CopyIdentifierComponentSecondPass: java.lang.String referencedEntityName>;	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r39 = new org.hibernate.AnnotationException;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity name: ");	$r25 = r1.<org.hibernate.cfg.CopyIdentifierComponentSecondPass: java.lang.String referencedEntityName>;	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r39.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r28);	$r44 = (java.lang.Throwable) $r39;	throw $r44
;block_num 2