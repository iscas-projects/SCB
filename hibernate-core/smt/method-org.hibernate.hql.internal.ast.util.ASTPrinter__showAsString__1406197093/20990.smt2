(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3484 0)
(declare-sort var1613 0)
(declare-sort var1315 0)
(declare-sort var2512 0)
(declare-sort var617 0)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2512-init () var2512)
(declare-fun <init>/-707998177 (var2512) void)
(declare-fun var617-init () var617)
(declare-fun <init>/-1917080009 (var617 var1436) void)
(declare-fun cast-from-var2512-to-var1436 (var2512) var1436)
(declare-fun println/1773605060 (var617 String) void)
(declare-fun showAst/1901853069 (var3484 var1613 var617) void)
(declare-fun flush/1759018410 (var617) void)
(declare-fun String-init () String)
(declare-fun toByteArray/1343874077 (var2512) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-var3484 var3484)
(declare-const null-var1613 var1613)
(declare-const null-String String)
(declare-const var103 var3484) ; Statement: r3 := @this: org.hibernate.hql.internal.ast.util.ASTPrinter 
(assert (not (= var103 null-var3484)))
(declare-const var1785 var1613) ; Statement: r4 := @parameter0: antlr.collections.AST 
(assert (not (= var1785 null-var1613)))
(declare-const var3966 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3966 null-String)))
(define-const var863 var2512 var2512-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var863)) ; Statement: specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var863!1 var2512)
(define-const var2798 var617 var617-init) ; Statement: $r1 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var2798 (cast-from-var2512-to-var1436 var863!1))) ; Statement: specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var2798!1 var617)
(declare-const var863!2 var2512)
(assert true)
;(assert (println/1773605060 var2798!1 var3966)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r2) 

(declare-const var2798!2 var617)
(declare-const var3966!1 String)
(assert true)
;(assert (showAst/1901853069 var103 var1785 var2798!2)) ; Statement: virtualinvoke r3.<org.hibernate.hql.internal.ast.util.ASTPrinter: void showAst(antlr.collections.AST,java.io.PrintStream)>(r4, $r1) 

(declare-const var103!1 var3484)
(declare-const var1785!1 var1613)
(declare-const var2798!3 var617)
(assert true)
;(assert (flush/1759018410 var2798!3)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void flush()>() 

(declare-const var2798!4 var617)
(define-const var3015 String String-init) ; Statement: $r5 = new java.lang.String 
(assert true)
(define-const var1426 (Array Int Int) (toByteArray/1343874077 var863!2)) ; Statement: $r6 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/76075152 var3015 var1426)) ; Statement: specialinvoke $r5.<java.lang.String: void <init>(byte[])>($r6) 

(declare-const var3015!1 String)
(declare-const var1426!1 (Array Int Int))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2512-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), var617-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var2512-to-var1436=([java.io.ByteArrayOutputStream], java.io.OutputStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), showAst/1901853069=([org.hibernate.hql.internal.ast.util.ASTPrinter, antlr.collections.AST, java.io.PrintStream], void), flush/1759018410=([java.io.PrintStream], void), String-init=([], java.lang.String), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var3484=org.hibernate.hql.internal.ast.util.ASTPrinter, var103=r3, var1613=antlr.collections.AST, var1785=r4, var3966=r2, var1315=null_type, var2512=java.io.ByteArrayOutputStream, var863=$r0, var617=java.io.PrintStream, var2798=$r1, var1436=java.io.OutputStream, var3015=$r5, var1426=$r6}
; {org.hibernate.hql.internal.ast.util.ASTPrinter=var3484, r3=var103, antlr.collections.AST=var1613, r4=var1785, r2=var3966, null_type=var1315, java.io.ByteArrayOutputStream=var2512, $r0=var863, java.io.PrintStream=var617, $r1=var2798, java.io.OutputStream=var1436, $r5=var3015, $r6=var1426}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r3 := @this: org.hibernate.hql.internal.ast.util.ASTPrinter;	r4 := @parameter0: antlr.collections.AST;	r2 := @parameter1: java.lang.String;	$r0 = new java.io.ByteArrayOutputStream;	specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>();	$r1 = new java.io.PrintStream;	specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r2);	virtualinvoke r3.<org.hibernate.hql.internal.ast.util.ASTPrinter: void showAst(antlr.collections.AST,java.io.PrintStream)>(r4, $r1);	virtualinvoke $r1.<java.io.PrintStream: void flush()>();	$r5 = new java.lang.String;	$r6 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	specialinvoke $r5.<java.lang.String: void <init>(byte[])>($r6);	return $r5
;block_num 1