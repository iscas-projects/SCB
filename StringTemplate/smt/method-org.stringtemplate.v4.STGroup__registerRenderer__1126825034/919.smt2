(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var657 0)
(declare-sort var1432 0)
(declare-sort var3074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun var3074-init () var3074)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3074 String) void)
(declare-const null-var657 var657)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1432 var1432)
(declare-const null-Bool Bool)
(declare-const var620 var657) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var620 null-var657)))
(declare-const var1034 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1034 null-ClassObject)))
(declare-const var1811 var1432) ; Statement: r3 := @parameter1: org.stringtemplate.v4.AttributeRenderer 
(assert (not (= var1811 null-var1432)))
(declare-const var349 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var349 null-Bool)))
(assert true)
(define-const var3859 Bool (isPrimitive/-473230874 var1034)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.stringtemplate.v4.STGroup: java.util.Map renderers> 
(assert (not (= (ite var3859 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2706 var3074 var3074-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var2681 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2681)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2681!1 String)
(assert (= var2681!1 ""))
(assert true)
(define-const var2868 String (append/672562846 var2681!1 "can\u0027t register renderer for primitive type ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t register renderer for primitive type ") 
(declare-const var2681!2 String)
(assert (= var2681!2 (str.++ var2681!1 "can\u0027t register renderer for primitive type ")))
(assert true)
(define-const var2952 String (getSimpleName/-390194377 var1034)) ; Statement: $r13 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var545 String (append/672562846 var2868 var2952)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2868!1 String)
(assert (= var2868!1 (str.++ var2868 var2952)))
(assert true)
(define-const var2707 String (toString/-2075883882 var545)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2706 var2707)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var2706!1 var3074)
(declare-const var2707!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), var3074-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var657=org.stringtemplate.v4.STGroup, var620=r1, var1034=r0, var1432=org.stringtemplate.v4.AttributeRenderer, var1811=r3, var349=z1, var3859=$z0, var3074=java.lang.IllegalArgumentException, var2706=$r11, var2681=$r12, var2868=$r14, var2952=$r13, var545=$r15, var2707=$r16}
; {org.stringtemplate.v4.STGroup=var657, r1=var620, r0=var1034, org.stringtemplate.v4.AttributeRenderer=var1432, r3=var1811, z1=var349, $z0=var3859, java.lang.IllegalArgumentException=var3074, $r11=var2706, $r12=var2681, $r14=var2868, $r13=var2952, $r15=var545, $r16=var2707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: java.lang.Class;	r3 := @parameter1: org.stringtemplate.v4.AttributeRenderer;	z1 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r2 = r1.<org.stringtemplate.v4.STGroup: java.util.Map renderers>;	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t register renderer for primitive type ");	$r13 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2