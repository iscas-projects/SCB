(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort var3976 0)
(declare-sort var1163 0)
(declare-sort var578 0)
(declare-sort var1374 0)
(declare-sort var642 0)
(declare-sort var3364 0)
(declare-sort var1026 0)
(declare-sort var3034 0)
(declare-sort var254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1026-init () var1026)
(declare-fun <init>/1005832765 (var1026) void)
(declare-fun arr-var1026-init () (Array Int var1026))
(declare-fun setLength/-165633226 (var1026 Int) void)
(declare-fun var91_getPropertyName/-814157935 (var91) String)
(declare-fun var3034_getRelativePath/1836051203 (var578 String) String)
(declare-fun setPropertyName/-1559094418 (var1026 String) void)
(declare-fun setPropertyHolder/-1608793543 (var1026 var578) void)
(declare-fun setJoins/-1572846818 (var1026 var1163) void)
(declare-fun setBuildingContext/1555575594 (var1026 var3364) void)
(declare-fun var254_isEmpty/1672864985 (String) Bool)
(declare-fun setImplicit/1678778222 (var1026 Bool) void)
(declare-fun var1026_applyColumnDefault/-202739625 (var1026 var91) void)
(declare-fun extractDataFromPropertyData/-896378266 (var1026 var91) void)
(declare-fun bind/-52769518 (var1026) void)
(declare-const null-var91 var91)
(declare-const null-String String)
(declare-const null-var1163 var1163)
(declare-const null-var578 var578)
(declare-const null-var1374 var1374)
(declare-const null-var642 var642)
(declare-const null-var3364 var3364)
(declare-const null-__Array__Int__var1026__ (Array Int var1026))
(declare-const var642-FORCED_NULL var642)
(declare-const var3338 var91) ; Statement: r5 := @parameter0: org.hibernate.cfg.PropertyData 
(assert (not (= var3338 null-var91)))
(declare-const var1078 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1078 null-String)))
(declare-const var3002 var1163) ; Statement: r7 := @parameter2: java.util.Map 
(assert (not (= var3002 null-var1163)))
(declare-const var3528 var578) ; Statement: r6 := @parameter3: org.hibernate.cfg.PropertyHolder 
(assert (not (= var3528 null-var578)))
(declare-const var2627 var1374) ; Statement: r2 := @parameter4: org.hibernate.annotations.Comment 
(assert (not (= var2627 null-var1374)))
(declare-const var3059 var642) ; Statement: r3 := @parameter5: org.hibernate.cfg.annotations.Nullability 
(assert (not (= var3059 null-var642)))
(declare-const var507 var3364) ; Statement: r8 := @parameter6: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var507 null-var3364)))
(define-const var1617 var1026 var1026-init) ; Statement: $r0 = new org.hibernate.cfg.Ejb3Column 
(assert true)
;(assert (<init>/1005832765 var1617)) ; Statement: specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void <init>()>() 

(declare-const var1617!1 var1026)
(define-const var512 (Array Int var1026) arr-var1026-init) ; Statement: r1 = newarray (org.hibernate.cfg.Ejb3Column)[1] 
(declare-const var512!1 (Array Int var1026))
(assert (not (= var512!1 null-__Array__Int__var1026__)))
(assert (= (select var512!1 0) var1617!1)) ; Statement: r1[0] = $r0 
 ; Statement: if r2 == null goto $r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL> 
(assert (= var2627 null-var1374)) ; Cond: r2 == null 
(define-const var573 var642 var642-FORCED_NULL) ; Statement: $r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL> 
 ; Statement: if r3 == $r4 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255) 
(assert (= var3059 var573)) ; Cond: r3 == $r4 
(assert true)
;(assert (setLength/-165633226 var1617!1 255)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255) 

