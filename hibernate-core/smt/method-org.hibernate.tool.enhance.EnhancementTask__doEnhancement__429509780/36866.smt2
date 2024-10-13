(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2818 0)
(declare-sort var3630 0)
(declare-sort var1931 0)
(declare-sort var3997 0)
(declare-sort var693 0)
(declare-sort var1665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var3630) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun failOnError/626267489 (var2818) Bool)
(declare-fun log/-1945041298 (var693 String var1665 Int) void)
(declare-fun cast-from-var2818-to-var693 (var2818) var693)
(declare-fun cast-from-var3997-to-var1665 (var3997) var1665)
(declare-const null-var2818 var2818)
(declare-const null-var3630 var3630)
(declare-const null-var1931 var1931)
(declare-const null-var3997 var3997)
(declare-const var130 var2818) ; Statement: r1 := @this: org.hibernate.tool.enhance.EnhancementTask 
(assert (not (= var130 null-var2818)))
(declare-const var1068 var3630) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1068 null-var3630)))
(declare-const var460 var1931) ; Statement: r10 := @parameter1: org.hibernate.bytecode.enhance.spi.Enhancer 
(assert (not (= var460 null-var1931)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1807 var3997) ; Statement: $r13 := @caughtexception 
(assert (not (= var1807 null-var3997)))
(define-const var1587 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(assert true)
(define-const var1265 String (append/672562846 var1587!1 "Unable to enhance class: ")) ; Statement: $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to enhance class: ") 
(declare-const var1587!2 String)
(assert (= var1587!2 (str.++ var1587!1 "Unable to enhance class: ")))
(assert true)
(define-const var627 String (getName/1128186653 var1068)) ; Statement: $r15 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var511 String (append/672562846 var1265 var627)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1265!1 String)
(assert (= var1265!1 (str.++ var1265 var627)))
(assert true)
(define-const var1118 String (toString/-2075883882 var511)) ; Statement: r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3698 Bool (failOnError/626267489 var130)) ; Statement: $z0 = r1.<org.hibernate.tool.enhance.EnhancementTask: boolean failOnError> 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<org.hibernate.tool.enhance.EnhancementTask: void log(java.lang.String,java.lang.Throwable,int)>(r21, $r13, 1) 
(assert (= (ite var3698 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (log/-1945041298 (cast-from-var2818-to-var693 var130) var1118 (cast-from-var3997-to-var1665 var1807) 1)) ; Statement: virtualinvoke r1.<org.hibernate.tool.enhance.EnhancementTask: void log(java.lang.String,java.lang.Throwable,int)>(r21, $r13, 1) 

(declare-const var130!1 var2818)
(declare-const var1118!1 String)
(declare-const var1807!1 var3997)
(declare-const var3988 Int)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1128186653=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), failOnError/626267489=([org.hibernate.tool.enhance.EnhancementTask], boolean), log/-1945041298=([org.apache.tools.ant.Task, java.lang.String, java.lang.Throwable, int], void), cast-from-var2818-to-var693=([org.hibernate.tool.enhance.EnhancementTask], org.apache.tools.ant.Task), cast-from-var3997-to-var1665=([java.lang.Exception], java.lang.Throwable)}
; {var2818=org.hibernate.tool.enhance.EnhancementTask, var130=r1, var3630=java.io.File, var1068=r0, var1931=org.hibernate.bytecode.enhance.spi.Enhancer, var460=r10, var3997=java.lang.Exception, var1807=$r13, var1587=$r24, var1265=$r16, var627=$r15, var511=$r17, var1118=r21, var3698=$z0, var693=org.apache.tools.ant.Task, var1665=java.lang.Throwable, var3988=1}
; {org.hibernate.tool.enhance.EnhancementTask=var2818, r1=var130, java.io.File=var3630, r0=var1068, org.hibernate.bytecode.enhance.spi.Enhancer=var1931, r10=var460, java.lang.Exception=var3997, $r13=var1807, $r24=var1587, $r16=var1265, $r15=var627, $r17=var511, r21=var1118, $z0=var3698, org.apache.tools.ant.Task=var693, java.lang.Throwable=var1665, 1=var3988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.enhance.EnhancementTask;	r0 := @parameter0: java.io.File;	r10 := @parameter1: org.hibernate.bytecode.enhance.spi.Enhancer;	$r13 := @caughtexception;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to enhance class: ");	$r15 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = r1.<org.hibernate.tool.enhance.EnhancementTask: boolean failOnError>;	if $z0 == 0 goto virtualinvoke r1.<org.hibernate.tool.enhance.EnhancementTask: void log(java.lang.String,java.lang.Throwable,int)>(r21, $r13, 1);	virtualinvoke r1.<org.hibernate.tool.enhance.EnhancementTask: void log(java.lang.String,java.lang.Throwable,int)>(r21, $r13, 1);	return null
;block_num 3