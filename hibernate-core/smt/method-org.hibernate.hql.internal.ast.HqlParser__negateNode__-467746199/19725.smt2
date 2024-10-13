(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1280 0)
(declare-sort var3591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3591_getType/1604486320 (var3591) Int)
(declare-fun var3591_setType/260848542 (var3591 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3591_getText/-200495485 (var3591) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3591_setText/1726115213 (var3591 String) void)
(declare-const null-var1280 var1280)
(declare-const null-var3591 var3591)
(declare-const var659 var1280) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var659 null-var1280)))
(declare-const var1987 var3591) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1987 null-var3591)))
(define-const var3274 Int (var3591_getType/1604486320 var1987)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var3274 119) (and (not (= var3274 118)) (and (not (= var3274 117)) (and (not (= var3274 115)) (and (not (= var3274 108)) (and (not (= var3274 89)) (and (not (= var3274 88)) (and (not (= var3274 87)) (and (not (= var3274 85)) (and (not (= var3274 84)) (and (not (= var3274 41)) (and (not (= var3274 35)) (and (not (= var3274 27)) (and (not (= var3274 10)) (and (not (= var3274 6)) true)))))))))))))))) ; Intersect: Cond: $i0 == 119  and Intersect: Negate: Cond: $i0 == 118   and Intersect: Negate: Cond: $i0 == 117   and Intersect: Negate: Cond: $i0 == 115   and Intersect: Negate: Cond: $i0 == 108   and Intersect: Negate: Cond: $i0 == 89   and Intersect: Negate: Cond: $i0 == 88   and Intersect: Negate: Cond: $i0 == 87   and Intersect: Negate: Cond: $i0 == 85   and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional               
;(assert (var3591_setType/260848542 var1987 118)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118) 

(declare-const var1987!1 var3591)
(declare-const var1217 Int)
(define-const var991 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var991)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var991!1 String)
(assert (= var991!1 ""))
(assert true)
(define-const var3220 String (append/672562846 var991!1 "{not}")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var991!2 String)
(assert (= var991!2 (str.++ var991!1 "{not}")))
(define-const var754 String (var3591_getText/-200495485 var1987!1)) ; Statement: $r7 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2400 String (append/672562846 var3220 var754)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3220!1 String)
(assert (= var3220!1 (str.++ var3220 var754)))
(assert true)
(define-const var1783 String (toString/-2075883882 var2400)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3591_setText/1726115213 var1987!1 var1783)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r10) 

(declare-const var1987!2 var3591)
(declare-const var1783!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3591_getType/1604486320=([antlr.collections.AST], int), var3591_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3591_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3591_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var1280=org.hibernate.hql.internal.ast.HqlParser, var659=r56, var3591=antlr.collections.AST, var1987=r0, var3274=$i0, var1217=118, var991=$r6, var3220=$r8, var754=$r7, var2400=$r9, var1783=$r10}
; {org.hibernate.hql.internal.ast.HqlParser=var1280, r56=var659, antlr.collections.AST=var3591, r0=var1987, $i0=var3274, 118=var1217, $r6=var991, $r8=var3220, $r7=var754, $r9=var2400, $r10=var1783}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r7 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r10);	return r0
;block_num 2