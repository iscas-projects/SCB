(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var384 0)
(declare-sort var3083 0)
(declare-sort var182 0)
(declare-sort var1958 0)
(declare-sort var26 0)
(declare-sort var2628 0)
(declare-sort var1971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3083-init () var3083)
(declare-fun <init>/-325640736 (var3083) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun root/275438046 (var384) var182)
(declare-fun printAST/-161306083 (var384 String var1958 var26 String var182 Int) void)
(declare-fun cast-from-var3083-to-var1958 (var3083) var1958)
(declare-fun var1958_size/-959786421 (var1958) Int)
(declare-fun arr-var182-init () (Array Int var182))
(declare-fun var1958_toArray/-775711681 (var1958 (Array Int var1971)) (Array Int var1971))
(declare-fun cast-from-__Array__Int__var182__-to-__Array__Int__var1971__ ((Array Int var182)) (Array Int var1971))
(declare-fun cast-from-__Array__Int__var1971__-to-__Array__Int__var182__ ((Array Int var1971)) (Array Int var182))
(declare-const null-var384 var384)
(declare-const null-NullType var2628)
(declare-const null-var26 var26)
(declare-const var991 var384) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.ASTWriter 
(assert (not (= var991 null-var384)))
(define-const var3016 var3083 var3083-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3016)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var3016!1 var3083)
(define-const var205 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var205)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var205!1 String)
(assert (= var205!1 ""))
(define-const var1964 var182 (root/275438046 var991)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.debug.ASTWriter: jdk.nashorn.internal.ir.Node root> 
(assert true)
;(assert (printAST/-161306083 var991 var205!1 (cast-from-var3083-to-var1958 var3016!1) null-var26 "root" var1964 0)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.ASTWriter: void printAST(java.lang.StringBuilder,java.util.List,java.lang.reflect.Field,java.lang.String,jdk.nashorn.internal.ir.Node,int)>($r2, $r0, null, "root", $r3, 0) 

(declare-const var991!1 var384)
(declare-const var205!2 String)
(declare-const var3016!2 var3083)
(declare-const var68 var2628)
(declare-const var305 String)
(declare-const var1964!1 var182)
(declare-const var1627 Int)
(define-const var2056 Int (var1958_size/-959786421 (cast-from-var3083-to-var1958 var3016!2))) ; Statement: $i0 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var1180 (Array Int var182) arr-var182-init) ; Statement: $r4 = newarray (jdk.nashorn.internal.ir.Node)[$i0] 
(define-const var898 (Array Int var1971) (var1958_toArray/-775711681 (cast-from-var3083-to-var1958 var3016!2) (cast-from-__Array__Int__var182__-to-__Array__Int__var1971__ var1180))) ; Statement: $r5 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4) 
(define-const var3682 (Array Int var182) (cast-from-__Array__Int__var1971__-to-__Array__Int__var182__ var898)) ; Statement: $r6 = (jdk.nashorn.internal.ir.Node[]) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3083-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), root/275438046=([jdk.nashorn.internal.ir.debug.ASTWriter], jdk.nashorn.internal.ir.Node), printAST/-161306083=([jdk.nashorn.internal.ir.debug.ASTWriter, java.lang.StringBuilder, java.util.List, java.lang.reflect.Field, java.lang.String, jdk.nashorn.internal.ir.Node, int], void), cast-from-var3083-to-var1958=([java.util.ArrayList], java.util.List), var1958_size/-959786421=([java.util.List], int), arr-var182-init=([], jdk.nashorn.internal.ir.Node[]), var1958_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var182__-to-__Array__Int__var1971__=([jdk.nashorn.internal.ir.Node[]], java.lang.Object[]), cast-from-__Array__Int__var1971__-to-__Array__Int__var182__=([java.lang.Object[]], jdk.nashorn.internal.ir.Node[])}
; {var384=jdk.nashorn.internal.ir.debug.ASTWriter, var991=r1, var3083=java.util.ArrayList, var3016=$r0, var205=$r2, var182=jdk.nashorn.internal.ir.Node, var1964=$r3, var1958=java.util.List, var26=java.lang.reflect.Field, var68=null, var2628=null_type, var305="root", var1627=0, var2056=$i0, var1180=$r4, var1971=java.lang.Object, var898=$r5, var3682=$r6}
; {jdk.nashorn.internal.ir.debug.ASTWriter=var384, r1=var991, java.util.ArrayList=var3083, $r0=var3016, $r2=var205, jdk.nashorn.internal.ir.Node=var182, $r3=var1964, java.util.List=var1958, java.lang.reflect.Field=var26, null=var68, null_type=var2628, "root"=var305, 0=var1627, $i0=var2056, $r4=var1180, java.lang.Object=var1971, $r5=var898, $r6=var3682}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.ASTWriter;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<jdk.nashorn.internal.ir.debug.ASTWriter: jdk.nashorn.internal.ir.Node root>;	specialinvoke r1.<jdk.nashorn.internal.ir.debug.ASTWriter: void printAST(java.lang.StringBuilder,java.util.List,java.lang.reflect.Field,java.lang.String,jdk.nashorn.internal.ir.Node,int)>($r2, $r0, null, "root", $r3, 0);	$i0 = interfaceinvoke $r0.<java.util.List: int size()>();	$r4 = newarray (jdk.nashorn.internal.ir.Node)[$i0];	$r5 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4);	$r6 = (jdk.nashorn.internal.ir.Node[]) $r5;	return $r6
;block_num 1