(declare-const var1617!2 var1026)
(declare-const var1665 Int)
(define-const var1002 String (var91_getPropertyName/-814157935 var3338)) ; Statement: $r17 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var2747 String (var3034_getRelativePath/1836051203 var3528 var1002)) ; Statement: $r18 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getRelativePath(org.hibernate.cfg.PropertyHolder,java.lang.String)>(r6, $r17) 
(assert true)
;(assert (setPropertyName/-1559094418 var1617!2 var2747)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyName(java.lang.String)>($r18) 

(declare-const var1617!3 var1026)
(declare-const var2747!1 String)
(assert true)
;(assert (setPropertyHolder/-1608793543 var1617!3 var3528)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyHolder(org.hibernate.cfg.PropertyHolder)>(r6) 

(declare-const var1617!4 var1026)
(declare-const var3528!1 var578)
(assert true)
;(assert (setJoins/-1572846818 var1617!4 var3002)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setJoins(java.util.Map)>(r7) 

(declare-const var1617!5 var1026)
(declare-const var3002!1 var1163)
(assert true)
;(assert (setBuildingContext/1555575594 var1617!5 var507)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setBuildingContext(org.hibernate.boot.spi.MetadataBuildingContext)>(r8) 

(declare-const var1617!6 var1026)
(declare-const var507!1 var3364)
(define-const var2122 Bool (var254_isEmpty/1672864985 var1078)) ; Statement: $z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r9) 
 ; Statement: if $z2 != 0 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(1) 
(assert (not (= (ite var2122 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
;(assert (setImplicit/1678778222 var1617!6 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(1) 

(declare-const var1617!7 var1026)
(declare-const var1061 Int)
(assert true) ; Non Conditional
;(assert (var1026_applyColumnDefault/-202739625 var1617!7 var3338)) ; Statement: staticinvoke <org.hibernate.cfg.Ejb3Column: void applyColumnDefault(org.hibernate.cfg.Ejb3Column,org.hibernate.cfg.PropertyData)>($r0, r5) 

(declare-const var1617!8 var1026)
(declare-const var3338!1 var91)
(assert true)
;(assert (extractDataFromPropertyData/-896378266 var1617!8 var3338!1)) ; Statement: specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void extractDataFromPropertyData(org.hibernate.cfg.PropertyData)>(r5) 

(declare-const var1617!9 var1026)
(declare-const var3338!2 var91)
(assert true)
;(assert (bind/-52769518 var1617!9)) ; Statement: virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void bind()>() 

(declare-const var1617!10 var1026)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1026-init=([], org.hibernate.cfg.Ejb3Column), <init>/1005832765=([org.hibernate.cfg.Ejb3Column], void), arr-var1026-init=([], org.hibernate.cfg.Ejb3Column[]), setLength/-165633226=([org.hibernate.cfg.Ejb3Column, int], void), var91_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), var3034_getRelativePath/1836051203=([org.hibernate.cfg.PropertyHolder, java.lang.String], java.lang.String), setPropertyName/-1559094418=([org.hibernate.cfg.Ejb3Column, java.lang.String], void), setPropertyHolder/-1608793543=([org.hibernate.cfg.Ejb3Column, org.hibernate.cfg.PropertyHolder], void), setJoins/-1572846818=([org.hibernate.cfg.Ejb3Column, java.util.Map], void), setBuildingContext/1555575594=([org.hibernate.cfg.Ejb3Column, org.hibernate.boot.spi.MetadataBuildingContext], void), var254_isEmpty/1672864985=([java.lang.String], boolean), setImplicit/1678778222=([org.hibernate.cfg.Ejb3Column, boolean], void), var1026_applyColumnDefault/-202739625=([org.hibernate.cfg.Ejb3Column, org.hibernate.cfg.PropertyData], void), extractDataFromPropertyData/-896378266=([org.hibernate.cfg.Ejb3Column, org.hibernate.cfg.PropertyData], void), bind/-52769518=([org.hibernate.cfg.Ejb3Column], void)}
; {var91=org.hibernate.cfg.PropertyData, var3338=r5, var1078=r9, var3976=null_type, var1163=java.util.Map, var3002=r7, var578=org.hibernate.cfg.PropertyHolder, var3528=r6, var1374=org.hibernate.annotations.Comment, var2627=r2, var642=org.hibernate.cfg.annotations.Nullability, var3059=r3, var3364=org.hibernate.boot.spi.MetadataBuildingContext, var507=r8, var1026=org.hibernate.cfg.Ejb3Column, var1617=$r0, var512=r1, var573=$r4, var1665=255, var1002=$r17, var3034=org.hibernate.cfg.BinderHelper, var2747=$r18, var254=org.hibernate.internal.util.StringHelper, var2122=$z2, var1061=1}
; {org.hibernate.cfg.PropertyData=var91, r5=var3338, r9=var1078, null_type=var3976, java.util.Map=var1163, r7=var3002, org.hibernate.cfg.PropertyHolder=var578, r6=var3528, org.hibernate.annotations.Comment=var1374, r2=var2627, org.hibernate.cfg.annotations.Nullability=var642, r3=var3059, org.hibernate.boot.spi.MetadataBuildingContext=var3364, r8=var507, org.hibernate.cfg.Ejb3Column=var1026, $r0=var1617, r1=var512, $r4=var573, 255=var1665, $r17=var1002, org.hibernate.cfg.BinderHelper=var3034, $r18=var2747, org.hibernate.internal.util.StringHelper=var254, $z2=var2122, 1=var1061}
;seq 
;cnt {}
;stmts r5 := @parameter0: org.hibernate.cfg.PropertyData;	r9 := @parameter1: java.lang.String;	r7 := @parameter2: java.util.Map;	r6 := @parameter3: org.hibernate.cfg.PropertyHolder;	r2 := @parameter4: org.hibernate.annotations.Comment;	r3 := @parameter5: org.hibernate.cfg.annotations.Nullability;	r8 := @parameter6: org.hibernate.boot.spi.MetadataBuildingContext;	$r0 = new org.hibernate.cfg.Ejb3Column;	specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void <init>()>();	r1 = newarray (org.hibernate.cfg.Ejb3Column)[1];	r1[0] = $r0;	if r2 == null goto $r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL>;	$r4 = <org.hibernate.cfg.annotations.Nullability: org.hibernate.cfg.annotations.Nullability FORCED_NULL>;	if r3 == $r4 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setLength(int)>(255);	$r17 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r18 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getRelativePath(org.hibernate.cfg.PropertyHolder,java.lang.String)>(r6, $r17);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyName(java.lang.String)>($r18);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setPropertyHolder(org.hibernate.cfg.PropertyHolder)>(r6);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setJoins(java.util.Map)>(r7);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setBuildingContext(org.hibernate.boot.spi.MetadataBuildingContext)>(r8);	$z2 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r9);	if $z2 != 0 goto virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(1);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void setImplicit(boolean)>(1);	staticinvoke <org.hibernate.cfg.Ejb3Column: void applyColumnDefault(org.hibernate.cfg.Ejb3Column,org.hibernate.cfg.PropertyData)>($r0, r5);	specialinvoke $r0.<org.hibernate.cfg.Ejb3Column: void extractDataFromPropertyData(org.hibernate.cfg.PropertyData)>(r5);	virtualinvoke $r0.<org.hibernate.cfg.Ejb3Column: void bind()>();	return r1
;block_num 5