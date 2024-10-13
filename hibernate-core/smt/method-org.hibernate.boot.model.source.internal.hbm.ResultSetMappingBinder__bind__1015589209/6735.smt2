(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var1033 0)
(declare-sort var3904 0)
(declare-sort var386 0)
(declare-sort var3928 0)
(declare-sort var2743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var386_isEmpty/1672864985 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var881_getName/-159834702 (var881) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3928-init () var3928)
(declare-fun <init>/-904269040 (var3928 String) void)
(declare-fun var2743_bind/-471670336 (var881 var3928 var1033) void)
(declare-const null-var881 var881)
(declare-const null-var1033 var1033)
(declare-const null-String String)
(declare-const var2671 var881) ; Statement: r3 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition 
(assert (not (= var2671 null-var881)))
(declare-const var512 var1033) ; Statement: r9 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var512 null-var1033)))
(declare-const var2908 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2908 null-String)))
(define-const var232 Bool (var386_isEmpty/1672864985 var2908)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var232 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2125 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2125)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2125!1 String)
(assert (= var2125!1 ""))
(assert true)
(define-const var2352 String (append/672562846 var2125!1 var2908)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2125!2 String)
(assert (= var2125!2 (str.++ var2125!1 var2908)))
(assert true)
(define-const var907 String (append/-1166366385 var2352 46)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2352!1 String)
(assert (str.prefixof var2352 var2352!1))
(define-const var2874 String (var881_getName/-159834702 var2671)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition: java.lang.String getName()>() 
(assert true)
(define-const var282 String (append/672562846 var907 var2874)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var907!1 String)
(assert (= var907!1 (str.++ var907 var2874)))
(assert true)
(define-const var3794 String (toString/-2075883882 var282)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2918 var3928 var3928-init) ; Statement: $r8 = new org.hibernate.engine.ResultSetMappingDefinition 
(assert true)
;(assert (<init>/-904269040 var2918 var3794)) ; Statement: specialinvoke $r8.<org.hibernate.engine.ResultSetMappingDefinition: void <init>(java.lang.String)>(r7) 

(declare-const var2918!1 var3928)
(declare-const var3794!1 String)
;(assert (var2743_bind/-471670336 var2671 var2918!1 var512)) ; Statement: staticinvoke <org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder: void bind(org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition,org.hibernate.engine.ResultSetMappingDefinition,org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext)>(r3, $r8, r9) 

(declare-const var2671!1 var881)
(declare-const var2918!2 var3928)
(declare-const var512!1 var1033)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var386_isEmpty/1672864985=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var881_getName/-159834702=([org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3928-init=([], org.hibernate.engine.ResultSetMappingDefinition), <init>/-904269040=([org.hibernate.engine.ResultSetMappingDefinition, java.lang.String], void), var2743_bind/-471670336=([org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition, org.hibernate.engine.ResultSetMappingDefinition, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], void)}
; {var881=org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition, var2671=r3, var1033=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var512=r9, var2908=r0, var3904=null_type, var386=org.hibernate.internal.util.StringHelper, var232=$z0, var2125=$r1, var2352=$r2, var907=$r5, var2874=$r4, var282=$r6, var3794=r7, var3928=org.hibernate.engine.ResultSetMappingDefinition, var2918=$r8, var2743=org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder}
; {org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition=var881, r3=var2671, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var1033, r9=var512, r0=var2908, null_type=var3904, org.hibernate.internal.util.StringHelper=var386, $z0=var232, $r1=var2125, $r2=var2352, $r5=var907, $r4=var2874, $r6=var282, r7=var3794, org.hibernate.engine.ResultSetMappingDefinition=var3928, $r8=var2918, org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder=var2743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition;	r9 := @parameter1: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = interfaceinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new org.hibernate.engine.ResultSetMappingDefinition;	specialinvoke $r8.<org.hibernate.engine.ResultSetMappingDefinition: void <init>(java.lang.String)>(r7);	staticinvoke <org.hibernate.boot.model.source.internal.hbm.ResultSetMappingBinder: void bind(org.hibernate.boot.jaxb.hbm.spi.ResultSetMappingBindingDefinition,org.hibernate.engine.ResultSetMappingDefinition,org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext)>(r3, $r8, r9);	return $r8
;block_num 2