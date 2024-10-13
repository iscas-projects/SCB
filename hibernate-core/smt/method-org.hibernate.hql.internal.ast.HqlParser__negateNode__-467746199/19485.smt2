(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var905 0)
(declare-sort var1546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1546_getType/1604486320 (var1546) Int)
(declare-fun var1546_setType/260848542 (var1546 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1546_getText/-200495485 (var1546) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1546_setText/1726115213 (var1546 String) void)
(declare-const null-var905 var905)
(declare-const null-var1546 var1546)
(declare-const var642 var905) ; Statement: r56 := @this: org.hibernate.hql.internal.ast.HqlParser 
(assert (not (= var642 null-var905)))
(declare-const var1412 var1546) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1412 null-var1546)))
(define-const var2926 Int (var1546_getType/1604486320 var1412)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
 ; Statement: lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); } 
(assert (and (= var2926 35) (and (not (= var2926 27)) (and (not (= var2926 10)) (and (not (= var2926 6)) true))))) ; Intersect: Cond: $i0 == 35  and Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional    
;(assert (var1546_setType/260848542 var1412 89)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89) 

(declare-const var1412!1 var1546)
(declare-const var140 Int)
(define-const var2264 String String-init) ; Statement: $r63 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2264)) ; Statement: specialinvoke $r63.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2264!1 String)
(assert (= var2264!1 ""))
(assert true)
(define-const var668 String (append/672562846 var2264!1 "{not}")) ; Statement: $r65 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}") 
(declare-const var2264!2 String)
(assert (= var2264!2 (str.++ var2264!1 "{not}")))
(define-const var3253 String (var1546_getText/-200495485 var1412!1)) ; Statement: $r64 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var96 String (append/672562846 var668 var3253)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r64) 
(declare-const var668!1 String)
(assert (= var668!1 (str.++ var668 var3253)))
(assert true)
(define-const var1657 String (toString/-2075883882 var96)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1546_setText/1726115213 var1412!1 var1657)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r67) 

(declare-const var1412!2 var1546)
(declare-const var1657!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1546_getType/1604486320=([antlr.collections.AST], int), var1546_setType/260848542=([antlr.collections.AST, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1546_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1546_setText/1726115213=([antlr.collections.AST, java.lang.String], void)}
; {var905=org.hibernate.hql.internal.ast.HqlParser, var642=r56, var1546=antlr.collections.AST, var1412=r0, var2926=$i0, var140=89, var2264=$r63, var668=$r65, var3253=$r64, var96=$r66, var1657=$r67}
; {org.hibernate.hql.internal.ast.HqlParser=var905, r56=var642, antlr.collections.AST=var1546, r0=var1412, $i0=var2926, 89=var140, $r63=var2264, $r65=var668, $r64=var3253, $r66=var96, $r67=var1657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r56 := @this: org.hibernate.hql.internal.ast.HqlParser;	r0 := @parameter0: antlr.collections.AST;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	lookupswitch($i0) {     case 6: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(41);     case 10: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(87);     case 27: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(88);     case 35: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);     case 41: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(6);     case 84: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(85);     case 85: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(84);     case 87: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(10);     case 88: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(27);     case 89: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(35);     case 108: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(115);     case 115: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(108);     case 117: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(120);     case 118: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(119);     case 119: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(118);     case 120: goto interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(117);     default: goto r84 = specialinvoke r56.<org.hibernate.hql.internal.antlr.HqlBaseParser: antlr.collections.AST negateNode(antlr.collections.AST)>(r0); };	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(89);	$r63 = new java.lang.StringBuilder;	specialinvoke $r63.<java.lang.StringBuilder: void <init>()>();	$r65 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{not}");	$r64 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r64);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<antlr.collections.AST: void setText(java.lang.String)>($r67);	return r0
;block_num 2