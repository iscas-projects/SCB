(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort var941 0)
(declare-sort var3670 0)
(declare-sort var532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initialize/-1788792671 (var3670 var941) void)
(declare-fun cast-from-var3404-to-var3670 (var3404) var3670)
(declare-fun getFilename/2145617113 (var941) String)
(declare-fun filename/540240454 (var3404) String)
(declare-fun getLine/-150357818 (var941) Int)
(declare-fun line/540240454 (var3404) Int)
(declare-fun getColumn/1237991140 (var941) Int)
(declare-fun column/540240454 (var3404) Int)
(declare-fun getText/-220077709 (var941) String)
(declare-fun var532_isEmpty/1672864985 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun textLength/540240454 (var3404) Int)
(declare-const null-var3404 var3404)
(declare-const null-var941 var941)
(declare-const var3777 var3404) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.Node 
(assert (not (= var3777 null-var3404)))
(declare-const var1040 var941) ; Statement: r1 := @parameter0: antlr.Token 
(assert (not (= var1040 null-var941)))
(assert true)
;(assert (initialize/-1788792671 (cast-from-var3404-to-var3670 var3777) var1040)) ; Statement: specialinvoke r0.<antlr.CommonAST: void initialize(antlr.Token)>(r1) 

(declare-const var3777!1 var3404)
(declare-const var1040!1 var941)
(assert true)
(define-const var3952 String (getFilename/2145617113 var1040!1)) ; Statement: $r2 = virtualinvoke r1.<antlr.Token: java.lang.String getFilename()>() 
(declare-const var3777!2 var3404)
(assert (not (= var3777!2 null-var3404)))
(assert (= (filename/540240454 var3777!2) var3952)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.Node: java.lang.String filename> = $r2 
(assert true)
(define-const var2767 Int (getLine/-150357818 var1040!1)) ; Statement: $i0 = virtualinvoke r1.<antlr.Token: int getLine()>() 
(declare-const var3777!3 var3404)
(assert (not (= var3777!3 null-var3404)))
(assert (= (line/540240454 var3777!3) var2767)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.Node: int line> = $i0 
(assert true)
(define-const var1522 Int (getColumn/1237991140 var1040!1)) ; Statement: $i1 = virtualinvoke r1.<antlr.Token: int getColumn()>() 
(declare-const var3777!4 var3404)
(assert (not (= var3777!4 null-var3404)))
(assert (= (column/540240454 var3777!4) var1522)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.Node: int column> = $i1 
(assert true)
(define-const var2439 String (getText/-220077709 var1040!1)) ; Statement: r3 = virtualinvoke r1.<antlr.Token: java.lang.String getText()>() 
(define-const var3958 Bool (var532_isEmpty/1672864985 var2439)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert (= (ite var3958 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3323 Int (length/-134980193 var2439)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(declare-const var3777!5 var3404)
(assert (not (= var3777!5 null-var3404)))
(assert (= (textLength/540240454 var3777!5) var3323)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.Node: int textLength> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {initialize/-1788792671=([antlr.CommonAST, antlr.Token], void), cast-from-var3404-to-var3670=([org.hibernate.hql.internal.ast.tree.Node], antlr.CommonAST), getFilename/2145617113=([antlr.Token], java.lang.String), filename/540240454=([org.hibernate.hql.internal.ast.tree.Node], java.lang.String), getLine/-150357818=([antlr.Token], int), line/540240454=([org.hibernate.hql.internal.ast.tree.Node], int), getColumn/1237991140=([antlr.Token], int), column/540240454=([org.hibernate.hql.internal.ast.tree.Node], int), getText/-220077709=([antlr.Token], java.lang.String), var532_isEmpty/1672864985=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), textLength/540240454=([org.hibernate.hql.internal.ast.tree.Node], int)}
; {var3404=org.hibernate.hql.internal.ast.tree.Node, var3777=r0, var941=antlr.Token, var1040=r1, var3670=antlr.CommonAST, var3952=$r2, var2767=$i0, var1522=$i1, var2439=r3, var532=org.hibernate.internal.util.StringHelper, var3958=$z0, var3323=$i2}
; {org.hibernate.hql.internal.ast.tree.Node=var3404, r0=var3777, antlr.Token=var941, r1=var1040, antlr.CommonAST=var3670, $r2=var3952, $i0=var2767, $i1=var1522, r3=var2439, org.hibernate.internal.util.StringHelper=var532, $z0=var3958, $i2=var3323}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.Node;	r1 := @parameter0: antlr.Token;	specialinvoke r0.<antlr.CommonAST: void initialize(antlr.Token)>(r1);	$r2 = virtualinvoke r1.<antlr.Token: java.lang.String getFilename()>();	r0.<org.hibernate.hql.internal.ast.tree.Node: java.lang.String filename> = $r2;	$i0 = virtualinvoke r1.<antlr.Token: int getLine()>();	r0.<org.hibernate.hql.internal.ast.tree.Node: int line> = $i0;	$i1 = virtualinvoke r1.<antlr.Token: int getColumn()>();	r0.<org.hibernate.hql.internal.ast.tree.Node: int column> = $i1;	r3 = virtualinvoke r1.<antlr.Token: java.lang.String getText()>();	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3);	if $z0 == 0 goto $i2 = virtualinvoke r3.<java.lang.String: int length()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	r0.<org.hibernate.hql.internal.ast.tree.Node: int textLength> = $i2;	return
;block_num 3