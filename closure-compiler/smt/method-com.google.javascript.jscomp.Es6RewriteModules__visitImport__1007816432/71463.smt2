(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2563 0)
(declare-sort var1446 0)
(declare-sort var3632 0)
(declare-sort var1165 0)
(declare-sort var2193 0)
(declare-sort var1399 0)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isModuleBody/-961172458 (var3632) Bool)
(declare-fun var1165_checkArgument/-972017905 (Bool var2193) void)
(declare-fun cast-from-var3632-to-var2193 (var3632) var2193)
(declare-fun getLastChild/1278987161 (var3632) var3632)
(declare-fun getString/-897720134 (var3632) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getInput/1894382808 (var1446) var1399)
(declare-fun getPath/-959471607 (var1399) var1436)
(declare-fun getSourceFileName/-822247991 (var3632) String)
(declare-fun getLineno/-1938956838 (var3632) Int)
(declare-fun getCharno/1419954104 (var3632) Int)
(declare-fun resolveJsModule/-940407274 (var1436 String String Int Int) var1436)
(declare-fun toString/1999241737 (var1436) String)
(declare-fun maybeAddImportedFileReferenceToSymbolTable/1390418582 (var2563 var3632 String) void)
(declare-fun getFirstChild/2090828207 (var3632) var3632)
(declare-fun detach/948445078 (var3632) var3632)
(declare-fun reportCodeChange/2061219809 (var1446) void)
(declare-const null-var2563 var2563)
(declare-const null-var1446 var1446)
(declare-const null-var3632 var3632)
(declare-const null-var1436 var1436)
(declare-const var800 var2563) ; Statement: r8 := @this: com.google.javascript.jscomp.Es6RewriteModules 
(assert (not (= var800 null-var2563)))
(declare-const var828 var1446) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var828 null-var1446)))
(declare-const var1409 var3632) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1409 null-var3632)))
(declare-const var887 var3632) ; Statement: r0 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var887 null-var3632)))
(assert true)
(define-const var1142 Bool (isModuleBody/-961172458 var887)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isModuleBody()>() 
;(assert (var1165_checkArgument/-972017905 var1142 (cast-from-var3632-to-var2193 var887))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0) 

(declare-const var1142!1 Bool)
(declare-const var887!1 var3632)
(assert true)
(define-const var319 var3632 (getLastChild/1278987161 var1409)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var2124 String (getString/-897720134 var319)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3841 Bool (startsWith/-1785782452 var2124 "goog:")) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("goog:") 
 ; Statement: if z1 == 0 goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(assert (= (ite var3841 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1036 var1399 (getInput/1894382808 var828)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(assert true)
(define-const var3624 var1436 (getPath/-959471607 var1036)) ; Statement: $r7 = virtualinvoke $r5.<com.google.javascript.jscomp.CompilerInput: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath getPath()>() 
(assert true)
(define-const var1478 String (getSourceFileName/-822247991 var1409)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getSourceFileName()>() 
(assert true)
(define-const var1628 Int (getLineno/-1938956838 var1409)) ; Statement: $i1 = virtualinvoke r1.<com.google.javascript.rhino.Node: int getLineno()>() 
(assert true)
(define-const var16 Int (getCharno/1419954104 var1409)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.rhino.Node: int getCharno()>() 
(assert true)
(define-const var2513 var1436 (resolveJsModule/-940407274 var3624 var2124 var1478 var1628 var16)) ; Statement: r24 = virtualinvoke $r7.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath resolveJsModule(java.lang.String,java.lang.String,int,int)>(r3, $r6, $i1, $i0) 
 ; Statement: if r24 != null goto $r10 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert (not (= var2513 null-var1436))) ; Cond: r24 != null 
(assert true)
(define-const var3150 var3632 (getLastChild/1278987161 var1409)) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var2211 String (toString/1999241737 var2513)) ; Statement: $r9 = virtualinvoke r24.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: java.lang.String toString()>() 
(assert true)
;(assert (maybeAddImportedFileReferenceToSymbolTable/1390418582 var800 var3150 var2211)) ; Statement: virtualinvoke r8.<com.google.javascript.jscomp.Es6RewriteModules: void maybeAddImportedFileReferenceToSymbolTable(com.google.javascript.rhino.Node,java.lang.String)>($r10, $r9) 

(declare-const var800!1 var2563)
(declare-const var3150!1 var3632)
(declare-const var2211!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var103 var3632 (getFirstChild/2090828207 var1409)) ; Statement: r25 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true) ; Non Conditional
 ; Statement: if r25 == null goto virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node detach()>() 
(assert (= var103 null-var3632)) ; Cond: r25 == null 
(assert true)
;(assert (detach/948445078 var1409)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node detach()>() 

(declare-const var1409!1 var3632)
(assert true)
;(assert (reportCodeChange/2061219809 var828)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: void reportCodeChange()>() 

(declare-const var828!1 var1446)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isModuleBody/-961172458=([com.google.javascript.rhino.Node], boolean), var1165_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-var3632-to-var2193=([com.google.javascript.rhino.Node], java.lang.Object), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getInput/1894382808=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.CompilerInput), getPath/-959471607=([com.google.javascript.jscomp.CompilerInput], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), getSourceFileName/-822247991=([com.google.javascript.rhino.Node], java.lang.String), getLineno/-1938956838=([com.google.javascript.rhino.Node], int), getCharno/1419954104=([com.google.javascript.rhino.Node], int), resolveJsModule/-940407274=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, java.lang.String, java.lang.String, int, int], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), toString/1999241737=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath], java.lang.String), maybeAddImportedFileReferenceToSymbolTable/1390418582=([com.google.javascript.jscomp.Es6RewriteModules, com.google.javascript.rhino.Node, java.lang.String], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), detach/948445078=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), reportCodeChange/2061219809=([com.google.javascript.jscomp.NodeTraversal], void)}
; {var2563=com.google.javascript.jscomp.Es6RewriteModules, var800=r8, var1446=com.google.javascript.jscomp.NodeTraversal, var828=r4, var3632=com.google.javascript.rhino.Node, var1409=r1, var887=r0, var1142=$z0, var1165=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2193=java.lang.Object, var319=$r2, var2124=r3, var3841=z1, var1399=com.google.javascript.jscomp.CompilerInput, var1036=$r5, var1436=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var3624=$r7, var1478=$r6, var1628=$i1, var16=$i0, var2513=r24, var3150=$r10, var2211=$r9, var103=r25}
; {com.google.javascript.jscomp.Es6RewriteModules=var2563, r8=var800, com.google.javascript.jscomp.NodeTraversal=var1446, r4=var828, com.google.javascript.rhino.Node=var3632, r1=var1409, r0=var887, $z0=var1142, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1165, java.lang.Object=var2193, $r2=var319, r3=var2124, z1=var3841, com.google.javascript.jscomp.CompilerInput=var1399, $r5=var1036, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var1436, $r7=var3624, $r6=var1478, $i1=var1628, $i0=var16, r24=var2513, $r10=var3150, $r9=var2211, r25=var103}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.Es6RewriteModules;	r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r1 := @parameter1: com.google.javascript.rhino.Node;	r0 := @parameter2: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isModuleBody()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0);	$r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	r3 = virtualinvoke $r2.<com.google.javascript.rhino.Node: java.lang.String getString()>();	z1 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("goog:");	if z1 == 0 goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r5 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r7 = virtualinvoke $r5.<com.google.javascript.jscomp.CompilerInput: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath getPath()>();	$r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getSourceFileName()>();	$i1 = virtualinvoke r1.<com.google.javascript.rhino.Node: int getLineno()>();	$i0 = virtualinvoke r1.<com.google.javascript.rhino.Node: int getCharno()>();	r24 = virtualinvoke $r7.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath resolveJsModule(java.lang.String,java.lang.String,int,int)>(r3, $r6, $i1, $i0);	if r24 != null goto $r10 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r10 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r9 = virtualinvoke r24.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: java.lang.String toString()>();	virtualinvoke r8.<com.google.javascript.jscomp.Es6RewriteModules: void maybeAddImportedFileReferenceToSymbolTable(com.google.javascript.rhino.Node,java.lang.String)>($r10, $r9);	r25 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	if r25 == null goto virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node detach()>();	virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node detach()>();	virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: void reportCodeChange()>();	return
;block_num 6