(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var656 0)
(declare-sort var3472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3472_getType/1604486320 (var3472) Int)
(declare-fun var3472_setType/260848542 (var3472 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3472_getText/-200495485 (var3472) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3472_setText/1726115213 (var3472 String) void)
(declare-const null-var656 var656)
(declare-const null-var3472 var3472)
(declare-const var3904 var656) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var3904 null-var656)))
(declare-const var2955 var3472) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var2955 null-var3472)))
(define-const var1666 Int (var3472_getType/1604486320 var2955)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var1666 120) (and (not (= var1666 119)) (and (not (= var1666 118)) (and (not (= var1666 117)) (and (not (= var1666 115)) (and (not (= var1666 108)) (and (not (= var1666 89)) (and (not (= var1666 88)) (and (not (= var1666 87)) (and (not (= var1666 85)) (and (not (= var1666 84)) (and (not (= var1666 41)) (and (not (= var1666 35)) (and (not (= var1666 27)) (and (not (= var1666 10)) (and (not (= var1666 6)) true))))))))))))))))) ; Intersect: Cond: $i0 == 120  and Intersect: Negate: Cond: $i0 == 119   and Intersect: Negate: Cond: $i0 == 118   and Intersect: Negate: Cond: $i0 == 117   and Intersect: Negate: Cond: $i0 == 115   and Intersect: Negate: Cond: $i0 == 108   and Intersect: Negate: Cond: $i0 == 89   and Intersect: Negate: Cond: $i0 == 88   and Intersect: Negate: Cond: $i0 == 87   and Intersect: Negate: Cond: $i0 == 85   and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional                
;(assert (var3472_setType/260848542 var2955 117)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117) 

(declare-const var2955!1 var3472)
(declare-const var341 Int)
(define-const var2808 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2808)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2808!1 String)
(assert (= var2808!1 ""))
(assert true)
(define-const var1540 String (append/672562846 var2808!1 "{not}")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var2808!2 String)
(assert (= var2808!2 (str.++ var2808!1 "{not}")))
(define-const var486 String (var3472_getText/-200495485 var2955!1)) ; Statement: $r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2361 String (append/672562846 var1540 var486)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1540!1 String)
(assert (= var1540!1 (str.++ var1540 var486)))
(assert true)
(define-const var210 String (toString/-2075883882 var2361)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3472_setText/1726115213 var2955!1 var210)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r5) 

(declare-const var2955!2 var3472)
(declare-const var210!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3472_getType/1604486320=([antlr.collections.AST], int), var3472_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3472_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3472_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var656=org.hibernate.hql.internal.ast.HqlParser, var3904=r56, var3472=antlr.collections.AST, var2955=r0, var1666=$i0, var341=117, var2808=$r1, var1540=$r3, var486=$r2, var2361=$r4, var210=$r5}
; {org.hibernate.hql.internal.ast.HqlParser=var656, r56=var3904, antlr.collections.AST=var3472, r0=var2955, $i0=var1666, 117=var341, $r1=var2808, $r3=var1540, $r2=var486, $r4=var2361, $r5=var210}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r5);	return r0
;block_num 2