(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2059 0)
(declare-sort var3616 0)
(declare-sort var3641 0)
(declare-sort var109 0)
(declare-sort var2761 0)
(declare-sort var1146 0)
(declare-sort var1196 0)
(declare-sort var1925 0)
(declare-sort var1358 0)
(declare-sort var1014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1925-init () var1925)
(declare-fun <init>/1005832765 (var1925) void)
(declare-fun arr-var1925-init () (Array Int var1925))
(declare-fun setLength/-165633226 (var1925 Int) void)
(declare-fun var2059_getPropertyName/-814157935 (var2059) String)
(declare-fun var1358_getRelativePath/1836051203 (var109 String) String)
(declare-fun setPropertyName/-1559094418 (var1925 String) void)
(declare-fun setPropertyHolder/-1608793543 (var1925 var109) void)
(declare-fun setJoins/-1572846818 (var1925 var3641) void)
(declare-fun setBuildingContext/1555575594 (var1925 var1196) void)
(declare-fun var1014_isEmpty/1672864985 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setLogicalColumnName/592650988 (var1925 String) void)
(declare-fun setImplicit/1678778222 (var1925 Bool) void)
(declare-fun var1925_applyColumnDefault/-202739625 (var1925 var2059) void)
(declare-fun extractDataFromPropertyData/-896378266 (var1925 var2059) void)
(declare-fun bind/-52769518 (var1925) void)
(declare-const null-var2059 var2059)
(declare-const null-String String)
(declare-const null-var3641 var3641)
(declare-const null-var109 var109)
(declare-const null-var2761 var2761)
(declare-const null-var1146 var1146)
(declare-const null-var1196 var1196)
(declare-const null-__Array__Int__var1925__ (Array Int var1925))
(declare-const var1146-FORCED_NULL var1146)
(declare-const var2099 var2059) ; Statement: r5 := @parameter0: org.hibernate.cfg.PropertyData 
(assert (not (= var2099 null-var2059)))
(declare-const var3628 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3628 null-String)))
(declare-const var1494 var3641) ; Statement: r7 := @parameter2: java.util.Map 
(assert (not (= var1494 null-var3641)))
(declare-const var1665 var109) ; Statement: r6 := @parameter3: org.hibernate.cfg.PropertyHolder 
(assert (not (= var1665 null-var109)))
(declare-const var2366 var2761) ; Statement: r2 := @parameter4: org.hibernate.annotations.Comment 
(assert (not (= var2366 null-var2761)))
(declare-const var502 var1146) ; Statement: r3 := @parameter5: org.hibernate.cfg.annotations.Nullability 
(assert (not (= var502 null-var1146)))
(declare-const var1124 var1196) ; Statement: r8 := @parameter6: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1124 null-var1196)))
(define-const var3355 var1925 var1925-init) ; Statement: $r0 = new org.hibernate.cfg.Ejb3Column 
(assert true)
;(assert (<init>/1005832765 var3355)) ; Statement: specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void <init>()>() 

(declare-const var3355!1 var1925)
(define-const var3352 (Array Int var1925) arr-var1925-init) ; Statement: r1 = newarray (org.hibernate.cfg.Ejb3Column)[1] 
(declare-const var3352!1 (Array Int var1925))
(assert (not (= var3352!1 null-__Array__Int__var1925__)))
(assert (= (select var3352!1 0) var3355!1)) ; Statement: r1[0] = $r0 
 ; Statement: if r2 == null goto $r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL> 
(assert (= var2366 null-var2761)) ; Cond: r2 == null 
(define-const var2313 var1146 var1146-FORCED_NULL) ; Statement: $r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL> 
 ; Statement: if r3 == $r4 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255) 
(assert (= var502 var2313)) ; Cond: r3 == $r4 
(assert true)
;(assert (setLength/-165633226 var3355!1 255)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255) 

