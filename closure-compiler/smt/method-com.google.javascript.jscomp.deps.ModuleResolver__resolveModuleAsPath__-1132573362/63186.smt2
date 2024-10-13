(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3791 0)
(declare-sort var1445 0)
(declare-sort var286 0)
(declare-sort var3143 0)
(declare-sort var1553 0)
(declare-sort var1636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun pathEscaper/-142543617 (var3791) var286)
(declare-fun escape/1638117372 (var286 String) String)
(declare-fun var3143_isRelativeIdentifier/1479096669 (String) Bool)
(declare-fun moduleRootPaths/-142543617 (var3791) var1553)
(declare-fun var3143_normalize/908925050 (String var1636) String)
(declare-fun cast-from-var1553-to-var1636 (var1553) var1636)
(declare-const null-var3791 var3791)
(declare-const null-String String)
(declare-const var804 var3791) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.ModuleResolver 
(assert (not (= var804 null-var3791)))
(declare-const var2453 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2453 null-String)))
(declare-const var268 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var268 null-String)))
(assert true)
(define-const var1565 Bool (endsWith/985337093 var268 ".js")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".js") 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper pathEscaper> 
(assert (not (= (ite var1565 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2009 var286 (pathEscaper/-142543617 var804)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper pathEscaper> 
(assert true)
(define-const var1143 String (escape/1638117372 var2009 var268)) ; Statement: $r8 = virtualinvoke $r1.<com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper: java.lang.String escape(java.lang.String)>(r9) 
(define-const var1576 String var1143) ; Statement: r10 = $r8 
(define-const var3336 Bool (var3143_isRelativeIdentifier/1479096669 var268)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.deps.ModuleLoader: boolean isRelativeIdentifier(java.lang.String)>(r9) 
 ; Statement: if $z1 == 0 goto $r2 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList moduleRootPaths> 
(assert (= (ite var3336 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1291 var1553 (moduleRootPaths/-142543617 var804)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList moduleRootPaths> 
(define-const var2083 String (var3143_normalize/908925050 var1576 (cast-from-var1553-to-var1636 var1291))) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.deps.ModuleLoader: java.lang.String normalize(java.lang.String,java.lang.Iterable)>(r10, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), pathEscaper/-142543617=([com.google.javascript.jscomp.deps.ModuleResolver], com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper), escape/1638117372=([com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper, java.lang.String], java.lang.String), var3143_isRelativeIdentifier/1479096669=([java.lang.String], boolean), moduleRootPaths/-142543617=([com.google.javascript.jscomp.deps.ModuleResolver], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var3143_normalize/908925050=([java.lang.String, java.lang.Iterable], java.lang.String), cast-from-var1553-to-var1636=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.lang.Iterable)}
; {var3791=com.google.javascript.jscomp.deps.ModuleResolver, var804=r0, var2453=r4, var1445=null_type, var268=r9, var1565=$z0, var286=com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper, var2009=$r1, var1143=$r8, var1576=r10, var3143=com.google.javascript.jscomp.deps.ModuleLoader, var3336=$z1, var1553=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1291=$r2, var1636=java.lang.Iterable, var2083=$r3}
; {com.google.javascript.jscomp.deps.ModuleResolver=var3791, r0=var804, r4=var2453, null_type=var1445, r9=var268, $z0=var1565, com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper=var286, $r1=var2009, $r8=var1143, r10=var1576, com.google.javascript.jscomp.deps.ModuleLoader=var3143, $z1=var3336, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1553, $r2=var1291, java.lang.Iterable=var1636, $r3=var2083}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.deps.ModuleResolver;	r4 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	$z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".js");	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper pathEscaper>;	$r1 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper pathEscaper>;	$r8 = virtualinvoke $r1.<com.google.javascript.jscomp.deps.ModuleLoader$PathEscaper: java.lang.String escape(java.lang.String)>(r9);	r10 = $r8;	$z1 = staticinvoke <com.google.javascript.jscomp.deps.ModuleLoader: boolean isRelativeIdentifier(java.lang.String)>(r9);	if $z1 == 0 goto $r2 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList moduleRootPaths>;	$r2 = r0.<com.google.javascript.jscomp.deps.ModuleResolver: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList moduleRootPaths>;	$r3 = staticinvoke <com.google.javascript.jscomp.deps.ModuleLoader: java.lang.String normalize(java.lang.String,java.lang.Iterable)>(r10, $r2);	return $r3
;block_num 3