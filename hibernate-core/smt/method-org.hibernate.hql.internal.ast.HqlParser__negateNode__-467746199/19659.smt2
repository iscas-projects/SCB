(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2208 0)
(declare-sort var833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var833_getType/1604486320 (var833) Int)
(declare-fun var833_setType/260848542 (var833 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var833_getText/-200495485 (var833) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var833_setText/1726115213 (var833 String) void)
(declare-const null-var2208 var2208)
(declare-const null-var833 var833)
(declare-const var3701 var2208) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var3701 null-var2208)))
(declare-const var2441 var833) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var2441 null-var833)))
(define-const var209 Int (var833_getType/1604486320 var2441)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var209 85) (and (not (= var209 84)) (and (not (= var209 41)) (and (not (= var209 35)) (and (not (= var209 27)) (and (not (= var209 10)) (and (not (= var209 6)) true)))))))) ; Intersect: Cond: $i0 == 85  and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional       
;(assert (var833_setType/260848542 var2441 84)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84) 

(declare-const var2441!1 var833)
(declare-const var3059 Int)
(define-const var381 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var381)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var381!1 String)
(assert (= var381!1 ""))
(assert true)
(define-const var549 String (append/672562846 var381!1 "{not}")) ; Statement: $r48 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var381!2 String)
(assert (= var381!2 (str.++ var381!1 "{not}")))
(define-const var979 String (var833_getText/-200495485 var2441!1)) ; Statement: $r47 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2947 String (append/672562846 var549 var979)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var549!1 String)
(assert (= var549!1 (str.++ var549 var979)))
(assert true)
(define-const var3653 String (toString/-2075883882 var2947)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var833_setText/1726115213 var2441!1 var3653)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r50) 

(declare-const var2441!2 var833)
(declare-const var3653!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var833_getType/1604486320=([antlr.collections.AST], int), var833_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var833_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var833_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var2208=org.hibernate.hql.internal.ast.HqlParser, var3701=r56, var833=antlr.collections.AST, var2441=r0, var209=$i0, var3059=84, var381=$r46, var549=$r48, var979=$r47, var2947=$r49, var3653=$r50}
; {org.hibernate.hql.internal.ast.HqlParser=var2208, r56=var3701, antlr.collections.AST=var833, r0=var2441, $i0=var209, 84=var3059, $r46=var381, $r48=var549, $r47=var979, $r49=var2947, $r50=var3653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r48 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r47 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r50);	return r0
;block_num 2