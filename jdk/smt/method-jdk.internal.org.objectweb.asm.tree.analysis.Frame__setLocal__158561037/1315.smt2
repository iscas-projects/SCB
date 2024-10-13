(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1008 0)
(declare-sort var2274 0)
(declare-sort var3255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locals/-629139711 (var1008) Int)
(declare-fun var3255-init () var3255)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3255 String) void)
(declare-const null-var1008 var1008)
(declare-const null-Int Int)
(declare-const null-var2274 var2274)
(declare-const var3466 var1008) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.Frame 
(assert (not (= var3466 null-var1008)))
(declare-const var1068 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1068 null-Int)))
(declare-const var2889 var2274) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.tree.analysis.Value 
(assert (not (= var2889 null-var2274)))
(define-const var2827 Int (locals/-629139711 var3466)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int locals> 
 ; Statement: if i0 < $i1 goto $r2 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: jdk.internal.org.objectweb.asm.tree.analysis.Value[] values> 
(assert (not (< var1068 var2827))) ; Negate: Cond: i0 < $i1  
(define-const var2118 var3255 var3255-init) ; Statement: $r3 = new java.lang.IndexOutOfBoundsException 
(define-const var3336 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3336)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3336!1 String)
(assert (= var3336!1 ""))
(assert true)
(define-const var2070 String (append/672562846 var3336!1 "Trying to access an inexistant local variable ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Trying to access an inexistant local variable ") 
(declare-const var3336!2 String)
(assert (= var3336!2 (str.++ var3336!1 "Trying to access an inexistant local variable ")))
(assert true)
(define-const var3580 String (append/-1001720160 var2070 var1068)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2070!1 String)
(assert (str.prefixof var2070 var2070!1))
(assert true)
(define-const var2601 String (toString/-2075883882 var3580)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2118 var2601)) ; Statement: specialinvoke $r3.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var2118!1 var3255)
(declare-const var2601!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {locals/-629139711=([jdk.internal.org.objectweb.asm.tree.analysis.Frame], int), var3255-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1008=jdk.internal.org.objectweb.asm.tree.analysis.Frame, var3466=r0, var1068=i0, var2274=jdk.internal.org.objectweb.asm.tree.analysis.Value, var2889=r1, var2827=$i1, var3255=java.lang.IndexOutOfBoundsException, var2118=$r3, var3336=$r4, var2070=$r5, var3580=$r6, var2601=$r7}
; {jdk.internal.org.objectweb.asm.tree.analysis.Frame=var1008, r0=var3466, i0=var1068, jdk.internal.org.objectweb.asm.tree.analysis.Value=var2274, r1=var2889, $i1=var2827, java.lang.IndexOutOfBoundsException=var3255, $r3=var2118, $r4=var3336, $r5=var2070, $r6=var3580, $r7=var2601}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.Frame;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.tree.analysis.Value;	$i1 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int locals>;	if i0 < $i1 goto $r2 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: jdk.internal.org.objectweb.asm.tree.analysis.Value[] values>;	$r3 = new java.lang.IndexOutOfBoundsException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Trying to access an inexistant local variable ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2