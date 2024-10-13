(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2764 0)
(declare-sort var3820 0)
(declare-sort var3501 0)
(declare-sort var700 0)
(declare-sort var87 0)
(declare-sort var3902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun referencedEntityName/-1916588974 (var2764) String)
(declare-fun var3820_get/1088891777 (var3820 var3501) var3501)
(declare-fun cast-from-String-to-var3501 (String) var3501)
(declare-fun cast-from-var3501-to-var700 (var3501) var700)
(declare-fun var87-init () var87)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var87 String) void)
(declare-fun cast-from-var87-to-var3902 (var87) var3902)
(declare-const null-var2764 var2764)
(declare-const null-var3820 var3820)
(declare-const null-var700 var700)
(declare-const var2006 var2764) ; Statement: r1 := @this: org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass 
(assert (not (= var2006 null-var2764)))
(declare-const var1274 var3820) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var1274 null-var3820)))
(define-const var2626 String (referencedEntityName/-1916588974 var2006)) ; Statement: $r2 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: java.lang.String referencedEntityName> 
(define-const var3760 var3501 (var3820_get/1088891777 var1274 (cast-from-String-to-var3501 var2626))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1983 var700 (cast-from-var3501-to-var700 var3760)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getKey()>() 
(assert (not (not (= var1983 null-var700)))) ; Negate: Cond: r4 != null  
(define-const var3496 var87 var87-init) ; Statement: $r16 = new org.hibernate.AnnotationException 
(define-const var2557 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2557)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2557!1 String)
(assert (= var2557!1 ""))
(assert true)
(define-const var3061 String (append/672562846 var2557!1 "Unknown entity name: ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity name: ") 
(declare-const var2557!2 String)
(assert (= var2557!2 (str.++ var2557!1 "Unknown entity name: ")))
(define-const var2012 String (referencedEntityName/-1916588974 var2006)) ; Statement: $r11 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: java.lang.String referencedEntityName> 
(assert true)
(define-const var3557 String (append/672562846 var3061 var2012)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 var2012)))
(assert true)
(define-const var3214 String (toString/-2075883882 var3557)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3496 var3214)) ; Statement: specialinvoke $r16.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r14) 

(declare-const var3496!1 var87)
(declare-const var3214!1 String)
(define-const var2259 var3902 (cast-from-var87-to-var3902 var3496!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {referencedEntityName/-1916588974=([org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass], java.lang.String), var3820_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3501=([java.lang.String], java.lang.Object), cast-from-var3501-to-var700=([java.lang.Object], org.hibernate.mapping.PersistentClass), var87-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var87-to-var3902=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2764=org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass, var2006=r1, var3820=java.util.Map, var1274=r0, var2626=$r2, var3501=java.lang.Object, var3760=$r3, var700=org.hibernate.mapping.PersistentClass, var1983=r4, var87=org.hibernate.AnnotationException, var3496=$r16, var2557=$r15, var3061=$r12, var2012=$r11, var3557=$r13, var3214=$r14, var3902=java.lang.Throwable, var2259=$r17}
; {org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass=var2764, r1=var2006, java.util.Map=var3820, r0=var1274, $r2=var2626, java.lang.Object=var3501, $r3=var3760, org.hibernate.mapping.PersistentClass=var700, r4=var1983, org.hibernate.AnnotationException=var87, $r16=var3496, $r15=var2557, $r12=var3061, $r11=var2012, $r13=var3557, $r14=var3214, java.lang.Throwable=var3902, $r17=var2259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass;	r0 := @parameter0: java.util.Map;	$r2 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: java.lang.String referencedEntityName>;	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getKey()>();	$r16 = new org.hibernate.AnnotationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity name: ");	$r11 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: java.lang.String referencedEntityName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2