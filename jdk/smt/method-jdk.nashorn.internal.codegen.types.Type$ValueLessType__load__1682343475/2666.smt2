(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3502 0)
(declare-sort var3471 0)
(declare-sort var3812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3812-init () var3812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3812 String) void)
(declare-const null-var3502 var3502)
(declare-const null-var3471 var3471)
(declare-const null-Int Int)
(declare-const var1056 var3502) ; Statement: r5 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType 
(assert (not (= var1056 null-var3502)))
(declare-const var1786 var3471) ; Statement: r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var1786 null-var3471)))
(declare-const var2711 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2711 null-Int)))
(define-const var229 var3812 var3812-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var400 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var400)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var400!1 String)
(assert (= var400!1 ""))
(assert true)
(define-const var14 String (append/672562846 var400!1 "load ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("load ") 
(declare-const var400!2 String)
(assert (= var400!2 (str.++ var400!1 "load ")))
(assert true)
(define-const var3754 String (append/-1001720160 var14 var2711)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var14!1 String)
(assert (str.prefixof var14 var14!1))
(assert true)
(define-const var1598 String (toString/-2075883882 var3754)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var229 var1598)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4) 

(declare-const var229!1 var3812)
(declare-const var1598!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3812-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3502=jdk.nashorn.internal.codegen.types.Type$ValueLessType, var1056=r5, var3471=jdk.internal.org.objectweb.asm.MethodVisitor, var1786=r6, var2711=i0, var3812=java.lang.UnsupportedOperationException, var229=$r0, var400=$r1, var14=$r2, var3754=$r3, var1598=$r4}
; {jdk.nashorn.internal.codegen.types.Type$ValueLessType=var3502, r5=var1056, jdk.internal.org.objectweb.asm.MethodVisitor=var3471, r6=var1786, i0=var2711, java.lang.UnsupportedOperationException=var3812, $r0=var229, $r1=var400, $r2=var14, $r3=var3754, $r4=var1598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType;	r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor;	i0 := @parameter1: int;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("load ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 1