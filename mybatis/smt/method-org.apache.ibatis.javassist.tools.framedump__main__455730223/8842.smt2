(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2656 0)
(declare-sort var2877 0)
(declare-sort var3104 0)
(declare-sort var3080 0)
(declare-sort var3719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2656_getDefault/-1989328856 () var2656)
(declare-fun get/-1068841021 (var2656 String) var2877)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var2877) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3104 String) void)
(declare-fun var3719_print/2093656738 (var2877 var3104) void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3080-out var3104)
(declare-const var914 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var914 null-__Array__Int__String__)))
(define-const var2970 Int (getLength-Arr-String-1 var914)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 == 1 goto r1 = staticinvoke <org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.ClassPool getDefault()>() 
(assert (= var2970 1)) ; Cond: $i0 == 1 
(define-const var2553 var2656 var2656_getDefault/-1989328856) ; Statement: r1 = staticinvoke <org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.ClassPool getDefault()>() 
(define-const var3226 String (select var914 0)) ; Statement: $r2 = r0[0] 
(assert true)
(define-const var2357 var2877 (get/-1068841021 var2553 var3226)) ; Statement: r3 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>($r2) 
(define-const var1855 var3104 var3080-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(define-const var1018 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1018)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1018!1 String)
(assert (= var1018!1 ""))
(assert true)
(define-const var3966 String (append/672562846 var1018!1 "Frame Dump of ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Frame Dump of ") 
(declare-const var1018!2 String)
(assert (= var1018!2 (str.++ var1018!1 "Frame Dump of ")))
(assert true)
(define-const var1774 String (getName/1611768686 var2357)) ; Statement: $r6 = virtualinvoke r3.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var796 String (append/672562846 var3966 var1774)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3966!1 String)
(assert (= var3966!1 (str.++ var3966 var1774)))
(assert true)
(define-const var746 String (append/672562846 var796 ":")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 ":")))
(assert true)
(define-const var2013 String (toString/-2075883882 var746)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1855 var2013)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var1855!1 var3104)
(declare-const var2013!1 String)
(define-const var535 var3104 var3080-out) ; Statement: $r11 = <java.lang.System: java.io.PrintStream out> 
;(assert (var3719_print/2093656738 var2357 var535)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.analysis.FramePrinter: void print(org.apache.ibatis.javassist.CtClass,java.io.PrintStream)>(r3, $r11) 

(declare-const var2357!1 var2877)
(declare-const var535!1 var3104)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var2656_getDefault/-1989328856=([], org.apache.ibatis.javassist.ClassPool), get/-1068841021=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.CtClass), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3719_print/2093656738=([org.apache.ibatis.javassist.CtClass, java.io.PrintStream], void)}
; {var914=r0, var2970=$i0, var2656=org.apache.ibatis.javassist.ClassPool, var2553=r1, var3226=$r2, var2877=org.apache.ibatis.javassist.CtClass, var2357=r3, var3104=java.io.PrintStream, var3080=java.lang.System, var1855=$r5, var1018=$r4, var3966=$r7, var1774=$r6, var796=$r8, var746=$r9, var2013=$r10, var535=$r11, var3719=org.apache.ibatis.javassist.bytecode.analysis.FramePrinter}
; {r0=var914, $i0=var2970, org.apache.ibatis.javassist.ClassPool=var2656, r1=var2553, $r2=var3226, org.apache.ibatis.javassist.CtClass=var2877, r3=var2357, java.io.PrintStream=var3104, java.lang.System=var3080, $r5=var1855, $r4=var1018, $r7=var3966, $r6=var1774, $r8=var796, $r9=var746, $r10=var2013, $r11=var535, org.apache.ibatis.javassist.bytecode.analysis.FramePrinter=var3719}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 == 1 goto r1 = staticinvoke <org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.ClassPool getDefault()>();	r1 = staticinvoke <org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.ClassPool getDefault()>();	$r2 = r0[0];	r3 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>($r2);	$r5 = <java.lang.System: java.io.PrintStream out>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Frame Dump of ");	$r6 = virtualinvoke r3.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10);	$r11 = <java.lang.System: java.io.PrintStream out>;	staticinvoke <org.apache.ibatis.javassist.bytecode.analysis.FramePrinter: void print(org.apache.ibatis.javassist.CtClass,java.io.PrintStream)>(r3, $r11);	return
;block_num 2