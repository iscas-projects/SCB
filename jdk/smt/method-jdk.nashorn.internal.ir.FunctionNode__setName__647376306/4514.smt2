(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2565 0)
(declare-sort var2948 0)
(declare-sort var3350 0)
(declare-sort var2621 0)
(declare-sort var787 0)
(declare-sort var2483 0)
(declare-sort var2957 0)
(declare-sort var1309 0)
(declare-sort var809 0)
(declare-sort var1716 0)
(declare-sort var49 0)
(declare-sort var2422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/2138424918 (var2565) String)
(declare-fun var2565-init () var2565)
(declare-fun lastToken/2138424918 (var2565) Int)
(declare-fun endParserState/2138424918 (var2565) var2621)
(declare-fun flags/2138424918 (var2565) Int)
(declare-fun returnType/2138424918 (var2565) var787)
(declare-fun compileUnit/2138424918 (var2565) var2483)
(declare-fun body/2138424918 (var2565) var2957)
(declare-fun parameters/2138424918 (var2565) var1309)
(declare-fun thisProperties/2138424918 (var2565) Int)
(declare-fun rootClass/2138424918 (var2565) ClassObject)
(declare-fun source/2138424918 (var2565) var809)
(declare-fun namespace/2138424918 (var2565) var1716)
(declare-fun <init>/709522611 (var2565 var2565 Int var2621 Int String var787 var2483 var2957 var1309 Int ClassObject var809 var1716) void)
(declare-fun var2422_replaceInLexicalContext/-1076354601 (var2948 var49 var49) var49)
(declare-fun cast-from-var2565-to-var49 (var2565) var49)
(declare-fun cast-from-var49-to-var2565 (var49) var2565)
(declare-const null-var2565 var2565)
(declare-const null-var2948 var2948)
(declare-const null-String String)
(declare-const var213 var2565) ; Statement: r0 := @this: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var213 null-var2565)))
(declare-const var1911 var2948) ; Statement: r3 := @parameter0: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var1911 null-var2948)))
(declare-const var360 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var360 null-String)))
(define-const var434 String (name/2138424918 var213)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String name> 
(assert true)
(define-const var305 Bool (= var434 var360)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = new jdk.nashorn.internal.ir.FunctionNode 
(assert (= (ite var305 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1238 var2565 var2565-init) ; Statement: $r4 = new jdk.nashorn.internal.ir.FunctionNode 
(define-const var1006 Int (lastToken/2138424918 var213)) ; Statement: $l2 = r0.<jdk.nashorn.internal.ir.FunctionNode: long lastToken> 
(define-const var1978 var2621 (endParserState/2138424918 var213)) ; Statement: $r12 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.Object endParserState> 
(define-const var474 Int (flags/2138424918 var213)) ; Statement: $i1 = r0.<jdk.nashorn.internal.ir.FunctionNode: int flags> 
(define-const var3864 var787 (returnType/2138424918 var213)) ; Statement: $r11 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.types.Type returnType> 
(define-const var955 var2483 (compileUnit/2138424918 var213)) ; Statement: $r10 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit compileUnit> 
(define-const var3564 var2957 (body/2138424918 var213)) ; Statement: $r9 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.ir.Block body> 
(define-const var3782 var1309 (parameters/2138424918 var213)) ; Statement: $r8 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.util.List parameters> 
(define-const var93 Int (thisProperties/2138424918 var213)) ; Statement: $i0 = r0.<jdk.nashorn.internal.ir.FunctionNode: int thisProperties> 
(define-const var580 ClassObject (rootClass/2138424918 var213)) ; Statement: $r7 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.Class rootClass> 
(define-const var553 var809 (source/2138424918 var213)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.runtime.Source source> 
(define-const var1318 var1716 (namespace/2138424918 var213)) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.Namespace namespace> 
(assert true)
;(assert (<init>/709522611 var1238 var213 var1006 var1978 var474 var360 var3864 var955 var3564 var3782 var93 var580 var553 var1318)) ; Statement: specialinvoke $r4.<jdk.nashorn.internal.ir.FunctionNode: void <init>(jdk.nashorn.internal.ir.FunctionNode,long,java.lang.Object,int,java.lang.String,jdk.nashorn.internal.codegen.types.Type,jdk.nashorn.internal.codegen.CompileUnit,jdk.nashorn.internal.ir.Block,java.util.List,int,java.lang.Class,jdk.nashorn.internal.runtime.Source,jdk.nashorn.internal.codegen.Namespace)>(r0, $l2, $r12, $i1, r1, $r11, $r10, $r9, $r8, $i0, $r7, $r6, $r5) 

(declare-const var1238!1 var2565)
(declare-const var213!1 var2565)
(declare-const var1006!1 Int)
(declare-const var1978!1 var2621)
(declare-const var474!1 Int)
(declare-const var360!1 String)
(declare-const var3864!1 var787)
(declare-const var955!1 var2483)
(declare-const var3564!1 var2957)
(declare-const var3782!1 var1309)
(declare-const var93!1 Int)
(declare-const var580!1 ClassObject)
(declare-const var553!1 var809)
(declare-const var1318!1 var1716)
(define-const var2546 var49 (var2422_replaceInLexicalContext/-1076354601 var1911 (cast-from-var2565-to-var49 var213!1) (cast-from-var2565-to-var49 var1238!1))) ; Statement: $r13 = staticinvoke <jdk.nashorn.internal.ir.Node: jdk.nashorn.internal.ir.LexicalContextNode replaceInLexicalContext(jdk.nashorn.internal.ir.LexicalContext,jdk.nashorn.internal.ir.LexicalContextNode,jdk.nashorn.internal.ir.LexicalContextNode)>(r3, r0, $r4) 
(define-const var618 var2565 (cast-from-var49-to-var2565 var2546)) ; Statement: $r14 = (jdk.nashorn.internal.ir.FunctionNode) $r13 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {name/2138424918=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), var2565-init=([], jdk.nashorn.internal.ir.FunctionNode), lastToken/2138424918=([jdk.nashorn.internal.ir.FunctionNode], long), endParserState/2138424918=([jdk.nashorn.internal.ir.FunctionNode], java.lang.Object), flags/2138424918=([jdk.nashorn.internal.ir.FunctionNode], int), returnType/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.types.Type), compileUnit/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.CompileUnit), body/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.ir.Block), parameters/2138424918=([jdk.nashorn.internal.ir.FunctionNode], java.util.List), thisProperties/2138424918=([jdk.nashorn.internal.ir.FunctionNode], int), rootClass/2138424918=([jdk.nashorn.internal.ir.FunctionNode], java.lang.Class), source/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.runtime.Source), namespace/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.Namespace), <init>/709522611=([jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.FunctionNode, long, java.lang.Object, int, java.lang.String, jdk.nashorn.internal.codegen.types.Type, jdk.nashorn.internal.codegen.CompileUnit, jdk.nashorn.internal.ir.Block, java.util.List, int, java.lang.Class, jdk.nashorn.internal.runtime.Source, jdk.nashorn.internal.codegen.Namespace], void), var2422_replaceInLexicalContext/-1076354601=([jdk.nashorn.internal.ir.LexicalContext, jdk.nashorn.internal.ir.LexicalContextNode, jdk.nashorn.internal.ir.LexicalContextNode], jdk.nashorn.internal.ir.LexicalContextNode), cast-from-var2565-to-var49=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.ir.LexicalContextNode), cast-from-var49-to-var2565=([jdk.nashorn.internal.ir.LexicalContextNode], jdk.nashorn.internal.ir.FunctionNode)}
; {var2565=jdk.nashorn.internal.ir.FunctionNode, var213=r0, var2948=jdk.nashorn.internal.ir.LexicalContext, var1911=r3, var360=r1, var3350=null_type, var434=$r2, var305=$z0, var1238=$r4, var1006=$l2, var2621=java.lang.Object, var1978=$r12, var474=$i1, var787=jdk.nashorn.internal.codegen.types.Type, var3864=$r11, var2483=jdk.nashorn.internal.codegen.CompileUnit, var955=$r10, var2957=jdk.nashorn.internal.ir.Block, var3564=$r9, var1309=java.util.List, var3782=$r8, var93=$i0, var580=$r7, var809=jdk.nashorn.internal.runtime.Source, var553=$r6, var1716=jdk.nashorn.internal.codegen.Namespace, var1318=$r5, var49=jdk.nashorn.internal.ir.LexicalContextNode, var2422=jdk.nashorn.internal.ir.Node, var2546=$r13, var618=$r14}
; {jdk.nashorn.internal.ir.FunctionNode=var2565, r0=var213, jdk.nashorn.internal.ir.LexicalContext=var2948, r3=var1911, r1=var360, null_type=var3350, $r2=var434, $z0=var305, $r4=var1238, $l2=var1006, java.lang.Object=var2621, $r12=var1978, $i1=var474, jdk.nashorn.internal.codegen.types.Type=var787, $r11=var3864, jdk.nashorn.internal.codegen.CompileUnit=var2483, $r10=var955, jdk.nashorn.internal.ir.Block=var2957, $r9=var3564, java.util.List=var1309, $r8=var3782, $i0=var93, $r7=var580, jdk.nashorn.internal.runtime.Source=var809, $r6=var553, jdk.nashorn.internal.codegen.Namespace=var1716, $r5=var1318, jdk.nashorn.internal.ir.LexicalContextNode=var49, jdk.nashorn.internal.ir.Node=var2422, $r13=var2546, $r14=var618}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.FunctionNode;	r3 := @parameter0: jdk.nashorn.internal.ir.LexicalContext;	r1 := @parameter1: java.lang.String;	$r2 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = new jdk.nashorn.internal.ir.FunctionNode;	$r4 = new jdk.nashorn.internal.ir.FunctionNode;	$l2 = r0.<jdk.nashorn.internal.ir.FunctionNode: long lastToken>;	$r12 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.Object endParserState>;	$i1 = r0.<jdk.nashorn.internal.ir.FunctionNode: int flags>;	$r11 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.types.Type returnType>;	$r10 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit compileUnit>;	$r9 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.ir.Block body>;	$r8 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.util.List parameters>;	$i0 = r0.<jdk.nashorn.internal.ir.FunctionNode: int thisProperties>;	$r7 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.Class rootClass>;	$r6 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.runtime.Source source>;	$r5 = r0.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.Namespace namespace>;	specialinvoke $r4.<jdk.nashorn.internal.ir.FunctionNode: void <init>(jdk.nashorn.internal.ir.FunctionNode,long,java.lang.Object,int,java.lang.String,jdk.nashorn.internal.codegen.types.Type,jdk.nashorn.internal.codegen.CompileUnit,jdk.nashorn.internal.ir.Block,java.util.List,int,java.lang.Class,jdk.nashorn.internal.runtime.Source,jdk.nashorn.internal.codegen.Namespace)>(r0, $l2, $r12, $i1, r1, $r11, $r10, $r9, $r8, $i0, $r7, $r6, $r5);	$r13 = staticinvoke <jdk.nashorn.internal.ir.Node: jdk.nashorn.internal.ir.LexicalContextNode replaceInLexicalContext(jdk.nashorn.internal.ir.LexicalContext,jdk.nashorn.internal.ir.LexicalContextNode,jdk.nashorn.internal.ir.LexicalContextNode)>(r3, r0, $r4);	$r14 = (jdk.nashorn.internal.ir.FunctionNode) $r13;	return $r14
;block_num 2