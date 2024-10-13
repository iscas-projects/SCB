(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2139 0)
(declare-sort var3802 0)
(declare-sort var3148 0)
(declare-sort var3336 0)
(declare-sort var3720 0)
(declare-sort var2240 0)
(declare-sort var2818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3148) ClassObject)
(declare-fun cast-from-var2139-to-var3148 (var2139) var3148)
(declare-fun getClassLoader/-563698447 (ClassObject) var3336)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun ClassObject_forName/696536127 (String Bool var3336) ClassObject)
(declare-fun var2240-init () var2240)
(declare-fun toString/-1112415476 (var2818) String)
(declare-fun cast-from-var3720-to-var2818 (var3720) var2818)
(declare-fun <init>/-1084991535 (var2240 String) void)
(declare-const null-var2139 var2139)
(declare-const null-String String)
(declare-const null-var3720 var3720)
(declare-const var3753 var2139) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var3753 null-var2139)))
(declare-const var1094 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1094 null-String)))
(declare-const var2768 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2768 null-String)))
(assert true)
(define-const var3389 ClassObject (getClass/1258963082 (cast-from-var2139-to-var3148 var3753))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3823 var3336 (getClassLoader/-563698447 var3389)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1969 String (replace/1524665721 var1094 47 46)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true) ; Non Conditional
(define-const var1663 ClassObject (ClassObject_forName/696536127 var1969 (ite (= 1 0) true false) var3823)) ; Statement: r14 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String,boolean,java.lang.ClassLoader)>($r4, 0, r2) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3192 var3720) ; Statement: $r11 := @caughtexception 
(assert (not (= var3192 null-var3720)))
(define-const var3398 var2240 var2240-init) ; Statement: $r12 = new java.lang.RuntimeException 
(assert true)
(define-const var2396 String (toString/-1112415476 (cast-from-var3720-to-var2818 var3192))) ; Statement: $r13 = virtualinvoke $r11.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3398 var2396)) ; Statement: specialinvoke $r12.<java.lang.RuntimeException: void <init>(java.lang.String)>($r13) 

(declare-const var3398!1 var2240)
(declare-const var2396!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2139-to-var3148=([jdk.internal.org.objectweb.asm.ClassWriter], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), replace/1524665721=([java.lang.String, char, char], java.lang.String), ClassObject_forName/696536127=([java.lang.String, boolean, java.lang.ClassLoader], java.lang.Class), var2240-init=([], java.lang.RuntimeException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3720-to-var2818=([java.lang.Exception], java.lang.Throwable), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2139=jdk.internal.org.objectweb.asm.ClassWriter, var3753=r0, var1094=r3, var3802=null_type, var2768=r5, var3148=java.lang.Object, var3389=$r1, var3336=java.lang.ClassLoader, var3823=r2, var1969=$r4, var1663=r14, var3720=java.lang.Exception, var3192=$r11, var2240=java.lang.RuntimeException, var3398=$r12, var2818=java.lang.Throwable, var2396=$r13}
; {jdk.internal.org.objectweb.asm.ClassWriter=var2139, r0=var3753, r3=var1094, null_type=var3802, r5=var2768, java.lang.Object=var3148, $r1=var3389, java.lang.ClassLoader=var3336, r2=var3823, $r4=var1969, r14=var1663, java.lang.Exception=var3720, $r11=var3192, java.lang.RuntimeException=var2240, $r12=var3398, java.lang.Throwable=var2818, $r13=var2396}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.Throwable: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.ClassWriter;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	r14 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String,boolean,java.lang.ClassLoader)>($r4, 0, r2);	$r11 := @caughtexception;	$r12 = new java.lang.RuntimeException;	$r13 = virtualinvoke $r11.<java.lang.Exception: java.lang.String toString()>();	specialinvoke $r12.<java.lang.RuntimeException: void <init>(java.lang.String)>($r13);	throw $r12
;block_num 4