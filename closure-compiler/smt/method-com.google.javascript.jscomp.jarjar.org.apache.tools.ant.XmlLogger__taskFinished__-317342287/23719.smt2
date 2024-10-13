(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2563 0)
(declare-sort var1223 0)
(declare-sort var2601 0)
(declare-sort var3582 0)
(declare-sort var1987 0)
(declare-sort var3978 0)
(declare-sort var1323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/-1794841133 (var1223) var2601)
(declare-fun tasks/-2053302488 (var2563) var3582)
(declare-fun var3582_get/1088891777 (var3582 var1987) var1987)
(declare-fun cast-from-var2601-to-var1987 (var2601) var1987)
(declare-fun cast-from-var1987-to-var3978 (var1987) var3978)
(declare-fun var1323-init () var1323)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1987) String)
(declare-fun cast-from-var3582-to-var1987 (var3582) var1987)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1323 String) void)
(declare-const null-var2563 var2563)
(declare-const null-var1223 var1223)
(declare-const null-var3978 var3978)
(declare-const var3892 var2563) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger 
(assert (not (= var3892 null-var2563)))
(declare-const var3393 var1223) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var3393 null-var1223)))
(assert true)
(define-const var209 var2601 (getTask/-1794841133 var3393)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>() 
(define-const var2797 var3582 (tasks/-2053302488 var3892)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger: java.util.Map tasks> 
(define-const var3203 var1987 (var3582_get/1088891777 var2797 (cast-from-var2601-to-var1987 var209))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3134 var3978 (cast-from-var1987-to-var3978 var3203)) ; Statement: r5 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement) $r4 
 ; Statement: if r5 != null goto $l1 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert (not (not (= var3134 null-var3978)))) ; Negate: Cond: r5 != null  
(define-const var917 var1323 var1323-init) ; Statement: $r27 = new java.lang.RuntimeException 
(define-const var274 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var274)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var274!1 String)
(assert (= var274!1 ""))
(assert true)
(define-const var2432 String (append/672562846 var274!1 "Unknown task ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown task ") 
(declare-const var274!2 String)
(assert (= var274!2 (str.++ var274!1 "Unknown task ")))
(assert true)
(define-const var1539 String (append/-1031950772 var2432 (cast-from-var2601-to-var1987 var209))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2432!1 String)
(assert (str.prefixof var2432 var2432!1))
(assert true)
(define-const var1067 String (append/672562846 var1539 " not in ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in ") 
(declare-const var1539!1 String)
(assert (= var1539!1 (str.++ var1539 " not in ")))
(define-const var1430 var3582 (tasks/-2053302488 var3892)) ; Statement: $r31 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger: java.util.Map tasks> 
(assert true)
(define-const var895 String (append/-1031950772 var1067 (cast-from-var3582-to-var1987 var1430))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31) 
(declare-const var1067!1 String)
(assert (str.prefixof var1067 var1067!1))
(assert true)
(define-const var2079 String (toString/-2075883882 var895)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var917 var2079)) ; Statement: specialinvoke $r27.<java.lang.RuntimeException: void <init>(java.lang.String)>($r34) 

(declare-const var917!1 var1323)
(declare-const var2079!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/-1794841133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), tasks/-2053302488=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger], java.util.Map), var3582_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2601-to-var1987=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.Object), cast-from-var1987-to-var3978=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement), var1323-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3582-to-var1987=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2563=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger, var3892=r2, var1223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var3393=r0, var2601=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var209=r1, var3582=java.util.Map, var2797=$r3, var1987=java.lang.Object, var3203=$r4, var3978=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement, var3134=r5, var1323=java.lang.RuntimeException, var917=$r27, var274=$r28, var2432=$r29, var1539=$r30, var1067=$r32, var1430=$r31, var895=$r33, var2079=$r34}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger=var2563, r2=var3892, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1223, r0=var3393, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2601, r1=var209, java.util.Map=var3582, $r3=var2797, java.lang.Object=var1987, $r4=var3203, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement=var3978, r5=var3134, java.lang.RuntimeException=var1323, $r27=var917, $r28=var274, $r29=var2432, $r30=var1539, $r32=var1067, $r31=var1430, $r33=var895, $r34=var2079}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>();	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger: java.util.Map tasks>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r5 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger$TimedElement) $r4;	if r5 != null goto $l1 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r27 = new java.lang.RuntimeException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown task ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in ");	$r31 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.XmlLogger: java.util.Map tasks>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.RuntimeException: void <init>(java.lang.String)>($r34);	throw $r27
;block_num 2