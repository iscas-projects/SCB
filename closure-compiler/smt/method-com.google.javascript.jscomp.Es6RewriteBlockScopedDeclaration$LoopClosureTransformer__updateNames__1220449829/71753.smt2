(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3494 0)
(declare-sort var1005 0)
(declare-sort var102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1005) Bool)
(declare-fun getString/-897720134 (var1005) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun setString/330292484 (var1005 String) void)
(declare-const null-var3494 var3494)
(declare-const null-var1005 var1005)
(declare-const null-String String)
(declare-const var1252 var3494) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer 
(assert (not (= var1252 null-var3494)))
(declare-const var689 var1005) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var689 null-var1005)))
(declare-const var1472 var1005) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1472 null-var1005)))
(declare-const var3867 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3867 null-String)))
(assert true)
(define-const var2275 Bool (isName/-1249361959 var689)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var2275 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var322 String (getString/-897720134 var689)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var893 Bool (isEmpty/-1285796103 var322)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (not (= (ite var893 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var2286 String (getString/-897720134 var689)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1921 Bool (contains/1009244746 var2286 (cast-from-String-to-String var3867))) ; Statement: $z2 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>(r3) 
 ; Statement: if $z2 == 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var1921 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var2309 String (getString/-897720134 var1472)) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
;(assert (setString/330292484 var689 var2309)) ; Statement: virtualinvoke r0.<com.google.javascript.rhino.Node: void setString(java.lang.String)>($r6) 

(declare-const var689!1 var1005)
(declare-const var2309!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), setString/330292484=([com.google.javascript.rhino.Node, java.lang.String], void)}
; {var3494=com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer, var1252=r1, var1005=com.google.javascript.rhino.Node, var689=r0, var1472=r2, var3867=r3, var102=null_type, var2275=$z0, var322=$r4, var893=$z1, var2286=$r5, var1921=$z2, var2309=$r6}
; {com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer=var3494, r1=var1252, com.google.javascript.rhino.Node=var1005, r0=var689, r2=var1472, r3=var3867, null_type=var102, $z0=var2275, $r4=var322, $z1=var893, $r5=var2286, $z2=var1921, $r6=var2309}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer;	r0 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: com.google.javascript.rhino.Node;	r3 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>(r3);	if $z2 == 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r6 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getString()>();	virtualinvoke r0.<com.google.javascript.rhino.Node: void setString(java.lang.String)>($r6);	return
;block_num 4