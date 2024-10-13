(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var53 0)
(declare-sort var3844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3844_getType/1604486320 (var3844) Int)
(declare-fun var3844_setType/260848542 (var3844 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3844_getText/-200495485 (var3844) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3844_setText/1726115213 (var3844 String) void)
(declare-const null-var53 var53)
(declare-const null-var3844 var3844)
(declare-const var1534 var53) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var1534 null-var53)))
(declare-const var1701 var3844) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1701 null-var3844)))
(define-const var762 Int (var3844_getType/1604486320 var1701)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var762 84) (and (not (= var762 41)) (and (not (= var762 35)) (and (not (= var762 27)) (and (not (= var762 10)) (and (not (= var762 6)) true))))))) ; Intersect: Cond: $i0 == 84  and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional      
;(assert (var3844_setType/260848542 var1701 85)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85) 

(declare-const var1701!1 var3844)
(declare-const var143 Int)
(define-const var1907 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1907)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1907!1 String)
(assert (= var1907!1 ""))
(assert true)
(define-const var3223 String (append/672562846 var1907!1 "{not}")) ; Statement: $r53 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var1907!2 String)
(assert (= var1907!2 (str.++ var1907!1 "{not}")))
(define-const var867 String (var3844_getText/-200495485 var1701!1)) ; Statement: $r52 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2572 String (append/672562846 var3223 var867)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var3223!1 String)
(assert (= var3223!1 (str.++ var3223 var867)))
(assert true)
(define-const var3566 String (toString/-2075883882 var2572)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3844_setText/1726115213 var1701!1 var3566)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r55) 

(declare-const var1701!2 var3844)
(declare-const var3566!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3844_getType/1604486320=([antlr.collections.AST], int), var3844_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3844_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3844_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var53=org.hibernate.hql.internal.ast.HqlParser, var1534=r56, var3844=antlr.collections.AST, var1701=r0, var762=$i0, var143=85, var1907=$r51, var3223=$r53, var867=$r52, var2572=$r54, var3566=$r55}
; {org.hibernate.hql.internal.ast.HqlParser=var53, r56=var1534, antlr.collections.AST=var3844, r0=var1701, $i0=var762, 85=var143, $r51=var1907, $r53=var3223, $r52=var867, $r54=var2572, $r55=var3566}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r52 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r55);	return r0
;block_num 2