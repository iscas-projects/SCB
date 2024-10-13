(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2851 0)
(declare-sort var719 0)
(declare-sort var1078 0)
(declare-sort var1090 0)
(declare-sort var2083 0)
(declare-sort var1835 0)
(declare-sort var2678 0)
(declare-sort var1550 0)
(declare-sort var1858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-504961179 (var1078 var719 var1078 String) void)
(declare-fun cast-from-var2851-to-var1078 (var2851) var1078)
(declare-fun componentPath/-1490585597 (var2851) String)
(declare-fun componentType/-1490585597 (var2851) var2083)
(declare-fun var1835_unqualify/-238008441 (String) String)
(declare-fun componentProperty/-1490585597 (var2851) String)
(declare-fun addJoinByPathMap/939694978 (var719 String var1078) void)
(declare-fun var2678-init () var2678)
(declare-fun <init>/570232062 (var2678 var2851 var1078) void)
(declare-fun initializeComponentJoin/-1052566280 (var1078 var1550) void)
(declare-fun cast-from-var2678-to-var1550 (var2678) var1550)
(declare-fun getPropertyMapping/-63436456 (var1078 String) var1858)
(declare-fun getTableAlias/-89139576 (var1078) String)
(declare-fun var1858_toColumns/701355653 (var1858 String String) (Array Int String))
(declare-fun columns/-1490585597 (var2851) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun columnsFragment/-1490585597 (var2851) String)
(declare-const null-var2851 var2851)
(declare-const null-var719 var719)
(declare-const null-var1078 var1078)
(declare-const null-String String)
(declare-const null-var2083 var2083)
(declare-const var2448 var2851) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin 
(assert (not (= var2448 null-var2851)))
(declare-const var1723 var719) ; Statement: r1 := @parameter0: org.hibernate.hql.internal.ast.tree.FromClause 
(assert (not (= var1723 null-var719)))
(declare-const var582 var1078) ; Statement: r2 := @parameter1: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var582 null-var1078)))
(declare-const var1206 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1206 null-String)))
(declare-const var935 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var935 null-String)))
(declare-const var2072 var2083) ; Statement: r5 := @parameter4: org.hibernate.type.CompositeType 
(assert (not (= var2072 null-var2083)))
(assert true)
;(assert (<init>/-504961179 (cast-from-var2851-to-var1078 var2448) var1723 var582 var1206)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: void <init>(org.hibernate.hql.internal.ast.tree.FromClause,org.hibernate.hql.internal.ast.tree.FromElement,java.lang.String)>(r1, r2, r3) 

(declare-const var2448!1 var2851)
(declare-const var1723!1 var719)
(declare-const var582!1 var1078)
(declare-const var1206!1 String)
(declare-const var2448!2 var2851)
(assert (not (= var2448!2 null-var2851)))
(assert (= (componentPath/-1490585597 var2448!2) var935)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String componentPath> = r4 
(declare-const var2448!3 var2851)
(assert (not (= var2448!3 null-var2851)))
(assert (= (componentType/-1490585597 var2448!3) var2072)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: org.hibernate.type.CompositeType componentType> = r5 
(define-const var3904 String (var1835_unqualify/-238008441 var935)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4) 
(declare-const var2448!4 var2851)
(assert (not (= var2448!4 null-var2851)))
(assert (= (componentProperty/-1490585597 var2448!4) var3904)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String componentProperty> = $r6 
(assert true)
;(assert (addJoinByPathMap/939694978 var1723!1 var935 (cast-from-var2851-to-var1078 var2448!4))) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromClause: void addJoinByPathMap(java.lang.String,org.hibernate.hql.internal.ast.tree.FromElement)>(r4, r0) 

(declare-const var1723!2 var719)
(declare-const var935!1 String)
(declare-const var2448!5 var2851)
(define-const var3906 var2678 var2678-init) ; Statement: $r7 = new org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType 
(assert true)
;(assert (<init>/570232062 var3906 var2448!5 (cast-from-var2851-to-var1078 var2448!5))) ; Statement: specialinvoke $r7.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: void <init>(org.hibernate.hql.internal.ast.tree.ComponentJoin,org.hibernate.hql.internal.ast.tree.FromElement)>(r0, r0) 

(declare-const var3906!1 var2678)
(declare-const var2448!6 var2851)
(declare-const var2448!7 var2851)
(assert true)
;(assert (initializeComponentJoin/-1052566280 (cast-from-var2851-to-var1078 var2448!7) (cast-from-var2678-to-var1550 var3906!1))) ; Statement: virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: void initializeComponentJoin(org.hibernate.hql.internal.ast.tree.FromElementType)>($r7) 

(declare-const var2448!8 var2851)
(declare-const var3906!2 var2678)
(assert true)
(define-const var2321 var1858 (getPropertyMapping/-63436456 var582!1 "")) ; Statement: $r10 = virtualinvoke r2.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>("") 
(assert true)
(define-const var2873 String (getTableAlias/-89139576 (cast-from-var2851-to-var1078 var2448!8))) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getTableAlias()>() 
(define-const var1159 String (componentProperty/-1490585597 var2448!8)) ; Statement: $r8 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String componentProperty> 
(define-const var3142 (Array Int String) (var1858_toColumns/701355653 var2321 var2873 var1159)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r9, $r8) 
(declare-const var2448!9 var2851)
(assert (not (= var2448!9 null-var2851)))
(assert (= (columns/-1490585597 var2448!9) var3142)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String[] columns> = $r11 
(define-const var797 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var797)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var797!1 String)
(assert (= var797!1 ""))
(define-const var330 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3760 (Array Int String) (columns/-1490585597 var2448!9)) ; Statement: $r13 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String[] columns> 
(define-const var2558 Int (getLength-Arr-String-1 var3760)) ; Statement: $i0 = lengthof $r13 
 ; Statement: if i1 >= $i0 goto $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var330 var2558)) ; Cond: i1 >= $i0 
(assert true)
(define-const var2102 String (toString/-2075883882 var797!1)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2448!10 var2851)
(assert (not (= var2448!10 null-var2851)))
(assert (= (columnsFragment/-1490585597 var2448!10) var2102)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String columnsFragment> = $r14 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-504961179=([org.hibernate.hql.internal.ast.tree.FromElement, org.hibernate.hql.internal.ast.tree.FromClause, org.hibernate.hql.internal.ast.tree.FromElement, java.lang.String], void), cast-from-var2851-to-var1078=([org.hibernate.hql.internal.ast.tree.ComponentJoin], org.hibernate.hql.internal.ast.tree.FromElement), componentPath/-1490585597=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String), componentType/-1490585597=([org.hibernate.hql.internal.ast.tree.ComponentJoin], org.hibernate.type.CompositeType), var1835_unqualify/-238008441=([java.lang.String], java.lang.String), componentProperty/-1490585597=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String), addJoinByPathMap/939694978=([org.hibernate.hql.internal.ast.tree.FromClause, java.lang.String, org.hibernate.hql.internal.ast.tree.FromElement], void), var2678-init=([], org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType), <init>/570232062=([org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType, org.hibernate.hql.internal.ast.tree.ComponentJoin, org.hibernate.hql.internal.ast.tree.FromElement], void), initializeComponentJoin/-1052566280=([org.hibernate.hql.internal.ast.tree.FromElement, org.hibernate.hql.internal.ast.tree.FromElementType], void), cast-from-var2678-to-var1550=([org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType], org.hibernate.hql.internal.ast.tree.FromElementType), getPropertyMapping/-63436456=([org.hibernate.hql.internal.ast.tree.FromElement, java.lang.String], org.hibernate.persister.entity.PropertyMapping), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), var1858_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[]), columns/-1490585597=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), columnsFragment/-1490585597=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String)}
; {var2851=org.hibernate.hql.internal.ast.tree.ComponentJoin, var2448=r0, var719=org.hibernate.hql.internal.ast.tree.FromClause, var1723=r1, var1078=org.hibernate.hql.internal.ast.tree.FromElement, var582=r2, var1206=r3, var1090=null_type, var935=r4, var2083=org.hibernate.type.CompositeType, var2072=r5, var1835=org.hibernate.internal.util.StringHelper, var3904=$r6, var2678=org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType, var3906=$r7, var1550=org.hibernate.hql.internal.ast.tree.FromElementType, var1858=org.hibernate.persister.entity.PropertyMapping, var2321=$r10, var2873=$r9, var1159=$r8, var3142=$r11, var797=$r12, var330=i1, var3760=$r13, var2558=$i0, var2102=$r14}
; {org.hibernate.hql.internal.ast.tree.ComponentJoin=var2851, r0=var2448, org.hibernate.hql.internal.ast.tree.FromClause=var719, r1=var1723, org.hibernate.hql.internal.ast.tree.FromElement=var1078, r2=var582, r3=var1206, null_type=var1090, r4=var935, org.hibernate.type.CompositeType=var2083, r5=var2072, org.hibernate.internal.util.StringHelper=var1835, $r6=var3904, org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType=var2678, $r7=var3906, org.hibernate.hql.internal.ast.tree.FromElementType=var1550, org.hibernate.persister.entity.PropertyMapping=var1858, $r10=var2321, $r9=var2873, $r8=var1159, $r11=var3142, $r12=var797, i1=var330, $r13=var3760, $i0=var2558, $r14=var2102}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin;	r1 := @parameter0: org.hibernate.hql.internal.ast.tree.FromClause;	r2 := @parameter1: org.hibernate.hql.internal.ast.tree.FromElement;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r5 := @parameter4: org.hibernate.type.CompositeType;	specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: void <init>(org.hibernate.hql.internal.ast.tree.FromClause,org.hibernate.hql.internal.ast.tree.FromElement,java.lang.String)>(r1, r2, r3);	r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String componentPath> = r4;	r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: org.hibernate.type.CompositeType componentType> = r5;	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4);	r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String componentProperty> = $r6;	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromClause: void addJoinByPathMap(java.lang.String,org.hibernate.hql.internal.ast.tree.FromElement)>(r4, r0);	$r7 = new org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType;	specialinvoke $r7.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentFromElementType: void <init>(org.hibernate.hql.internal.ast.tree.ComponentJoin,org.hibernate.hql.internal.ast.tree.FromElement)>(r0, r0);	virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: void initializeComponentJoin(org.hibernate.hql.internal.ast.tree.FromElementType)>($r7);	$r10 = virtualinvoke r2.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>("");	$r9 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getTableAlias()>();	$r8 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String componentProperty>;	$r11 = interfaceinvoke $r10.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r9, $r8);	r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String[] columns> = $r11;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$r13 = r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String[] columns>;	$i0 = lengthof $r13;	if i1 >= $i0 goto $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String columnsFragment> = $r14;	return
;block_num 3