(declare-const var3355!2 var1925)
(declare-const var1508 Int)
(define-const var2965 String (var2059_getPropertyName/-814157935 var2099)) ; Statement: $r17 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var3343 String (var1358_getRelativePath/1836051203 var1665 var2965)) ; Statement: $r18 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getRelativePath(org.hibernate.cfg.PropertyHolder,java.lang.String)>(r6, $r17) 
(assert true)
;(assert (setPropertyName/-1559094418 var3355!2 var3343)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyName(java.lang.String)>($r18) 

(declare-const var3355!3 var1925)
(declare-const var3343!1 String)
(assert true)
;(assert (setPropertyHolder/-1608793543 var3355!3 var1665)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyHolder(org.hibernate.cfg.PropertyHolder)>(r6) 

(declare-const var3355!4 var1925)
(declare-const var1665!1 var109)
(assert true)
;(assert (setJoins/-1572846818 var3355!4 var1494)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setJoins(java.util.Map)>(r7) 

(declare-const var3355!5 var1925)
(declare-const var1494!1 var3641)
(assert true)
;(assert (setBuildingContext/1555575594 var3355!5 var1124)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setBuildingContext(org.hibernate.boot.spi.MetadataBuildingContext)>(r8) 

(declare-const var3355!6 var1925)
(declare-const var1124!1 var1196)
(define-const var1264 Bool (var1014_isEmpty/1672864985 var3628)) ; Statement: $z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r9) 
 ; Statement: if $z2 != 0 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(1) 
(assert (not (not (= (ite var1264 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1729 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1729)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1729!1 String)
(assert (= var1729!1 ""))
(assert true)
(define-const var727 String (append/672562846 var1729!1 var2965)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1729!2 String)
(assert (= var1729!2 (str.++ var1729!1 var2965)))
(assert true)
(define-const var3410 String (append/672562846 var727 var3628)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var727!1 String)
(assert (= var727!1 (str.++ var727 var3628)))
(assert true)
(define-const var702 String (toString/-2075883882 var3410)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setLogicalColumnName/592650988 var3355!6 var702)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLogicalColumnName(java.lang.String)>($r13) 

(declare-const var3355!7 var1925)
(declare-const var702!1 String)
(assert true)
;(assert (setImplicit/1678778222 var3355!7 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(0) 

(declare-const var3355!8 var1925)
(declare-const var3785 Int)
 ; Statement: goto [?= staticinvoke <org.hibernate.cfg.Ejb3Column: void applyColumnDefault(org.hibernate.cfg.Ejb3Column,org.hibernate.cfg.PropertyData)>($r0, r5)] 
(assert true) ; Non Conditional
;(assert (var1925_applyColumnDefault/-202739625 var3355!8 var2099)) ; Statement: staticinvoke <org.hibernate.cfg.Ejb3Column: void applyColumnDefault(org.hibernate.cfg.Ejb3Column,org.hibernate.cfg.PropertyData)>($r0, r5) 

(declare-const var3355!9 var1925)
(declare-const var2099!1 var2059)
(assert true)
;(assert (extractDataFromPropertyData/-896378266 var3355!9 var2099!1)) ; Statement: specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void extractDataFromPropertyData(org.hibernate.cfg.PropertyData)>(r5) 

(declare-const var3355!10 var1925)
(declare-const var2099!2 var2059)
(assert true)
;(assert (bind/-52769518 var3355!10)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void bind()>() 

(declare-const var3355!11 var1925)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1925-init=([], org.hibernate.cfg.Ejb3Column), <init>/1005832765=([org.hibernate.cfg.Ejb3Column], void), arr-var1925-init=([], org.hibernate.cfg.Ejb3Column[]), setLength/-165633226=([org.hibernate.cfg.Ejb3Column, int], void), var2059_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), var1358_getRelativePath/1836051203=([org.hibernate.cfg.PropertyHolder, java.lang.String], java.lang.String), setPropertyName/-1559094418=([org.hibernate.cfg.Ejb3Column, java.lang.String], void), setPropertyHolder/-1608793543=([org.hibernate.cfg.Ejb3Column, org.hibernate.cfg.PropertyHolder], void), setJoins/-1572846818=([org.hibernate.cfg.Ejb3Column, java.util.Map], void), setBuildingContext/1555575594=([org.hibernate.cfg.Ejb3Column, org.hibernate.boot.spi.MetadataBuildingContext], void), var1014_isEmpty/1672864985=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setLogicalColumnName/592650988=([org.hibernate.cfg.Ejb3Column, java.lang.String], void), setImplicit/1678778222=([org.hibernate.cfg.Ejb3Column, boolean], void), var1925_applyColumnDefault/-202739625=([org.hibernate.cfg.Ejb3Column, org.hibernate.cfg.PropertyData], void), extractDataFromPropertyData/-896378266=([org.hibernate.cfg.Ejb3Column, org.hibernate.cfg.PropertyData], void), bind/-52769518=([org.hibernate.cfg.Ejb3Column], void)}
; {var2059=org.hibernate.cfg.PropertyData, var2099=r5, var3628=r9, var3616=null_type, var3641=java.util.Map, var1494=r7, var109=org.hibernate.cfg.PropertyHolder, var1665=r6, var2761=org.hibernate.annotations.Comment, var2366=r2, var1146=org.hibernate.cfg.annotations.Nullability, var502=r3, var1196=org.hibernate.boot.spi.MetadataBuildingContext, var1124=r8, var1925=org.hibernate.cfg.Ejb3Column, var3355=$r0, var3352=r1, var2313=$r4, var1508=255, var2965=$r17, var1358=org.hibernate.cfg.BinderHelper, var3343=$r18, var1014=org.hibernate.internal.util.StringHelper, var1264=$z2, var1729=$r10, var727=$r11, var3410=$r12, var702=$r13, var3785=0}
; {org.hibernate.cfg.PropertyData=var2059, r5=var2099, r9=var3628, null_type=var3616, java.util.Map=var3641, r7=var1494, org.hibernate.cfg.PropertyHolder=var109, r6=var1665, org.hibernate.annotations.Comment=var2761, r2=var2366, org.hibernate.cfg.annotations.Nullability=var1146, r3=var502, org.hibernate.boot.spi.MetadataBuildingContext=var1196, r8=var1124, org.hibernate.cfg.Ejb3Column=var1925, $r0=var3355, r1=var3352, $r4=var2313, 255=var1508, $r17=var2965, org.hibernate.cfg.BinderHelper=var1358, $r18=var3343, org.hibernate.internal.util.StringHelper=var1014, $z2=var1264, $r10=var1729, $r11=var727, $r12=var3410, $r13=var702, 0=var3785}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: org.hibernate.cfg.PropertyData;	r9 := @parameter1: java.lang.String;	r7 := @parameter2: java.util.Map;	r6 := @parameter3: org.hibernate.cfg.PropertyHolder;	r2 := @parameter4: org.hibernate.annotations.Comment;	r3 := @parameter5: org.hibernate.cfg.annotations.Nullability;	r8 := @parameter6: org.hibernate.boot.spi.MetadataBuildingContext;	$r0 = new org.hibernate.cfg.Ejb3Column;	specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void <init>()>();	r1 = newarray (org.hibernate.cfg.Ejb3Column)[1];	r1[0] = $r0;	if r2 == null goto $r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL>;	$r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL>;	if r3 == $r4 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255);	$r17 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r18 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getRelativePath(org.hibernate.cfg.PropertyHolder,java.lang.String)>(r6, $r17);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyName(java.lang.String)>($r18);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyHolder(org.hibernate.cfg.PropertyHolder)>(r6);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setJoins(java.util.Map)>(r7);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setBuildingContext(org.hibernate.boot.spi.MetadataBuildingContext)>(r8);	$z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r9);	if $z2 != 0 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(1);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLogicalColumnName(java.lang.String)>($r13);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(0);	goto [?= staticinvoke <org.hibernate.cfg.Ejb3Column: void applyColumnDefault(org.hibernate.cfg.Ejb3Column,org.hibernate.cfg.PropertyData)>($r0, r5)];	staticinvoke <org.hibernate.cfg.Ejb3Column: void applyColumnDefault(org.hibernate.cfg.Ejb3Column,org.hibernate.cfg.PropertyData)>($r0, r5);	specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void extractDataFromPropertyData(org.hibernate.cfg.PropertyData)>(r5);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void bind()>();	return r1
;block_num 5