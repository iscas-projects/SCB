(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1880 0)
(declare-sort var2706 0)
(declare-sort var1771 0)
(declare-sort var1559 0)
(declare-sort var3504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun methodInFilter/802350035 (var1880 String String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3504_log/979489950 (var1771 var1559 String) void)
(declare-const null-var1880 var1880)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1771-JFR_SYSTEM_BYTECODE var1771)
(declare-const var1559-DEBUG var1559)
(declare-const var1805 var1880) ; Statement: r0 := @this: jdk.jfr.internal.instrument.JIMethodMergeAdapter 
(assert (not (= var1805 null-var1880)))
(declare-const var971 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var971 null-Int)))
(declare-const var2311 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2311 null-String)))
(declare-const var3954 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3954 null-String)))
(declare-const var3414 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3414 null-String)))
(declare-const var3626 (Array Int String)) ; Statement: r4 := @parameter4: java.lang.String[] 
(assert (not (= var3626 null-__Array__Int__String__)))
(assert true)
(define-const var3276 Bool (methodInFilter/802350035 var1805 var2311 var3954)) ; Statement: $z0 = specialinvoke r0.<jdk.jfr.internal.instrument.JIMethodMergeAdapter: boolean methodInFilter(java.lang.String,java.lang.String)>(r1, r2) 
 ; Statement: if $z0 == 0 goto $r5 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r2, r3, r4) 
(assert (not (= (ite var3276 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var542 var1771 var1771-JFR_SYSTEM_BYTECODE) ; Statement: $r7 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE> 
(define-const var117 var1559 var1559-DEBUG) ; Statement: $r8 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG> 
(define-const var2032 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2032)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2032!1 String)
(assert (= var2032!1 ""))
(assert true)
(define-const var3293 String (append/672562846 var2032!1 "Deleting ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Deleting ") 
(declare-const var2032!2 String)
(assert (= var2032!2 (str.++ var2032!1 "Deleting ")))
(assert true)
(define-const var3096 String (append/672562846 var3293 var2311)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 var2311)))
(assert true)
(define-const var1760 String (append/672562846 var3096 var3954)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3096!1 String)
(assert (= var3096!1 (str.++ var3096 var3954)))
(assert true)
(define-const var171 String (toString/-2075883882 var1760)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3504_log/979489950 var542 var117 var171)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r7, $r8, $r12) 

(declare-const var542!1 var1771)
(declare-const var117!1 var1559)
(declare-const var171!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {methodInFilter/802350035=([jdk.jfr.internal.instrument.JIMethodMergeAdapter, java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3504_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var1880=jdk.jfr.internal.instrument.JIMethodMergeAdapter, var1805=r0, var971=i0, var2311=r1, var2706=null_type, var3954=r2, var3414=r3, var3626=r4, var3276=$z0, var1771=jdk.jfr.internal.LogTag, var542=$r7, var1559=jdk.jfr.internal.LogLevel, var117=$r8, var2032=$r6, var3293=$r9, var3096=$r10, var1760=$r11, var171=$r12, var3504=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.instrument.JIMethodMergeAdapter=var1880, r0=var1805, i0=var971, r1=var2311, null_type=var2706, r2=var3954, r3=var3414, r4=var3626, $z0=var3276, jdk.jfr.internal.LogTag=var1771, $r7=var542, jdk.jfr.internal.LogLevel=var1559, $r8=var117, $r6=var2032, $r9=var3293, $r10=var3096, $r11=var1760, $r12=var171, jdk.jfr.internal.Logger=var3504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.instrument.JIMethodMergeAdapter;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String[];	$z0 = specialinvoke r0.<jdk.jfr.internal.instrument.JIMethodMergeAdapter: boolean methodInFilter(java.lang.String,java.lang.String)>(r1, r2);	if $z0 == 0 goto $r5 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r2, r3, r4);	$r7 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE>;	$r8 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Deleting ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r7, $r8, $r12);	return null
;block_num 2