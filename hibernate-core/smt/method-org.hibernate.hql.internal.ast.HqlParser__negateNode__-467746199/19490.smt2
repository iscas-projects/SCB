(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1483 0)
(declare-sort var3745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3745_getType/1604486320 (var3745) Int)
(declare-fun var3745_setType/260848542 (var3745 Int) void)
(declare-fun var3745_setText/1726115213 (var3745 String) void)
(declare-fun var3745_getFirstChild/-534341403 (var3745) var3745)
(declare-fun negateNode/-467746199 (var1483 var3745) var3745)
(declare-fun var3745_setFirstChild/-2054865847 (var3745 var3745) void)
(declare-fun var3745_getNextSibling/-331034150 (var3745) var3745)
(declare-fun var3745_setNextSibling/-1258626820 (var3745 var3745) void)
(declare-const null-var1483 var1483)
(declare-const null-var3745 var3745)
(declare-const var3056 var1483) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var3056 null-var1483)))
(declare-const var1807 var3745) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1807 null-var3745)))
(define-const var3389 Int (var3745_getType/1604486320 var1807)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var3389 41) (and (not (= var3389 35)) (and (not (= var3389 27)) (and (not (= var3389 10)) (and (not (= var3389 6)) true)))))) ; Intersect: Cond: $i0 == 41  and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional     
;(assert (var3745_setType/260848542 var1807 6)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6) 

(declare-const var1807!1 var3745)
(declare-const var3449 Int)
;(assert (var3745_setText/1726115213 var1807!1 "{and}")) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>("{and}") 

(declare-const var1807!2 var3745)
(declare-const var2498 String)
(define-const var676 var3745 (var3745_getFirstChild/-534341403 var1807!2)) ; Statement: $r57 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
(assert true)
(define-const var2570 var3745 (negateNode/-467746199 var3056 var676)) ; Statement: $r58 = virtualinvoke r56.<org.hibernate.hql.internal.ast.HqlParser: antlr.collections.AST negateNode(antlr.collections.AST)>($r57) 
;(assert (var3745_setFirstChild/-2054865847 var1807!2 var2570)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setFirstChild(antlr.collections.AST)>($r58) 

(declare-const var1807!3 var3745)
(declare-const var2570!1 var3745)
(define-const var309 var3745 (var3745_getFirstChild/-534341403 var1807!3)) ; Statement: $r62 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
(define-const var62 var3745 (var3745_getFirstChild/-534341403 var1807!3)) ; Statement: $r59 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
(define-const var1918 var3745 (var3745_getNextSibling/-331034150 var62)) ; Statement: $r60 = interfaceinvoke $r59.<antlr.collections.AST: antlr.collections.AST getNextSibling()>() 
(assert true)
(define-const var2687 var3745 (negateNode/-467746199 var3056 var1918)) ; Statement: $r61 = virtualinvoke r56.<org.hibernate.hql.internal.ast.HqlParser: antlr.collections.AST negateNode(antlr.collections.AST)>($r60) 
;(assert (var3745_setNextSibling/-1258626820 var309 var2687)) ; Statement: interfaceinvoke $r62.<antlr.collections.AST: void setNextSibling(antlr.collections.AST)>($r61) 

(declare-const var309!1 var3745)
(declare-const var2687!1 var3745)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3745_getType/1604486320=([antlr.collections.AST], int), var3745_setType/260848542=([antlr.collections.AST, int], void), var3745_setText/1726115213=([antlr.collections.AST, java.lang.String], void), var3745_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), negateNode/-467746199=([org.hibernate.hql.internal.ast.HqlParser, antlr.collections.AST], antlr.collections.AST), var3745_setFirstChild/-2054865847=([antlr.collections.AST, antlr.collections.AST], void), var3745_getNextSibling/-331034150=([antlr.collections.AST], antlr.collections.AST), var3745_setNextSibling/-1258626820=([antlr.collections.AST, antlr.collections.AST], void)}
; {var1483=org.hibernate.hql.internal.ast.HqlParser, var3056=r56, var3745=antlr.collections.AST, var1807=r0, var3389=$i0, var3449=6, var2498="{and}", var676=$r57, var2570=$r58, var309=$r62, var62=$r59, var1918=$r60, var2687=$r61}
; {org.hibernate.hql.internal.ast.HqlParser=var1483, r56=var3056, antlr.collections.AST=var3745, r0=var1807, $i0=var3389, 6=var3449, "{and}"=var2498, $r57=var676, $r58=var2570, $r62=var309, $r59=var62, $r60=var1918, $r61=var2687}
;seq 
;cnt {}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>("{and}");	$r57 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	$r58 = virtualinvoke r56.<org.hibernate.hql.internal.ast.HqlParser: antlr.collections.AST negateNode(antlr.collections.AST)>($r57);	interfaceinvoke r0.<antlr.collections.AST: void setFirstChild(antlr.collections.AST)>($r58);	$r62 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	$r59 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	$r60 = interfaceinvoke $r59.<antlr.collections.AST: antlr.collections.AST getNextSibling()>();	$r61 = virtualinvoke r56.<org.hibernate.hql.internal.ast.HqlParser: antlr.collections.AST negateNode(antlr.collections.AST)>($r60);	interfaceinvoke $r62.<antlr.collections.AST: void setNextSibling(antlr.collections.AST)>($r61);	return r0
;block_num 2