(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var657 0)
(declare-sort var3082 0)
(declare-sort var3710 0)
(declare-sort var2227 0)
(declare-sort var890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1096558387 (var3710) String)
(declare-fun cast-from-var3082-to-var3710 (var3082) var3710)
(declare-fun var657_indexOfSeparator/-1650853111 (String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2227-init () var2227)
(declare-fun <init>/-1547143712 (var2227 var657 String String) void)
(declare-fun var890-init () var890)
(declare-fun <init>/2144421264 (var890 var3082 var2227) void)
(declare-const null-var657 var657)
(declare-const null-var3082 var3082)
(declare-const var2146 var657) ; Statement: r5 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter 
(assert (not (= var2146 null-var657)))
(declare-const var147 var3082) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.Var 
(assert (not (= var147 null-var3082)))
(assert true)
(define-const var3988 String (getName/-1096558387 (cast-from-var3082-to-var3710 var147))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(define-const var3285 Int (var657_indexOfSeparator/-1650853111 var3988)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter: int indexOfSeparator(java.lang.String)>(r1) 
 ; Statement: if i0 <= 0 goto r6 = null 
(assert (not (<= var3285 0))) ; Negate: Cond: i0 <= 0  
(assert (and true (and (>= 0 0) (>= (str.len var3988) var3285) (>= var3285 0))))
(define-const var358 String (substring/-1240304868 var3988 0 var3285)) ; Statement: r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(define-const var3357 var2227 var2227-init) ; Statement: $r4 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo 
(assert true)
;(assert (<init>/-1547143712 var3357 var2146 var3988 var358)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: void <init>(com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter,java.lang.String,java.lang.String)>(r5, r1, r3) 

(declare-const var3357!1 var2227)
(declare-const var2146!1 var657)
(declare-const var3988!1 String)
(declare-const var358!1 String)
(define-const var97 var2227 var3357!1) ; Statement: r6 = $r4 
 ; Statement: goto [?= $r2 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo] 
(assert true) ; Non Conditional
(define-const var1008 var890 var890-init) ; Statement: $r2 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo 
(assert true)
;(assert (<init>/2144421264 var1008 var147 var97)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo: void <init>(com.google.javascript.jscomp.Var,com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo)>(r0, r6) 

(declare-const var1008!1 var890)
(declare-const var147!1 var3082)
(declare-const var97!1 var2227)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1096558387=([com.google.javascript.jscomp.AbstractVar], java.lang.String), cast-from-var3082-to-var3710=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), var657_indexOfSeparator/-1650853111=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2227-init=([], com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo), <init>/-1547143712=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter, java.lang.String, java.lang.String], void), var890-init=([], com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo), <init>/2144421264=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo, com.google.javascript.jscomp.Var, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo], void)}
; {var657=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter, var2146=r5, var3082=com.google.javascript.jscomp.Var, var147=r0, var3710=com.google.javascript.jscomp.AbstractVar, var3988=r1, var3285=i0, var358=r3, var2227=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo, var3357=$r4, var97=r6, var890=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo, var1008=$r2}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter=var657, r5=var2146, com.google.javascript.jscomp.Var=var3082, r0=var147, com.google.javascript.jscomp.AbstractVar=var3710, r1=var3988, i0=var3285, r3=var358, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo=var2227, $r4=var3357, r6=var97, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo=var890, $r2=var1008}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter;	r0 := @parameter0: com.google.javascript.jscomp.Var;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	i0 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter: int indexOfSeparator(java.lang.String)>(r1);	if i0 <= 0 goto r6 = null;	r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r4 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo;	specialinvoke $r4.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo: void <init>(com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter,java.lang.String,java.lang.String)>(r5, r1, r3);	r6 = $r4;	goto [?= $r2 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo];	$r2 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo;	specialinvoke $r2.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo: void <init>(com.google.javascript.jscomp.Var,com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo)>(r0, r6);	return $r2
;block_num 3