(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var1935 0)
(declare-sort var1796 0)
(declare-sort var2680 0)
(declare-sort var3749 0)
(declare-sort var1164 0)
(declare-sort var2604 0)
(declare-sort var3627 0)
(declare-sort var1884 0)
(declare-sort var3353 0)
(declare-sort var658 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$propertyName/-1482999275 (var240) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun this$0/-1482999275 (var240) var1796)
(declare-fun var1796_access$100/-501384150 (var1796) var2680)
(declare-fun getWalker/1054712749 (var1164) var3749)
(declare-fun cast-from-var2680-to-var1164 (var2680) var1164)
(declare-fun getEnabledFilters/-499364216 (var3749) var2604)
(declare-fun var1796_access$200/1783521215 (var1796) var3627)
(declare-fun copyForCollectionProperty/225316680 (var3627) var3627)
(declare-fun setUseThetaStyle/1174747167 (var3627 Bool) var3627)
(declare-fun val$collectionPropertyMapping/-1482999275 (var240) var1884)
(declare-fun var1884_toColumns/701355653 (var1884 String String) (Array Int String))
(declare-fun var3353_createCollectionSubquery/-1105881935 (var3627 var2604 (Array Int String)) String)
(declare-fun var1796_access$300/-145531959 () var658)
(declare-fun var658_debugf/1238994679 (var658 String var24 var24 var24) void)
(declare-fun cast-from-String-to-var24 (String) var24)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var240 var240)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var274 var240) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$1 
(assert (not (= var274 null-var240)))
(declare-const var2003 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2003 null-String)))
(define-const var1359 String (val$propertyName/-1482999275 var274)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName> 
(assert true)
(define-const var329 Bool (equalsIgnoreCase/-92311102 var1359 "index")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("index") 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(assert (= (ite var329 1 0) 0)) ; Cond: $z0 == 0 
(define-const var997 var1796 (this$0/-1482999275 var274)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(define-const var2031 var2680 (var1796_access$100/-501384150 var997)) ; Statement: $r3 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.hql.internal.ast.tree.FromElement access$100(org.hibernate.hql.internal.ast.tree.FromElementType)>($r2) 
(assert true)
(define-const var891 var3749 (getWalker/1054712749 (cast-from-var2680-to-var1164 var2031))) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>() 
(assert true)
(define-const var3916 var2604 (getEnabledFilters/-499364216 var891)) ; Statement: r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map getEnabledFilters()>() 
(define-const var737 var1796 (this$0/-1482999275 var274)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(define-const var1126 var3627 (var1796_access$200/1783521215 var737)) ; Statement: $r7 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.engine.internal.JoinSequence access$200(org.hibernate.hql.internal.ast.tree.FromElementType)>($r6) 
(assert true)
(define-const var3434 var3627 (copyForCollectionProperty/225316680 var1126)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence copyForCollectionProperty()>() 
(assert true)
(define-const var500 var3627 (setUseThetaStyle/1174747167 var3434 (ite (= 1 1) true false))) ; Statement: $r13 = virtualinvoke $r8.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence setUseThetaStyle(boolean)>(1) 
(define-const var102 var1884 (val$collectionPropertyMapping/-1482999275 var274)) ; Statement: $r11 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.persister.entity.PropertyMapping val$collectionPropertyMapping> 
(define-const var3703 String (val$propertyName/-1482999275 var274)) ; Statement: $r10 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName> 
(define-const var3577 (Array Int String) (var1884_toColumns/701355653 var102 var2003 var3703)) ; Statement: $r12 = interfaceinvoke $r11.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r9, $r10) 
(define-const var1026 String (var3353_createCollectionSubquery/-1105881935 var500 var3916 var3577)) ; Statement: r14 = staticinvoke <org.hibernate.hql.internal.CollectionSubqueryFactory: java.lang.String createCollectionSubquery(org.hibernate.engine.internal.JoinSequence,java.util.Map,java.lang.String[])>($r13, r5, $r12) 
(define-const var3840 var658 var1796_access$300/-145531959) ; Statement: $r16 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.internal.CoreMessageLogger access$300()>() 
(define-const var2990 String (val$propertyName/-1482999275 var274)) ; Statement: $r15 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName> 
;(assert (var658_debugf/1238994679 var3840 "toColumns(%s,%s) : subquery = %s" (cast-from-String-to-var24 var2003) (cast-from-String-to-var24 var2990) (cast-from-String-to-var24 var1026))) ; Statement: interfaceinvoke $r16.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object,java.lang.Object)>("toColumns(%s,%s) : subquery = %s", r9, $r15, r14) 

(declare-const var3840!1 var658)
(declare-const var1906 String)
(declare-const var2003!1 String)
(declare-const var2990!1 String)
(declare-const var1026!1 String)
(define-const var40 (Array Int String) arr-String-init) ; Statement: $r17 = newarray (java.lang.String)[1] 
(define-const var1353 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1353)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1353!1 String)
(assert (= var1353!1 ""))
(assert true)
(define-const var340 String (append/672562846 var1353!1 "(")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1353!2 String)
(assert (= var1353!2 (str.++ var1353!1 "(")))
(assert true)
(define-const var3827 String (append/672562846 var340 var1026!1)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var340!1 String)
(assert (= var340!1 (str.++ var340 var1026!1)))
(assert true)
(define-const var1030 String (append/672562846 var3827 ")")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3827!1 String)
(assert (= var3827!1 (str.++ var3827 ")")))
(assert true)
(define-const var2650 String (toString/-2075883882 var1030)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var40!1 (Array Int String))
(assert (not (= var40!1 null-__Array__Int__String__)))
(assert (= (select var40!1 0) var2650)) ; Statement: $r17[0] = $r22 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {val$propertyName/-1482999275=([org.hibernate.hql.internal.ast.tree.FromElementType$1], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), this$0/-1482999275=([org.hibernate.hql.internal.ast.tree.FromElementType$1], org.hibernate.hql.internal.ast.tree.FromElementType), var1796_access$100/-501384150=([org.hibernate.hql.internal.ast.tree.FromElementType], org.hibernate.hql.internal.ast.tree.FromElement), getWalker/1054712749=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.HqlSqlWalker), cast-from-var2680-to-var1164=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getEnabledFilters/-499364216=([org.hibernate.hql.internal.ast.HqlSqlWalker], java.util.Map), var1796_access$200/1783521215=([org.hibernate.hql.internal.ast.tree.FromElementType], org.hibernate.engine.internal.JoinSequence), copyForCollectionProperty/225316680=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence), setUseThetaStyle/1174747167=([org.hibernate.engine.internal.JoinSequence, boolean], org.hibernate.engine.internal.JoinSequence), val$collectionPropertyMapping/-1482999275=([org.hibernate.hql.internal.ast.tree.FromElementType$1], org.hibernate.persister.entity.PropertyMapping), var1884_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[]), var3353_createCollectionSubquery/-1105881935=([org.hibernate.engine.internal.JoinSequence, java.util.Map, java.lang.String[]], java.lang.String), var1796_access$300/-145531959=([], org.hibernate.internal.CoreMessageLogger), var658_debugf/1238994679=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object, java.lang.Object, java.lang.Object], void), cast-from-String-to-var24=([java.lang.String], java.lang.Object), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var240=org.hibernate.hql.internal.ast.tree.FromElementType$1, var274=r0, var2003=r9, var1935=null_type, var1359=$r1, var329=$z0, var1796=org.hibernate.hql.internal.ast.tree.FromElementType, var997=$r2, var2680=org.hibernate.hql.internal.ast.tree.FromElement, var2031=$r3, var3749=org.hibernate.hql.internal.ast.HqlSqlWalker, var1164=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var891=$r4, var2604=java.util.Map, var3916=r5, var737=$r6, var3627=org.hibernate.engine.internal.JoinSequence, var1126=$r7, var3434=$r8, var500=$r13, var1884=org.hibernate.persister.entity.PropertyMapping, var102=$r11, var3703=$r10, var3577=$r12, var3353=org.hibernate.hql.internal.CollectionSubqueryFactory, var1026=r14, var658=org.hibernate.internal.CoreMessageLogger, var3840=$r16, var2990=$r15, var24=java.lang.Object, var1906="toColumns(%s,%s) : subquery = %s", var40=$r17, var1353=$r18, var340=$r19, var3827=$r20, var1030=$r21, var2650=$r22}
; {org.hibernate.hql.internal.ast.tree.FromElementType$1=var240, r0=var274, r9=var2003, null_type=var1935, $r1=var1359, $z0=var329, org.hibernate.hql.internal.ast.tree.FromElementType=var1796, $r2=var997, org.hibernate.hql.internal.ast.tree.FromElement=var2680, $r3=var2031, org.hibernate.hql.internal.ast.HqlSqlWalker=var3749, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var1164, $r4=var891, java.util.Map=var2604, r5=var3916, $r6=var737, org.hibernate.engine.internal.JoinSequence=var3627, $r7=var1126, $r8=var3434, $r13=var500, org.hibernate.persister.entity.PropertyMapping=var1884, $r11=var102, $r10=var3703, $r12=var3577, org.hibernate.hql.internal.CollectionSubqueryFactory=var3353, r14=var1026, org.hibernate.internal.CoreMessageLogger=var658, $r16=var3840, $r15=var2990, java.lang.Object=var24, "toColumns(%s,%s) : subquery = %s"=var1906, $r17=var40, $r18=var1353, $r19=var340, $r20=var3827, $r21=var1030, $r22=var2650}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$1;	r9 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("index");	if $z0 == 0 goto $r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r3 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.hql.internal.ast.tree.FromElement access$100(org.hibernate.hql.internal.ast.tree.FromElementType)>($r2);	$r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.HqlSqlWalker getWalker()>();	r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map getEnabledFilters()>();	$r6 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r7 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.engine.internal.JoinSequence access$200(org.hibernate.hql.internal.ast.tree.FromElementType)>($r6);	$r8 = virtualinvoke $r7.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence copyForCollectionProperty()>();	$r13 = virtualinvoke $r8.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence setUseThetaStyle(boolean)>(1);	$r11 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.persister.entity.PropertyMapping val$collectionPropertyMapping>;	$r10 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName>;	$r12 = interfaceinvoke $r11.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r9, $r10);	r14 = staticinvoke <org.hibernate.hql.internal.CollectionSubqueryFactory: java.lang.String createCollectionSubquery(org.hibernate.engine.internal.JoinSequence,java.util.Map,java.lang.String[])>($r13, r5, $r12);	$r16 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.internal.CoreMessageLogger access$300()>();	$r15 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName>;	interfaceinvoke $r16.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object,java.lang.Object)>("toColumns(%s,%s) : subquery = %s", r9, $r15, r14);	$r17 = newarray (java.lang.String)[1];	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r17[0] = $r22;	return $r17
;block_num 2