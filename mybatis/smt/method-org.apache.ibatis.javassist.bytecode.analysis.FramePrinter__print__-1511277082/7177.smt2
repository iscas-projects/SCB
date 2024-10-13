(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var126 0)
(declare-sort var2547 0)
(declare-sort var2990 0)
(declare-sort var3604 0)
(declare-sort var1609 0)
(declare-sort var1846 0)
(declare-sort var3842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stream/-1406627218 (var126) var2990)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMethodString/308582010 (var126 var2547) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2990 String) void)
(declare-fun getMethodInfo2/-1623269181 (var1609) var3604)
(declare-fun cast-from-var2547-to-var1609 (var2547) var1609)
(declare-fun getConstPool/-519828148 (var3604) var1846)
(declare-fun getCodeAttribute/-423903284 (var3604) var3842)
(declare-const null-var126 var126)
(declare-const null-var2547 var2547)
(declare-const null-var3842 var3842)
(declare-const var1565 var126) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.FramePrinter 
(assert (not (= var1565 null-var126)))
(declare-const var1832 var2547) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var1832 null-var2547)))
(define-const var1740 var2990 (stream/-1406627218 var1565)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.FramePrinter: java.io.PrintStream stream> 
(define-const var1561 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1561)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1561!1 String)
(assert (= var1561!1 ""))
(assert true)
(define-const var3413 String (append/672562846 var1561!1 "\n")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1561!2 String)
(assert (= var1561!2 (str.++ var1561!1 "\n")))
(assert true)
(define-const var800 String (getMethodString/308582010 var1565 var1832)) ; Statement: $r4 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.FramePrinter: java.lang.String getMethodString(org.apache.ibatis.javassist.CtMethod)>(r3) 
(assert true)
(define-const var1468 String (append/672562846 var3413 var800)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3413!1 String)
(assert (= var3413!1 (str.++ var3413 var800)))
(assert true)
(define-const var2965 String (toString/-2075883882 var1468)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1740 var2965)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r7) 

(declare-const var1740!1 var2990)
(declare-const var2965!1 String)
(assert true)
(define-const var1542 var3604 (getMethodInfo2/-1623269181 (cast-from-var2547-to-var1609 var1832))) ; Statement: r8 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var3901 var1846 (getConstPool/-519828148 var1542)) ; Statement: r9 = virtualinvoke r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(assert true)
(define-const var3831 var3842 (getCodeAttribute/-423903284 var1542)) ; Statement: r10 = virtualinvoke r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: org.apache.ibatis.javassist.bytecode.CodeAttribute getCodeAttribute()>() 
 ; Statement: if r10 != null goto $r11 = new org.apache.ibatis.javassist.bytecode.analysis.Analyzer 
(assert (not (not (= var3831 null-var3842)))) ; Negate: Cond: r10 != null  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {stream/-1406627218=([org.apache.ibatis.javassist.bytecode.analysis.FramePrinter], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMethodString/308582010=([org.apache.ibatis.javassist.bytecode.analysis.FramePrinter, org.apache.ibatis.javassist.CtMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getMethodInfo2/-1623269181=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.bytecode.MethodInfo), cast-from-var2547-to-var1609=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtBehavior), getConstPool/-519828148=([org.apache.ibatis.javassist.bytecode.MethodInfo], org.apache.ibatis.javassist.bytecode.ConstPool), getCodeAttribute/-423903284=([org.apache.ibatis.javassist.bytecode.MethodInfo], org.apache.ibatis.javassist.bytecode.CodeAttribute)}
; {var126=org.apache.ibatis.javassist.bytecode.analysis.FramePrinter, var1565=r0, var2547=org.apache.ibatis.javassist.CtMethod, var1832=r3, var2990=java.io.PrintStream, var1740=$r2, var1561=$r1, var3413=$r5, var800=$r4, var1468=$r6, var2965=$r7, var3604=org.apache.ibatis.javassist.bytecode.MethodInfo, var1609=org.apache.ibatis.javassist.CtBehavior, var1542=r8, var1846=org.apache.ibatis.javassist.bytecode.ConstPool, var3901=r9, var3842=org.apache.ibatis.javassist.bytecode.CodeAttribute, var3831=r10}
; {org.apache.ibatis.javassist.bytecode.analysis.FramePrinter=var126, r0=var1565, org.apache.ibatis.javassist.CtMethod=var2547, r3=var1832, java.io.PrintStream=var2990, $r2=var1740, $r1=var1561, $r5=var3413, $r4=var800, $r6=var1468, $r7=var2965, org.apache.ibatis.javassist.bytecode.MethodInfo=var3604, org.apache.ibatis.javassist.CtBehavior=var1609, r8=var1542, org.apache.ibatis.javassist.bytecode.ConstPool=var1846, r9=var3901, org.apache.ibatis.javassist.bytecode.CodeAttribute=var3842, r10=var3831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.FramePrinter;	r3 := @parameter0: org.apache.ibatis.javassist.CtMethod;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.FramePrinter: java.io.PrintStream stream>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r4 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.FramePrinter: java.lang.String getMethodString(org.apache.ibatis.javassist.CtMethod)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>($r7);	r8 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	r9 = virtualinvoke r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	r10 = virtualinvoke r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: org.apache.ibatis.javassist.bytecode.CodeAttribute getCodeAttribute()>();	if r10 != null goto $r11 = new org.apache.ibatis.javassist.bytecode.analysis.Analyzer;	return
;block_num 2