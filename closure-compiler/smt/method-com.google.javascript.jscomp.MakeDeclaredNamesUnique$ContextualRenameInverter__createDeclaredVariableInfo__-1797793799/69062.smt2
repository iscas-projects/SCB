(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2917 0)
(declare-sort var291 0)
(declare-sort var2850 0)
(declare-sort var1059 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1096558387 (var2850) String)
(declare-fun cast-from-var291-to-var2850 (var291) var2850)
(declare-fun var2917_indexOfSeparator/-1650853111 (String) Int)
(declare-fun var2617-init () var2617)
(declare-fun <init>/2144421264 (var2617 var291 var1059) void)
(declare-const null-var2917 var2917)
(declare-const null-var291 var291)
(declare-const null-var1059 var1059)
(declare-const var3434 var2917) ; Statement: r5 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter 
(assert (not (= var3434 null-var2917)))
(declare-const var2331 var291) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.Var 
(assert (not (= var2331 null-var291)))
(assert true)
(define-const var3769 String (getName/-1096558387 (cast-from-var291-to-var2850 var2331))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(define-const var1171 Int (var2917_indexOfSeparator/-1650853111 var3769)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter: int indexOfSeparator(java.lang.String)>(r1) 
 ; Statement: if i0 <= 0 goto r6 = null 
(assert (<= var1171 0)) ; Cond: i0 <= 0 
(define-const var3575 var1059 null-var1059) ; Statement: r6 = null 
(assert true) ; Non Conditional
(define-const var421 var2617 var2617-init) ; Statement: $r2 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo 
(assert true)
;(assert (<init>/2144421264 var421 var2331 var3575)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo: void <init>(com.google.javascript.jscomp.Var,com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo)>(r0, r6) 

(declare-const var421!1 var2617)
(declare-const var2331!1 var291)
(declare-const var3575!1 var1059)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1096558387=([com.google.javascript.jscomp.AbstractVar], java.lang.String), cast-from-var291-to-var2850=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), var2917_indexOfSeparator/-1650853111=([java.lang.String], int), var2617-init=([], com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo), <init>/2144421264=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo, com.google.javascript.jscomp.Var, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo], void)}
; {var2917=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter, var3434=r5, var291=com.google.javascript.jscomp.Var, var2331=r0, var2850=com.google.javascript.jscomp.AbstractVar, var3769=r1, var1171=i0, var1059=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo, var3575=r6, var2617=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo, var421=$r2}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter=var2917, r5=var3434, com.google.javascript.jscomp.Var=var291, r0=var2331, com.google.javascript.jscomp.AbstractVar=var2850, r1=var3769, i0=var1171, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo=var1059, r6=var3575, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo=var2617, $r2=var421}
;seq 
;cnt {}
;stmts r5 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter;	r0 := @parameter0: com.google.javascript.jscomp.Var;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	i0 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter: int indexOfSeparator(java.lang.String)>(r1);	if i0 <= 0 goto r6 = null;	r6 = null;	$r2 = new com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo;	specialinvoke $r2.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$DeclaredVariableInfo: void <init>(com.google.javascript.jscomp.Var,com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter$RenamingInfo)>(r0, r6);	return $r2
;block_num 3