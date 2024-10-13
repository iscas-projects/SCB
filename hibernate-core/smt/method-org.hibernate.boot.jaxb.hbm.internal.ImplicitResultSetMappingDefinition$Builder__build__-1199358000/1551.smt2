(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort var1063 0)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1063-init () var1063)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun queryName/1304037975 (var1290) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun valueMappingSources/1304037975 (var1290) var3487)
(declare-fun copy/1050933157 (var1290 var3487) var3487)
(declare-fun <init>/1316613798 (var1063 String var3487) void)
(declare-const null-var1290 var1290)
(declare-const var3685 var1290) ; Statement: r2 := @this: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder 
(assert (not (= var3685 null-var1290)))
(define-const var2688 var1063 var1063-init) ; Statement: $r0 = new org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition 
(define-const var3585 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3585)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3585!1 String)
(assert (= var3585!1 ""))
(define-const var3192 String (queryName/1304037975 var3685)) ; Statement: $r3 = r2.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder: java.lang.String queryName> 
(assert true)
(define-const var3738 String (append/672562846 var3585!1 var3192)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3585!2 String)
(assert (= var3585!2 (str.++ var3585!1 var3192)))
(assert true)
(define-const var3861 String (append/672562846 var3738 "-inline-result-set-mapping-def")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-inline-result-set-mapping-def") 
(declare-const var3738!1 String)
(assert (= var3738!1 (str.++ var3738 "-inline-result-set-mapping-def")))
(assert true)
(define-const var2272 String (toString/-2075883882 var3861)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2499 var3487 (valueMappingSources/1304037975 var3685)) ; Statement: $r6 = r2.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder: java.util.List valueMappingSources> 
(assert true)
(define-const var3229 var3487 (copy/1050933157 var3685 var2499)) ; Statement: $r7 = specialinvoke r2.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder: java.util.List copy(java.util.List)>($r6) 
(assert true)
;(assert (<init>/1316613798 var2688 var2272 var3229)) ; Statement: specialinvoke $r0.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition: void <init>(java.lang.String,java.util.List)>($r8, $r7) 

(declare-const var2688!1 var1063)
(declare-const var2272!1 String)
(declare-const var3229!1 var3487)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1063-init=([], org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), queryName/1304037975=([org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), valueMappingSources/1304037975=([org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder], java.util.List), copy/1050933157=([org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder, java.util.List], java.util.List), <init>/1316613798=([org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition, java.lang.String, java.util.List], void)}
; {var1290=org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder, var3685=r2, var1063=org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition, var2688=$r0, var3585=$r1, var3192=$r3, var3738=$r4, var3861=$r5, var2272=$r8, var3487=java.util.List, var2499=$r6, var3229=$r7}
; {org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder=var1290, r2=var3685, org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition=var1063, $r0=var2688, $r1=var3585, $r3=var3192, $r4=var3738, $r5=var3861, $r8=var2272, java.util.List=var3487, $r6=var2499, $r7=var3229}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder;	$r0 = new org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder: java.lang.String queryName>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-inline-result-set-mapping-def");	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r2.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder: java.util.List valueMappingSources>;	$r7 = specialinvoke r2.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder: java.util.List copy(java.util.List)>($r6);	specialinvoke $r0.<org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition: void <init>(java.lang.String,java.util.List)>($r8, $r7);	return $r0
;block_num 1