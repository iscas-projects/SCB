(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1520 0)
(declare-sort var850 0)
(declare-sort var752 0)
(declare-sort var1321 0)
(declare-sort var3517 0)
(declare-sort var1223 0)
(declare-sort var1697 0)
(declare-sort var1486 0)
(declare-sort var3829 0)
(declare-sort var3426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-603485718 (var3517 Int Int String var752) void)
(declare-fun cast-from-var1520-to-var3517 (var1520) var3517)
(declare-fun var1223-init () var1223)
(declare-fun <init>/-325640736 (var1223) void)
(declare-fun cast-from-var1223-to-var1697 (var1223) var1697)
(declare-fun blocks/1745460016 (var1520) var1697)
(declare-fun oldClass/1745460016 (var1520) String)
(declare-fun newClass/1745460016 (var1520) String)
(declare-fun inlineTarget/1745460016 (var1520) var1321)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-2079073047 (var1321) String)
(declare-fun desc/-2079073047 (var1321) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3426_log/979489950 (var1486 var3829 String) void)
(declare-const null-var1520 var1520)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var752 var752)
(declare-const null-var1321 var1321)
(declare-const var1486-JFR_SYSTEM_BYTECODE var1486)
(declare-const var3829-DEBUG var3829)
(declare-const var1749 var1520) ; Statement: r0 := @this: jdk.jfr.internal.instrument.JIMethodCallInliner 
(assert (not (= var1749 null-var1520)))
(declare-const var2208 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2208 null-Int)))
(declare-const var688 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var688 null-String)))
(declare-const var3721 var752) ; Statement: r2 := @parameter2: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var3721 null-var752)))
(declare-const var2322 var1321) ; Statement: r6 := @parameter3: jdk.internal.org.objectweb.asm.tree.MethodNode 
(assert (not (= var2322 null-var1321)))
(declare-const var2731 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var2731 null-String)))
(declare-const var1854 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var1854 null-String)))
(assert true)
;(assert (<init>/-603485718 (cast-from-var1520-to-var3517 var1749) 327680 var2208 var688 var3721)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter: void <init>(int,int,java.lang.String,jdk.internal.org.objectweb.asm.MethodVisitor)>(327680, i0, r1, r2) 

(declare-const var1749!1 var1520)
(declare-const var2438 Int)
(declare-const var2208!1 Int)
(declare-const var688!1 String)
(declare-const var3721!1 var752)
(define-const var3898 var1223 var1223-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3898)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var3898!1 var1223)
(declare-const var1749!2 var1520)
(assert (not (= var1749!2 null-var1520)))
(assert (= (blocks/1745460016 var1749!2) (cast-from-var1223-to-var1697 var3898!1))) ; Statement: r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: java.util.List blocks> = $r3 
(declare-const var1749!3 var1520)
(assert (not (= var1749!3 null-var1520)))
(assert (= (oldClass/1745460016 var1749!3) var2731)) ; Statement: r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: java.lang.String oldClass> = r4 
(declare-const var1749!4 var1520)
(assert (not (= var1749!4 null-var1520)))
(assert (= (newClass/1745460016 var1749!4) var1854)) ; Statement: r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: java.lang.String newClass> = r5 
(declare-const var1749!5 var1520)
(assert (not (= var1749!5 null-var1520)))
(assert (= (inlineTarget/1745460016 var1749!5) var2322)) ; Statement: r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: jdk.internal.org.objectweb.asm.tree.MethodNode inlineTarget> = r6 
(define-const var1818 var1486 var1486-JFR_SYSTEM_BYTECODE) ; Statement: $r8 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE> 
(define-const var671 var3829 var3829-DEBUG) ; Statement: $r9 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG> 
(define-const var2834 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2834)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2834!1 String)
(assert (= var2834!1 ""))
(assert true)
(define-const var3505 String (append/672562846 var2834!1 "MethodCallInliner: targetMethod=")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodCallInliner: targetMethod=") 
(declare-const var2834!2 String)
(assert (= var2834!2 (str.++ var2834!1 "MethodCallInliner: targetMethod=")))
(assert true)
(define-const var3441 String (append/672562846 var3505 var1854)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3505!1 String)
(assert (= var3505!1 (str.++ var3505 var1854)))
(assert true)
(define-const var971 String (append/672562846 var3441 ".")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3441!1 String)
(assert (= var3441!1 (str.++ var3441 ".")))
(define-const var3456 String (name/-2079073047 var2322)) ; Statement: $r12 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String name> 
(assert true)
(define-const var377 String (append/672562846 var971 var3456)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var971!1 String)
(assert (= var971!1 (str.++ var971 var3456)))
(define-const var430 String (desc/-2079073047 var2322)) ; Statement: $r14 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String desc> 
(assert true)
(define-const var1826 String (append/672562846 var377 var430)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var377!1 String)
(assert (= var377!1 (str.++ var377 var430)))
(assert true)
(define-const var3205 String (toString/-2075883882 var1826)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3426_log/979489950 var1818 var671 var3205)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r8, $r9, $r17) 

