(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1652 0)
(declare-sort var128 0)
(declare-sort var2045 0)
(declare-sort var93 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var93-init () var93)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2045) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var93 String) void)
(declare-const null-var1652 var1652)
(declare-const null-var128 var128)
(declare-const null-var2045 var2045)
(declare-const var2132 var1652) ; Statement: r6 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType 
(assert (not (= var2132 null-var1652)))
(declare-const var2509 var128) ; Statement: r7 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var2509 null-var128)))
(declare-const var3689 var2045) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3689 null-var2045)))
(define-const var1615 var93 var93-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2270 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2270)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2270!1 String)
(assert (= var2270!1 ""))
(assert true)
(define-const var3506 String (append/672562846 var2270!1 "ldc ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ldc ") 
(declare-const var2270!2 String)
(assert (= var2270!2 (str.++ var2270!1 "ldc ")))
(assert true)
(define-const var824 String (append/-1031950772 var3506 var3689)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3506!1 String)
(assert (str.prefixof var3506 var3506!1))
(assert true)
(define-const var1926 String (toString/-2075883882 var824)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1615 var1926)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5) 

(declare-const var1615!1 var93)
(declare-const var1926!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var93-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1652=jdk.nashorn.internal.codegen.types.Type$ValueLessType, var2132=r6, var128=jdk.internal.org.objectweb.asm.MethodVisitor, var2509=r7, var2045=java.lang.Object, var3689=r2, var93=java.lang.UnsupportedOperationException, var1615=$r0, var2270=$r1, var3506=$r3, var824=$r4, var1926=$r5}
; {jdk.nashorn.internal.codegen.types.Type$ValueLessType=var1652, r6=var2132, jdk.internal.org.objectweb.asm.MethodVisitor=var128, r7=var2509, java.lang.Object=var2045, r2=var3689, java.lang.UnsupportedOperationException=var93, $r0=var1615, $r1=var2270, $r3=var3506, $r4=var824, $r5=var1926}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: jdk.nashorn.internal.codegen.types.Type$ValueLessType;	r7 := @parameter0: jdk.internal.org.objectweb.asm.MethodVisitor;	r2 := @parameter1: java.lang.Object;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ldc ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1