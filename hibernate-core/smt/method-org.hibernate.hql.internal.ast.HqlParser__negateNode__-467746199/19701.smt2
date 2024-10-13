(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var961 0)
(declare-sort var1471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1471_getType/1604486320 (var1471) Int)
(declare-fun var1471_setType/260848542 (var1471 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1471_getText/-200495485 (var1471) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1471_setText/1726115213 (var1471 String) void)
(declare-const null-var961 var961)
(declare-const null-var1471 var1471)
(declare-const var2049 var961) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var2049 null-var961)))
(declare-const var3964 var1471) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3964 null-var1471)))
(define-const var3159 Int (var1471_getType/1604486320 var3964)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var3159 115) (and (not (= var3159 108)) (and (not (= var3159 89)) (and (not (= var3159 88)) (and (not (= var3159 87)) (and (not (= var3159 85)) (and (not (= var3159 84)) (and (not (= var3159 41)) (and (not (= var3159 35)) (and (not (= var3159 27)) (and (not (= var3159 10)) (and (not (= var3159 6)) true))))))))))))) ; Intersect: Cond: $i0 == 115  and Intersect: Negate: Cond: $i0 == 108   and Intersect: Negate: Cond: $i0 == 89   and Intersect: Negate: Cond: $i0 == 88   and Intersect: Negate: Cond: $i0 == 87   and Intersect: Negate: Cond: $i0 == 85   and Intersect: Negate: Cond: $i0 == 84   and Intersect: Negate: Cond: $i0 == 41   and Intersect: Negate: Cond: $i0 == 35   and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional            
;(assert (var1471_setType/260848542 var3964 108)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108) 

(declare-const var3964!1 var1471)
(declare-const var363 Int)
(define-const var631 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var631)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var631!1 String)
(assert (= var631!1 ""))
(assert true)
(define-const var783 String (append/672562846 var631!1 "{not}")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var631!2 String)
(assert (= var631!2 (str.++ var631!1 "{not}")))
(define-const var1748 String (var1471_getText/-200495485 var3964!1)) ; Statement: $r22 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var1005 String (append/672562846 var783 var1748)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var783!1 String)
(assert (= var783!1 (str.++ var783 var1748)))
(assert true)
(define-const var533 String (toString/-2075883882 var1005)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1471_setText/1726115213 var3964!1 var533)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r25) 

(declare-const var3964!2 var1471)
(declare-const var533!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1471_getType/1604486320=([antlr.collections.AST], int), var1471_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1471_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1471_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var961=org.hibernate.hql.internal.ast.HqlParser, var2049=r56, var1471=antlr.collections.AST, var3964=r0, var3159=$i0, var363=108, var631=$r21, var783=$r23, var1748=$r22, var1005=$r24, var533=$r25}
; {org.hibernate.hql.internal.ast.HqlParser=var961, r56=var2049, antlr.collections.AST=var1471, r0=var3964, $i0=var3159, 108=var363, $r21=var631, $r23=var783, $r22=var1748, $r24=var1005, $r25=var533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r22 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r25);	return r0
;block_num 2