(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2345 0)
(declare-sort var93 0)
(declare-sort var1454 0)
(declare-sort var1115 0)
(declare-sort var3179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2345 var2345)
(declare-const null-var93 var93)
(declare-const null-var1454 var1454)
(declare-const null-String String)
(declare-const null-var3179 var3179)
(declare-const var1354 var2345) ; Statement: r1 := @this: com.google.javascript.jscomp.GlobalNamespace$BuildGlobalNamespace 
(assert (not (= var1354 null-var2345)))
(declare-const var1435 var93) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.Scope 
(assert (not (= var1435 null-var93)))
(declare-const var390 var1454) ; Statement: r6 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var390 null-var1454)))
(declare-const var293 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var293 null-String)))
(declare-const var2657 var3179) ; Statement: r2 := @parameter3: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata 
(assert (not (= var2657 null-var3179)))
(assert true)
(define-const var368 Bool (endsWith/985337093 var293 ".prototype")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".prototype") 
 ; Statement: if $z0 == 0 goto i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".prototype.") 
(assert (= (ite var368 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3675 Int (indexOf/-1209756239 var293 ".prototype.")) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".prototype.") 
(define-const var2728 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 != $i9 goto r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
(assert (not (not (= var3675 var2728)))) ; Negate: Cond: i5 != $i9  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2345=com.google.javascript.jscomp.GlobalNamespace$BuildGlobalNamespace, var1354=r1, var93=com.google.javascript.jscomp.Scope, var1435=r3, var1454=com.google.javascript.rhino.Node, var390=r6, var293=r0, var1115=null_type, var3179=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var2657=r2, var368=$z0, var3675=i5, var2728=$i9}
; {com.google.javascript.jscomp.GlobalNamespace$BuildGlobalNamespace=var2345, r1=var1354, com.google.javascript.jscomp.Scope=var93, r3=var1435, com.google.javascript.rhino.Node=var1454, r6=var390, r0=var293, null_type=var1115, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var3179, r2=var2657, $z0=var368, i5=var3675, $i9=var2728}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.GlobalNamespace$BuildGlobalNamespace;	r3 := @parameter0: com.google.javascript.jscomp.Scope;	r6 := @parameter1: com.google.javascript.rhino.Node;	r0 := @parameter2: java.lang.String;	r2 := @parameter3: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".prototype");	if $z0 == 0 goto i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".prototype.");	i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".prototype.");	$i9 = (int) -1;	if i5 != $i9 goto r7 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	return 0
;block_num 3