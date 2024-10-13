(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort var916 0)
(declare-sort var3393 0)
(declare-sort var533 0)
(declare-sort var844 0)
(declare-sort var2642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warn/-449434436 (var844 String var2642) void)
(declare-fun cast-from-var533-to-var2642 (var533) var2642)
(declare-const null-var2922 var2922)
(declare-const null-var916 var916)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3393 var3393)
(declare-const null-var533 var533)
(declare-const var2922-LOG var844)
(declare-const var239 var2922) ; Statement: r3 := @this: freemarker.ext.beans.ClassIntrospector 
(assert (not (= var239 null-var2922)))
(declare-const var3581 var916) ; Statement: r4 := @parameter0: java.util.Map 
(assert (not (= var3581 null-var916)))
(declare-const var1856 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1856 null-ClassObject)))
(declare-const var2512 var3393) ; Statement: r10 := @parameter2: freemarker.ext.beans.ClassMemberAccessPolicy 
(assert (not (= var2512 null-var3393)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2760 var533) ; Statement: $r11 := @caughtexception 
(assert (not (= var2760 null-var533)))
(define-const var495 var844 var2922-LOG) ; Statement: $r13 = <freemarker.ext.beans.ClassIntrospector: freemarker.log.Logger LOG> 
(define-const var1564 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1564)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1564!1 String)
(assert (= var1564!1 ""))
(assert true)
(define-const var2739 String (append/672562846 var1564!1 "Can\u0027t discover constructors for class ")) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t discover constructors for class ") 
(declare-const var1564!2 String)
(assert (= var1564!2 (str.++ var1564!1 "Can\u0027t discover constructors for class ")))
(assert true)
(define-const var262 String (getName/-1958580599 var1856)) ; Statement: $r14 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3118 String (append/672562846 var2739 var262)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2739!1 String)
(assert (= var2739!1 (str.++ var2739 var262)))
(assert true)
(define-const var3480 String (toString/-2075883882 var3118)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warn/-449434436 var495 var3480 (cast-from-var533-to-var2642 var2760))) ; Statement: virtualinvoke $r13.<freemarker.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r17, $r11) 

(declare-const var495!1 var844)
(declare-const var3480!1 String)
(declare-const var2760!1 var533)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warn/-449434436=([freemarker.log.Logger, java.lang.String, java.lang.Throwable], void), cast-from-var533-to-var2642=([java.lang.SecurityException], java.lang.Throwable)}
; {var2922=freemarker.ext.beans.ClassIntrospector, var239=r3, var916=java.util.Map, var3581=r4, var1856=r0, var3393=freemarker.ext.beans.ClassMemberAccessPolicy, var2512=r10, var533=java.lang.SecurityException, var2760=$r11, var844=freemarker.log.Logger, var495=$r13, var1564=$r12, var2739=$r15, var262=$r14, var3118=$r16, var3480=$r17, var2642=java.lang.Throwable}
; {freemarker.ext.beans.ClassIntrospector=var2922, r3=var239, java.util.Map=var916, r4=var3581, r0=var1856, freemarker.ext.beans.ClassMemberAccessPolicy=var3393, r10=var2512, java.lang.SecurityException=var533, $r11=var2760, freemarker.log.Logger=var844, $r13=var495, $r12=var1564, $r15=var2739, $r14=var262, $r16=var3118, $r17=var3480, java.lang.Throwable=var2642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: freemarker.ext.beans.ClassIntrospector;	r4 := @parameter0: java.util.Map;	r0 := @parameter1: java.lang.Class;	r10 := @parameter2: freemarker.ext.beans.ClassMemberAccessPolicy;	$r11 := @caughtexception;	$r13 = <freemarker.ext.beans.ClassIntrospector: freemarker.log.Logger LOG>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t discover constructors for class ");	$r14 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r13.<freemarker.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r17, $r11);	return
;block_num 3