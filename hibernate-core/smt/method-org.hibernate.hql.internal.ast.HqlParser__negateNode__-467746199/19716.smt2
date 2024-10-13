(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2561 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1253_getType/1604486320 (var1253) Int)
(declare-fun var1253_setType/260848542 (var1253 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1253_getText/-200495485 (var1253) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1253_setText/1726115213 (var1253 String) void)
(declare-const null-var2561 var2561)
(declare-const null-var1253 var1253)
(declare-const var2228 var2561) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var2228 null-var2561)))
(declare-const var3428 var1253) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3428 null-var1253)))
(define-const var1697 Int (var1253_getType/1604486320 var3428)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var1697 118) (and (not (= var1697 117)) (and (not (= var1697 115)) (and (not (= var1697 108)) (and (not (= var1697 89)) (and (not (= var1697 88)) (and (not (= var1697 87)) (and (not (= var1697 85)) (and (not (= var1697 84)) (and (not (= var1697 41)) (and (not (= var1697 35)) (and (not (= var1697 27)) (and (not (= var1697 10)) (and (not (= var1697 6)) true))))))))))))))) ; Intersect: Cond: $i0 == 118  and Intersect: Negate: Cond: $i0 == 117   and Intersect: Negate: Cond: $i0 == 115   and Intersect: Negate: Cond: $i0 == 108   and Intersect: Negate: Cond: $i0 == 89   and Intersect: Negate: Cond: $i0 == 88   and Intersect: Negate: Cond: $i0 == 87   and Intersect: Negate: Cond: $i0 == 85   and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional              
;(assert (var1253_setType/260848542 var3428 119)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119) 

(declare-const var3428!1 var1253)
(declare-const var3673 Int)
(define-const var3325 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3325)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3325!1 String)
(assert (= var3325!1 ""))
(assert true)
(define-const var281 String (append/672562846 var3325!1 "{not}")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var3325!2 String)
(assert (= var3325!2 (str.++ var3325!1 "{not}")))
(define-const var961 String (var1253_getText/-200495485 var3428!1)) ; Statement: $r12 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2462 String (append/672562846 var281 var961)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var281!1 String)
(assert (= var281!1 (str.++ var281 var961)))
(assert true)
(define-const var3235 String (toString/-2075883882 var2462)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1253_setText/1726115213 var3428!1 var3235)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r15) 

(declare-const var3428!2 var1253)
(declare-const var3235!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1253_getType/1604486320=([antlr.collections.AST], int), var1253_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1253_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1253_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var2561=org.hibernate.hql.internal.ast.HqlParser, var2228=r56, var1253=antlr.collections.AST, var3428=r0, var1697=$i0, var3673=119, var3325=$r11, var281=$r13, var961=$r12, var2462=$r14, var3235=$r15}
; {org.hibernate.hql.internal.ast.HqlParser=var2561, r56=var2228, antlr.collections.AST=var1253, r0=var3428, $i0=var1697, 119=var3673, $r11=var3325, $r13=var281, $r12=var961, $r14=var2462, $r15=var3235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r12 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r15);	return r0
;block_num 2