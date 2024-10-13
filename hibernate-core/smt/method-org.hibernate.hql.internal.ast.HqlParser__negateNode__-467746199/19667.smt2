(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2364 0)
(declare-sort var303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var303_getType/1604486320 (var303) Int)
(declare-fun var303_setType/260848542 (var303 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var303_getText/-200495485 (var303) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var303_setText/1726115213 (var303 String) void)
(declare-const null-var2364 var2364)
(declare-const null-var303 var303)
(declare-const var2743 var2364) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var2743 null-var2364)))
(declare-const var610 var303) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var610 null-var303)))
(define-const var354 Int (var303_getType/1604486320 var610)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var354 87) (and (not (= var354 85)) (and (not (= var354 84)) (and (not (= var354 41)) (and (not (= var354 35)) (and (not (= var354 27)) (and (not (= var354 10)) (and (not (= var354 6)) true))))))))) ; Intersect: Cond: $i0 == 87  and Intersect: Negate: Cond: $i0 == 85   and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional        
;(assert (var303_setType/260848542 var610 10)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10) 

(declare-const var610!1 var303)
(declare-const var3316 Int)
(define-const var3102 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3102)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3102!1 String)
(assert (= var3102!1 ""))
(assert true)
(define-const var3556 String (append/672562846 var3102!1 "{not}")) ; Statement: $r43 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var3102!2 String)
(assert (= var3102!2 (str.++ var3102!1 "{not}")))
(define-const var195 String (var303_getText/-200495485 var610!1)) ; Statement: $r42 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2828 String (append/672562846 var3556 var195)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42) 
(declare-const var3556!1 String)
(assert (= var3556!1 (str.++ var3556 var195)))
(assert true)
(define-const var1928 String (toString/-2075883882 var2828)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var303_setText/1726115213 var610!1 var1928)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r45) 

(declare-const var610!2 var303)
(declare-const var1928!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var303_getType/1604486320=([antlr.collections.AST], int), var303_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var303_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var303_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var2364=org.hibernate.hql.internal.ast.HqlParser, var2743=r56, var303=antlr.collections.AST, var610=r0, var354=$i0, var3316=10, var3102=$r41, var3556=$r43, var195=$r42, var2828=$r44, var1928=$r45}
; {org.hibernate.hql.internal.ast.HqlParser=var2364, r56=var2743, antlr.collections.AST=var303, r0=var610, $i0=var354, 10=var3316, $r41=var3102, $r43=var3556, $r42=var195, $r44=var2828, $r45=var1928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r42 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r45);	return r0
;block_num 2