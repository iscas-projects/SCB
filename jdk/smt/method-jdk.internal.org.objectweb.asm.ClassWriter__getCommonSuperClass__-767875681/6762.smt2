(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2007 0)
(declare-sort var384 0)
(declare-sort var3228 0)
(declare-sort var2641 0)
(declare-sort var1707 0)
(declare-sort var1169 0)
(declare-sort var1641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3228) ClassObject)
(declare-fun cast-from-var2007-to-var3228 (var2007) var3228)
(declare-fun getClassLoader/-563698447 (ClassObject) var2641)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var1169-init () var1169)
(declare-fun toString/-1112415476 (var1641) String)
(declare-fun cast-from-var1707-to-var1641 (var1707) var1641)
(declare-fun <init>/-1084991535 (var1169 String) void)
(declare-const null-var2007 var2007)
(declare-const null-String String)
(declare-const null-var1707 var1707)
(declare-const var3188 var2007) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var3188 null-var2007)))
(declare-const var1777 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1777 null-String)))
(declare-const var506 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var506 null-String)))
(assert true)
(define-const var2743 ClassObject (getClass/1258963082 (cast-from-var2007-to-var3228 var3188))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var789 var2641 (getClassLoader/-563698447 var2743)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var761 String (replace/1524665721 var1777 47 46)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var956 var1707) ; Statement: $r11 := @caughtexception 
(assert (not (= var956 null-var1707)))
(define-const var416 var1169 var1169-init) ; Statement: $r12 = new java.lang.RuntimeException 
(assert true)
(define-const var1899 String (toString/-1112415476 (cast-from-var1707-to-var1641 var956))) ; Statement: $r13 = virtualinvoke $r11.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var416 var1899)) ; Statement: specialinvoke $r12.<java.lang.RuntimeException: void <init>(java.lang.String)>($r13) 

(declare-const var416!1 var1169)
(declare-const var1899!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2007-to-var3228=([jdk.internal.org.objectweb.asm.ClassWriter], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), replace/1524665721=([java.lang.String, char, char], java.lang.String), var1169-init=([], java.lang.RuntimeException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1707-to-var1641=([java.lang.Exception], java.lang.Throwable), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2007=jdk.internal.org.objectweb.asm.ClassWriter, var3188=r0, var1777=r3, var384=null_type, var506=r5, var3228=java.lang.Object, var2743=$r1, var2641=java.lang.ClassLoader, var789=r2, var761=$r4, var1707=java.lang.Exception, var956=$r11, var1169=java.lang.RuntimeException, var416=$r12, var1641=java.lang.Throwable, var1899=$r13}
; {jdk.internal.org.objectweb.asm.ClassWriter=var2007, r0=var3188, r3=var1777, null_type=var384, r5=var506, java.lang.Object=var3228, $r1=var2743, java.lang.ClassLoader=var2641, r2=var789, $r4=var761, java.lang.Exception=var1707, $r11=var956, java.lang.RuntimeException=var1169, $r12=var416, java.lang.Throwable=var1641, $r13=var1899}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.Throwable: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r11 := @caughtexception;	$r12 = new java.lang.RuntimeException;	$r13 = virtualinvoke $r11.<java.lang.Exception: java.lang.String toString()>();	specialinvoke $r12.<java.lang.RuntimeException: void <init>(java.lang.String)>($r13);	throw $r12
;block_num 3