(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var375 0)
(declare-sort var2466 0)
(declare-sort var386 0)
(declare-sort var3449 0)
(declare-sort var3158 0)
(declare-sort var939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun impl/55375992 (var375) var3449)
(declare-fun formalArguments/1377009226 (var3449) var3158)
(declare-fun var939-init () var939)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var939 String) void)
(declare-const null-var375 var375)
(declare-const null-String String)
(declare-const null-var386 var386)
(declare-const null-var3158 var3158)
(declare-const var2372 var375) ; Statement: r0 := @this: org.stringtemplate.v4.ST 
(assert (not (= var2372 null-var375)))
(declare-const var623 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var623 null-String)))
(declare-const var2062 var386) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var2062 null-var386)))
(define-const var1443 var3449 (impl/55375992 var2372)) ; Statement: $r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1739 var3158 (formalArguments/1377009226 var1443)) ; Statement: $r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert (not (not (= var1739 null-var3158)))) ; Negate: Cond: $r2 != null  
(define-const var3106 var939 var939-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var1118 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!1 String)
(assert (= var1118!1 ""))
(assert true)
(define-const var3344 String (append/672562846 var1118!1 "no such attribute: ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such attribute: ") 
(declare-const var1118!2 String)
(assert (= var1118!2 (str.++ var1118!1 "no such attribute: ")))
(assert true)
(define-const var522 String (append/672562846 var3344 var623)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3344!1 String)
(assert (= var3344!1 (str.++ var3344 var623)))
(assert true)
(define-const var3910 String (toString/-2075883882 var522)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3106 var3910)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var3106!1 var939)
(declare-const var3910!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), var939-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var375=org.stringtemplate.v4.ST, var2372=r0, var623=r4, var2466=null_type, var386=java.lang.Object, var2062=r8, var3449=org.stringtemplate.v4.compiler.CompiledST, var1443=$r1, var3158=java.util.Map, var1739=$r2, var939=java.lang.IllegalArgumentException, var3106=$r15, var1118=$r16, var3344=$r17, var522=$r18, var3910=$r19}
; {org.stringtemplate.v4.ST=var375, r0=var2372, r4=var623, null_type=var2466, java.lang.Object=var386, r8=var2062, org.stringtemplate.v4.compiler.CompiledST=var3449, $r1=var1443, java.util.Map=var3158, $r2=var1739, java.lang.IllegalArgumentException=var939, $r15=var3106, $r16=var1118, $r17=var3344, $r18=var522, $r19=var3910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.ST;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.Object;	$r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r15 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such attribute: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r15
;block_num 2