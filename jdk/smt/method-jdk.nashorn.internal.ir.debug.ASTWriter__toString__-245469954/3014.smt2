(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3316 0)
(declare-sort var2499 0)
(declare-sort var1291 0)
(declare-sort var11 0)
(declare-sort var2017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun root/275438046 (var3316) var2499)
(declare-fun printAST/-161306083 (var3316 String var1291 var11 String var2499 Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3316 var3316)
(declare-const null-NullType var2017)
(declare-const null-var1291 var1291)
(declare-const null-var11 var11)
(declare-const var3473 var3316) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.ASTWriter 
(assert (not (= var3473 null-var3316)))
(define-const var3745 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3745)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3745!1 String)
(assert (= var3745!1 ""))
(define-const var3451 var2499 (root/275438046 var3473)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.debug.ASTWriter: jdk.nashorn.internal.ir.Node root> 
(assert true)
;(assert (printAST/-161306083 var3473 var3745!1 null-var1291 null-var11 "root" var3451 0)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.ASTWriter: void printAST(java.lang.StringBuilder,java.util.List,java.lang.reflect.Field,java.lang.String,jdk.nashorn.internal.ir.Node,int)>($r0, null, null, "root", $r2, 0) 

(declare-const var3473!1 var3316)
(declare-const var3745!2 String)
(declare-const var289 var2017)
(declare-const var289!1 var2017)
(declare-const var3465 String)
(declare-const var3451!1 var2499)
(declare-const var2634 Int)
(assert true)
(define-const var1948 String (toString/-2075883882 var3745!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), root/275438046=([jdk.nashorn.internal.ir.debug.ASTWriter], jdk.nashorn.internal.ir.Node), printAST/-161306083=([jdk.nashorn.internal.ir.debug.ASTWriter, java.lang.StringBuilder, java.util.List, java.lang.reflect.Field, java.lang.String, jdk.nashorn.internal.ir.Node, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3316=jdk.nashorn.internal.ir.debug.ASTWriter, var3473=r1, var3745=$r0, var2499=jdk.nashorn.internal.ir.Node, var3451=$r2, var1291=java.util.List, var11=java.lang.reflect.Field, var289=null, var2017=null_type, var3465="root", var2634=0, var1948=$r3}
; {jdk.nashorn.internal.ir.debug.ASTWriter=var3316, r1=var3473, $r0=var3745, jdk.nashorn.internal.ir.Node=var2499, $r2=var3451, java.util.List=var1291, java.lang.reflect.Field=var11, null=var289, null_type=var2017, "root"=var3465, 0=var2634, $r3=var1948}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.ASTWriter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.debug.ASTWriter: jdk.nashorn.internal.ir.Node root>;	specialinvoke r1.<jdk.nashorn.internal.ir.debug.ASTWriter: void printAST(java.lang.StringBuilder,java.util.List,java.lang.reflect.Field,java.lang.String,jdk.nashorn.internal.ir.Node,int)>($r0, null, null, "root", $r2, 0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1