(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var890 0)
(declare-sort var1134 0)
(declare-sort var947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun head/1092084337 (var890) var1134)
(declare-fun cast-from-var1134-to-var947 (var1134) var947)
(declare-fun get/-795098227 (var947) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tail/-165709463 (var890) var890)
(declare-const null-String String)
(declare-const null-var890 var890)
(declare-const null-Int Int)
(declare-const var2634 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2634 null-String)))
(declare-const var2190 var890) ; Statement: r5 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (not (= var2190 null-var890)))
(declare-const var1499 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var1499 null-Int)))
(assert true) ; Non Conditional
(assert true)
(define-const var583 var1134 (head/1092084337 var2190)) ; Statement: $r1 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTree head()>() 
(define-const var3177 Bool false) ; Statement: $z0 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol 
 ; Statement: if $z0 == 0 goto $z1 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (not (= (ite var3177 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2822 var947 (cast-from-var1134-to-var947 var583)) ; Statement: $r3 = (org.apache.ibatis.javassist.compiler.ast.Symbol) $r1 
(assert true)
(define-const var1483 String (get/-795098227 var2822)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>() 
(assert true)
;(assert (append/672562846 var2634 var1483)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2634!1 String)
(assert (= var2634!1 (str.++ var2634 var1483)))
 ; Statement: goto [?= $r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3496 var890 (tail/-165709463 var2190)) ; Statement: $r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>() 
(define-const var2190!1 var890 var3496) ; Statement: r5 = $r6 
 ; Statement: if $r6 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(assert (not (not (= var3496 null-var890)))) ; Negate: Cond: $r6 != null  
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {head/1092084337=([org.apache.ibatis.javassist.compiler.ast.ASTList], org.apache.ibatis.javassist.compiler.ast.ASTree), cast-from-var1134-to-var947=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.Symbol), get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tail/-165709463=([org.apache.ibatis.javassist.compiler.ast.ASTList], org.apache.ibatis.javassist.compiler.ast.ASTList)}
; {var2634=r0, var890=org.apache.ibatis.javassist.compiler.ast.ASTList, var2190=r5, var1499=c0, var1134=org.apache.ibatis.javassist.compiler.ast.ASTree, var583=$r1, var3177=$z0, var947=org.apache.ibatis.javassist.compiler.ast.Symbol, var2822=$r3, var1483=$r4, var3496=$r6}
; {r0=var2634, org.apache.ibatis.javassist.compiler.ast.ASTList=var890, r5=var2190, c0=var1499, org.apache.ibatis.javassist.compiler.ast.ASTree=var1134, $r1=var583, $z0=var3177, org.apache.ibatis.javassist.compiler.ast.Symbol=var947, $r3=var2822, $r4=var1483, $r6=var3496}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r5 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTList;	c0 := @parameter2: char;	$r1 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTree head()>();	$z0 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol;	if $z0 == 0 goto $z1 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.ASTList;	$r3 = (org.apache.ibatis.javassist.compiler.ast.Symbol) $r1;	$r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	goto [?= $r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>()];	$r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>();	r5 = $r6;	if $r6 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	goto [?= return];	return
;block_num 6