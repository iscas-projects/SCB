(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1557_getType/1604486320 (var1557) Int)
(declare-fun var1557_setType/260848542 (var1557 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1557_getText/-200495485 (var1557) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1557_setText/1726115213 (var1557 String) void)
(declare-const null-var3671 var3671)
(declare-const null-var1557 var1557)
(declare-const var3017 var3671) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var3017 null-var3671)))
(declare-const var86 var1557) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var86 null-var1557)))
(define-const var982 Int (var1557_getType/1604486320 var86)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var982 108) (and (not (= var982 89)) (and (not (= var982 88)) (and (not (= var982 87)) (and (not (= var982 85)) (and (not (= var982 84)) (and (not (= var982 41)) (and (not (= var982 35)) (and (not (= var982 27)) (and (not (= var982 10)) (and (not (= var982 6)) true)))))))))))) ; Intersect: Cond: $i0 == 108  and Intersect: Negate: Cond: $i0 == 89   and Intersect: Negate: Cond: $i0 == 88   and Intersect: Negate: Cond: $i0 == 87   and Intersect: Negate: Cond: $i0 == 85   and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional           
;(assert (var1557_setType/260848542 var86 115)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115) 

(declare-const var86!1 var1557)
(declare-const var204 Int)
(define-const var2424 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2424)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2424!1 String)
(assert (= var2424!1 ""))
(assert true)
(define-const var285 String (append/672562846 var2424!1 "{not}")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var2424!2 String)
(assert (= var2424!2 (str.++ var2424!1 "{not}")))
(define-const var2988 String (var1557_getText/-200495485 var86!1)) ; Statement: $r27 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var3143 String (append/672562846 var285 var2988)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var285!1 String)
(assert (= var285!1 (str.++ var285 var2988)))
(assert true)
(define-const var1690 String (toString/-2075883882 var3143)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1557_setText/1726115213 var86!1 var1690)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r30) 

(declare-const var86!2 var1557)
(declare-const var1690!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1557_getType/1604486320=([antlr.collections.AST], int), var1557_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1557_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1557_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var3671=org.hibernate.hql.internal.ast.HqlParser, var3017=r56, var1557=antlr.collections.AST, var86=r0, var982=$i0, var204=115, var2424=$r26, var285=$r28, var2988=$r27, var3143=$r29, var1690=$r30}
; {org.hibernate.hql.internal.ast.HqlParser=var3671, r56=var3017, antlr.collections.AST=var1557, r0=var86, $i0=var982, 115=var204, $r26=var2424, $r28=var285, $r27=var2988, $r29=var3143, $r30=var1690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r27 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r30);	return r0
;block_num 2