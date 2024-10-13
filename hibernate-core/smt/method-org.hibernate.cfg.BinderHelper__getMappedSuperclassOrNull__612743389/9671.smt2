(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2745 0)
(declare-sort var2735 0)
(declare-sort var3258 0)
(declare-sort var977 0)
(declare-sort var2313 0)
(declare-sort var578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2735_get/1088891777 (var2735 var977) var977)
(declare-fun cast-from-var2745-to-var977 (var2745) var977)
(declare-fun cast-from-var977-to-var2313 (var977) var2313)
(declare-fun var578-init () var578)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var977) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var578 String) void)
(declare-const null-var2745 var2745)
(declare-const null-var2735 var2735)
(declare-const null-var3258 var3258)
(declare-const null-var2313 var2313)
(declare-const var3549 var2745) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var3549 null-var2745)))
(declare-const var1431 var2735) ; Statement: r7 := @parameter1: java.util.Map 
(assert (not (= var1431 null-var2735)))
(declare-const var203 var3258) ; Statement: r1 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var203 null-var3258)))
(define-const var1588 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var3549 null-var2745))) ; Negate: Cond: r0 == null  
(define-const var2612 var977 (var2735_get/1088891777 var1431 (cast-from-var2745-to-var977 var3549))) ; Statement: $r8 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var1769 var2313 (cast-from-var977-to-var2313 var2612)) ; Statement: r9 = (org.hibernate.cfg.InheritanceState) $r8 
 ; Statement: if r9 != null goto $z0 = virtualinvoke r9.<org.hibernate.cfg.InheritanceState: boolean isEmbeddableSuperclass()>() 
(assert (not (not (= var1769 null-var2313)))) ; Negate: Cond: r9 != null  
(define-const var400 var578 var578-init) ; Statement: $r10 = new org.hibernate.AssertionFailure 
(define-const var2647 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2647)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2647!1 String)
(assert (= var2647!1 ""))
(assert true)
(define-const var154 String (append/672562846 var2647!1 "Declaring class is not found in the inheritance state hierarchy: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Declaring class is not found in the inheritance state hierarchy: ") 
(declare-const var2647!2 String)
(assert (= var2647!2 (str.++ var2647!1 "Declaring class is not found in the inheritance state hierarchy: ")))
(assert true)
(define-const var1487 String (append/-1031950772 var154 (cast-from-var2745-to-var977 var3549))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var154!1 String)
(assert (str.prefixof var154 var154!1))
(assert true)
(define-const var3455 String (toString/-2075883882 var1487)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var400 var3455)) ; Statement: specialinvoke $r10.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r14) 

(declare-const var400!1 var578)
(declare-const var3455!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2735_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2745-to-var977=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), cast-from-var977-to-var2313=([java.lang.Object], org.hibernate.cfg.InheritanceState), var578-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2745=org.hibernate.annotations.common.reflection.XClass, var3549=r0, var2735=java.util.Map, var1431=r7, var3258=org.hibernate.boot.spi.MetadataBuildingContext, var203=r1, var1588=z1, var977=java.lang.Object, var2612=$r8, var2313=org.hibernate.cfg.InheritanceState, var1769=r9, var578=org.hibernate.AssertionFailure, var400=$r10, var2647=$r11, var154=$r12, var1487=$r13, var3455=$r14}
; {org.hibernate.annotations.common.reflection.XClass=var2745, r0=var3549, java.util.Map=var2735, r7=var1431, org.hibernate.boot.spi.MetadataBuildingContext=var3258, r1=var203, z1=var1588, java.lang.Object=var977, $r8=var2612, org.hibernate.cfg.InheritanceState=var2313, r9=var1769, org.hibernate.AssertionFailure=var578, $r10=var400, $r11=var2647, $r12=var154, $r13=var1487, $r14=var3455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass;	r7 := @parameter1: java.util.Map;	r1 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext;	z1 = 0;	if r0 == null goto (branch);	$r8 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r9 = (org.hibernate.cfg.InheritanceState) $r8;	if r9 != null goto $z0 = virtualinvoke r9.<org.hibernate.cfg.InheritanceState: boolean isEmbeddableSuperclass()>();	$r10 = new org.hibernate.AssertionFailure;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Declaring class is not found in the inheritance state hierarchy: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r14);	throw $r10
;block_num 3