(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var398 0)
(declare-sort var0 0)
(declare-sort var2485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var0_getText/-2014085613 (var0) String)
(declare-const null-var398 var398)
(declare-const null-var0 var0)
(declare-const var398-verbose Bool)
(declare-const null-String String)
(declare-const var1112 var398) ; Statement: r3 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var1112 null-var398)))
(declare-const var3262 var0) ; Statement: r0 := @parameter0: org.antlr.runtime.Token 
(assert (not (= var3262 null-var0)))
(define-const var219 Bool var398-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroup: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
(assert (= (ite var219 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2717 String (var0_getText/-2014085613 var3262)) ; Statement: $r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
 ; Statement: if $r28 == null goto return 
(assert (not (= var2717 null-String))) ; Negate: Cond: $r28 == null  
(assert true)
(define-const var788 Bool (= var2717 "<missing STRING>")) ; Statement: $z1 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("<missing STRING>") 
 ; Statement: if $z1 == 0 goto r43 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String strip(java.lang.String,int)>($r28, 1) 
(assert (not (= (ite var788 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var0_getText/-2014085613=([org.antlr.runtime.Token], java.lang.String)}
; {var398=org.stringtemplate.v4.STGroup, var1112=r3, var0=org.antlr.runtime.Token, var3262=r0, var219=$z0, var2717=$r28, var2485=null_type, var788=$z1}
; {org.stringtemplate.v4.STGroup=var398, r3=var1112, org.antlr.runtime.Token=var0, r0=var3262, $z0=var219, $r28=var2717, null_type=var2485, $z1=var788}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: org.antlr.runtime.Token;	$z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z0 == 0 goto $r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	$r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	if $r28 == null goto return;	$z1 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("<missing STRING>");	if $z1 == 0 goto r43 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String strip(java.lang.String,int)>($r28, 1);	return
;block_num 4