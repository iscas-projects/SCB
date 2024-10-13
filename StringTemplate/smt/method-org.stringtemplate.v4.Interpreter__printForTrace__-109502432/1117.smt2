(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2416 0)
(declare-sort var3587 0)
(declare-sort var2299 0)
(declare-sort var2278 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2299-to-var2278 (var2299) var2278)
(declare-fun impl/55375992 (var2278) var1911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1377009226 (var1911) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2416 var2416)
(declare-const null-String String)
(declare-const null-var3587 var3587)
(declare-const null-var2299 var2299)
(declare-const null-var1911 var1911)
(declare-const var3883 var2416) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3883 null-var2416)))
(declare-const var3438 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3438 null-String)))
(declare-const var3750 var3587) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var3750 null-var3587)))
(declare-const var1776 var2299) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var1776 null-var2299)))
(define-const var1676 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (not (= (ite var1676 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2559 var2278 (cast-from-var2299-to-var2278 var1776)) ; Statement: $r9 = (org.stringtemplate.v4.ST) r19 
(define-const var3556 var1911 (impl/55375992 var2559)) ; Statement: $r10 = $r9.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
 ; Statement: if $r10 != null goto $r11 = new java.lang.StringBuilder 
(assert (not (= var3556 null-var1911))) ; Cond: $r10 != null 
(define-const var3866 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3866)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3866!1 String)
(assert (= var3866!1 ""))
(assert true)
(define-const var2163 String (append/672562846 var3866!1 " ")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3866!2 String)
(assert (= var3866!2 (str.++ var3866!1 " ")))
(define-const var3253 var2278 (cast-from-var2299-to-var2278 var1776)) ; Statement: $r12 = (org.stringtemplate.v4.ST) r19 
(define-const var1508 var1911 (impl/55375992 var3253)) ; Statement: $r13 = $r12.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1829 String (name/1377009226 var1508)) ; Statement: $r14 = $r13.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var3730 String (append/672562846 var2163 var1829)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2163!1 String)
(assert (= var2163!1 (str.++ var2163 var1829)))
(assert true)
(define-const var1392 String (append/672562846 var3730 "()")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var3730!1 String)
(assert (= var3730!1 (str.++ var3730 "()")))
(assert true)
(define-const var598 String (toString/-2075883882 var1392)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3438 var598)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3438!1 String)
(assert (= var3438!1 (str.++ var3438 var598)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2299-to-var2278=([java.lang.Object], org.stringtemplate.v4.ST), impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2416=org.stringtemplate.v4.Interpreter, var3883=r0, var3438=r2, var3587=org.stringtemplate.v4.InstanceScope, var3750=r1, var2299=java.lang.Object, var1776=r19, var1676=$z0, var2278=org.stringtemplate.v4.ST, var2559=$r9, var1911=org.stringtemplate.v4.compiler.CompiledST, var3556=$r10, var3866=$r11, var2163=$r15, var3253=$r12, var1508=$r13, var1829=$r14, var3730=$r16, var1392=$r17, var598=$r18}
; {org.stringtemplate.v4.Interpreter=var2416, r0=var3883, r2=var3438, org.stringtemplate.v4.InstanceScope=var3587, r1=var3750, java.lang.Object=var2299, r19=var1776, $z0=var1676, org.stringtemplate.v4.ST=var2278, $r9=var2559, org.stringtemplate.v4.compiler.CompiledST=var1911, $r10=var3556, $r11=var3866, $r15=var2163, $r12=var3253, $r13=var1508, $r14=var1829, $r16=var3730, $r17=var1392, $r18=var598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$r9 = (org.stringtemplate.v4.ST) r19;	$r10 = $r9.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	if $r10 != null goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r12 = (org.stringtemplate.v4.ST) r19;	$r13 = $r12.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r14 = $r13.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	return
;block_num 4