(declare-const var1818!1 var1486)
(declare-const var671!1 var3829)
(declare-const var3205!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-603485718=([jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter, int, int, java.lang.String, jdk.internal.org.objectweb.asm.MethodVisitor], void), cast-from-var1520-to-var3517=([jdk.jfr.internal.instrument.JIMethodCallInliner], jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter), var1223-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1223-to-var1697=([java.util.ArrayList], java.util.List), blocks/1745460016=([jdk.jfr.internal.instrument.JIMethodCallInliner], java.util.List), oldClass/1745460016=([jdk.jfr.internal.instrument.JIMethodCallInliner], java.lang.String), newClass/1745460016=([jdk.jfr.internal.instrument.JIMethodCallInliner], java.lang.String), inlineTarget/1745460016=([jdk.jfr.internal.instrument.JIMethodCallInliner], jdk.internal.org.objectweb.asm.tree.MethodNode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], java.lang.String), desc/-2079073047=([jdk.internal.org.objectweb.asm.tree.MethodNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3426_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var1520=jdk.jfr.internal.instrument.JIMethodCallInliner, var1749=r0, var2208=i0, var688=r1, var850=null_type, var752=jdk.internal.org.objectweb.asm.MethodVisitor, var3721=r2, var1321=jdk.internal.org.objectweb.asm.tree.MethodNode, var2322=r6, var2731=r4, var1854=r5, var3517=jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter, var2438=327680, var1223=java.util.ArrayList, var3898=$r3, var1697=java.util.List, var1486=jdk.jfr.internal.LogTag, var1818=$r8, var3829=jdk.jfr.internal.LogLevel, var671=$r9, var2834=$r7, var3505=$r10, var3441=$r11, var971=$r13, var3456=$r12, var377=$r15, var430=$r14, var1826=$r16, var3205=$r17, var3426=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.instrument.JIMethodCallInliner=var1520, r0=var1749, i0=var2208, r1=var688, null_type=var850, jdk.internal.org.objectweb.asm.MethodVisitor=var752, r2=var3721, jdk.internal.org.objectweb.asm.tree.MethodNode=var1321, r6=var2322, r4=var2731, r5=var1854, jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter=var3517, 327680=var2438, java.util.ArrayList=var1223, $r3=var3898, java.util.List=var1697, jdk.jfr.internal.LogTag=var1486, $r8=var1818, jdk.jfr.internal.LogLevel=var3829, $r9=var671, $r7=var2834, $r10=var3505, $r11=var3441, $r13=var971, $r12=var3456, $r15=var377, $r14=var430, $r16=var1826, $r17=var3205, jdk.jfr.internal.Logger=var3426}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.instrument.JIMethodCallInliner;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: jdk.internal.org.objectweb.asm.MethodVisitor;	r6 := @parameter3: jdk.internal.org.objectweb.asm.tree.MethodNode;	r4 := @parameter4: java.lang.String;	r5 := @parameter5: java.lang.String;	specialinvoke r0.<jdk.internal.org.objectweb.asm.commons.LocalVariablesSorter: void <init>(int,int,java.lang.String,jdk.internal.org.objectweb.asm.MethodVisitor)>(327680, i0, r1, r2);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: java.util.List blocks> = $r3;	r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: java.lang.String oldClass> = r4;	r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: java.lang.String newClass> = r5;	r0.<jdk.jfr.internal.instrument.JIMethodCallInliner: jdk.internal.org.objectweb.asm.tree.MethodNode inlineTarget> = r6;	$r8 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE>;	$r9 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodCallInliner: targetMethod=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r12 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String name>;	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r14 = r6.<jdk.internal.org.objectweb.asm.tree.MethodNode: java.lang.String desc>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r8, $r9, $r17);	return
;block_num 1