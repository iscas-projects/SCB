(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var515 0)
(declare-sort var2119 0)
(declare-sort var611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var611-init () var611)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var611 String) void)
(declare-const null-var515 var515)
(declare-const null-var2119 var2119)
(declare-const null-Int Int)
(declare-const var1154 var515) ; Statement: r5 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType 
(assert (not (= var1154 null-var515)))
(declare-const var777 var2119) ; Statement: r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var777 null-var2119)))
(declare-const var1304 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1304 null-Int)))
(define-const var1700 var611 var611-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var3416 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3416)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3416!1 String)
(assert (= var3416!1 ""))
(assert true)
(define-const var867 String (append/672562846 var3416!1 "store ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("store ") 
(declare-const var3416!2 String)
(assert (= var3416!2 (str.++ var3416!1 "store ")))
(assert true)
(define-const var664 String (append/-1001720160 var867 var1304)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var867!1 String)
(assert (str.prefixof var867 var867!1))
(assert true)
(define-const var956 String (toString/-2075883882 var664)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1700 var956)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4) 

(declare-const var1700!1 var611)
(declare-const var956!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var611-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var515=jdk.nashorn.internal.codegen.types.Type$ValueLessType, var1154=r5, var2119=jdk.internal.org.objectweb.asm.MethodVisitor, var777=r6, var1304=i0, var611=java.lang.UnsupportedOperationException, var1700=$r0, var3416=$r1, var867=$r2, var664=$r3, var956=$r4}
; {jdk.nashorn.internal.codegen.types.Type$ValueLessType=var515, r5=var1154, jdk.internal.org.objectweb.asm.MethodVisitor=var2119, r6=var777, i0=var1304, java.lang.UnsupportedOperationException=var611, $r0=var1700, $r1=var3416, $r2=var867, $r3=var664, $r4=var956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType;	r6 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor;	i0 := @parameter1: int;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("store ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 1