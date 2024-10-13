(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3395 0)
(declare-sort var2068 0)
(declare-sort var1447 0)
(declare-sort var340 0)
(declare-sort var3436 0)
(declare-sort var3799 0)
(declare-sort var1542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3436) Int)
(declare-fun cast-from-var1447-to-var3436 (var1447) var3436)
(declare-fun var3799-init () var3799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1542) String)
(declare-fun cast-from-var1447-to-var1542 (var1447) var1542)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3799 String) void)
(declare-const null-var3395 var3395)
(declare-const null-var2068 var2068)
(declare-const null-var1447 var1447)
(declare-const var340-$SwitchMap$org$hibernate$query$criteria$LiteralHandlingMode (Array Int Int))
(declare-const var1233 var3395) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.expression.LiteralExpression 
(assert (not (= var1233 null-var3395)))
(declare-const var3729 var2068) ; Statement: r12 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3729 null-var2068)))
(declare-const var1427 var1447) ; Statement: r0 := @parameter1: org.hibernate.query.criteria.LiteralHandlingMode 
(assert (not (= var1427 null-var1447)))
(define-const var2642 (Array Int Int) var340-$SwitchMap$org$hibernate$query$criteria$LiteralHandlingMode) ; Statement: $r1 = <org.hibernate.query.criteria.internal.expression.LiteralExpression$1: int[] $SwitchMap$org$hibernate$query$criteria$LiteralHandlingMode> 
(assert true)
(define-const var2224 Int (ordinal/-291641772 (cast-from-var1447-to-var3436 var1427))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.query.criteria.LiteralHandlingMode: int ordinal()>() 
(define-const var3086 Int (select var2642 var2224)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r19 = r2.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Object literal>;     case 2: goto $r18 = specialinvoke r2.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.String bindLiteral(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r12);     case 3: goto r31 = r2.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Object literal>;     default: goto $r26 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3086 3)) (and (not (= var3086 2)) (and (not (= var3086 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var1088 var3799 var3799-init) ; Statement: $r26 = new java.lang.IllegalArgumentException 
(define-const var2228 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2228)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2228!1 String)
(assert (= var2228!1 ""))
(assert true)
(define-const var2861 String (append/672562846 var2228!1 "Unexpected LiteralHandlingMode: ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected LiteralHandlingMode: ") 
(declare-const var2228!2 String)
(assert (= var2228!2 (str.++ var2228!1 "Unexpected LiteralHandlingMode: ")))
(assert true)
(define-const var2116 String (append/-1031950772 var2861 (cast-from-var1447-to-var1542 var1427))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2861!1 String)
(assert (str.prefixof var2861 var2861!1))
(assert true)
(define-const var3618 String (toString/-2075883882 var2116)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1088 var3618)) ; Statement: specialinvoke $r26.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r30) 

(declare-const var1088!1 var3799)
(declare-const var3618!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1447-to-var3436=([org.hibernate.query.criteria.LiteralHandlingMode], java.lang.Enum), var3799-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1447-to-var1542=([org.hibernate.query.criteria.LiteralHandlingMode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3395=org.hibernate.query.criteria.internal.expression.LiteralExpression, var1233=r2, var2068=org.hibernate.query.criteria.internal.compile.RenderingContext, var3729=r12, var1447=org.hibernate.query.criteria.LiteralHandlingMode, var1427=r0, var340=org.hibernate.query.criteria.internal.expression.LiteralExpression$1, var2642=$r1, var3436=java.lang.Enum, var2224=$i0, var3086=$i1, var3799=java.lang.IllegalArgumentException, var1088=$r26, var2228=$r27, var2861=$r28, var1542=java.lang.Object, var2116=$r29, var3618=$r30}
; {org.hibernate.query.criteria.internal.expression.LiteralExpression=var3395, r2=var1233, org.hibernate.query.criteria.internal.compile.RenderingContext=var2068, r12=var3729, org.hibernate.query.criteria.LiteralHandlingMode=var1447, r0=var1427, org.hibernate.query.criteria.internal.expression.LiteralExpression$1=var340, $r1=var2642, java.lang.Enum=var3436, $i0=var2224, $i1=var3086, java.lang.IllegalArgumentException=var3799, $r26=var1088, $r27=var2228, $r28=var2861, java.lang.Object=var1542, $r29=var2116, $r30=var3618}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.expression.LiteralExpression;	r12 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	r0 := @parameter1: org.hibernate.query.criteria.LiteralHandlingMode;	$r1 = <org.hibernate.query.criteria.internal.expression.LiteralExpression$1: int[] $SwitchMap$org$hibernate$query$criteria$LiteralHandlingMode>;	$i0 = virtualinvoke r0.<org.hibernate.query.criteria.LiteralHandlingMode: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r19 = r2.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Object literal>;     case 2: goto $r18 = specialinvoke r2.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.String bindLiteral(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r12);     case 3: goto r31 = r2.<org.hibernate.query.criteria.internal.expression.LiteralExpression: java.lang.Object literal>;     default: goto $r26 = new java.lang.IllegalArgumentException; };	$r26 = new java.lang.IllegalArgumentException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected LiteralHandlingMode: ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r30);	throw $r26
;block_num 2