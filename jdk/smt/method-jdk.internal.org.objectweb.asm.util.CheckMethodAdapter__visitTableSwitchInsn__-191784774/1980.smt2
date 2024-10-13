(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var361 0)
(declare-sort var2535 0)
(declare-sort var2495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var361) void)
(declare-fun checkEndCode/-651668869 (var361) void)
(declare-fun var2495-init () var2495)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2495 String) void)
(declare-const null-var361 var361)
(declare-const null-Int Int)
(declare-const null-var2535 var2535)
(declare-const null-__Array__Int__var2535__ (Array Int var2535))
(declare-const var255 var361) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var255 null-var361)))
(declare-const var1702 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1702 null-Int)))
(declare-const var3347 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3347 null-Int)))
(declare-const var1835 var2535) ; Statement: r1 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1835 null-var2535)))
(declare-const var276 (Array Int var2535)) ; Statement: r2 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var276 null-__Array__Int__var2535__)))
(assert true)
;(assert (checkStartCode/-1084876908 var255)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var255!1 var361)
(assert true)
;(assert (checkEndCode/-651668869 var255!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var255!2 var361)
 ; Statement: if i0 >= i1 goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkLabel(jdk.internal.org.objectweb.asm.Label,boolean,java.lang.String)>(r1, 0, "default label") 
(assert (not (>= var3347 var1702))) ; Negate: Cond: i0 >= i1  
(define-const var2787 var2495 var2495-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var594 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var594)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var594!1 String)
(assert (= var594!1 ""))
(assert true)
(define-const var3863 String (append/672562846 var594!1 "Max = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Max = ") 
(declare-const var594!2 String)
(assert (= var594!2 (str.++ var594!1 "Max = ")))
(assert true)
(define-const var2901 String (append/-1001720160 var3863 var3347)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3863!1 String)
(assert (str.prefixof var3863 var3863!1))
(assert true)
(define-const var7 String (append/672562846 var2901 " must be greater than or equal to min = ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be greater than or equal to min = ") 
(declare-const var2901!1 String)
(assert (= var2901!1 (str.++ var2901 " must be greater than or equal to min = ")))
(assert true)
(define-const var3771 String (append/-1001720160 var7 var1702)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var7!1 String)
(assert (str.prefixof var7 var7!1))
(assert true)
(define-const var71 String (toString/-2075883882 var3771)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2787 var71)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var2787!1 var2495)
(declare-const var71!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var2495-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var361=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var255=r0, var1702=i1, var3347=i0, var2535=jdk.internal.org.objectweb.asm.Label, var1835=r1, var276=r2, var2495=java.lang.IllegalArgumentException, var2787=$r12, var594=$r13, var3863=$r14, var2901=$r15, var7=$r16, var3771=$r17, var71=$r18}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var361, r0=var255, i1=var1702, i0=var3347, jdk.internal.org.objectweb.asm.Label=var2535, r1=var1835, r2=var276, java.lang.IllegalArgumentException=var2495, $r12=var2787, $r13=var594, $r14=var3863, $r15=var2901, $r16=var7, $r17=var3771, $r18=var71}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i1 := @parameter0: int;	i0 := @parameter1: int;	r1 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r2 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	if i0 >= i1 goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkLabel(jdk.internal.org.objectweb.asm.Label,boolean,java.lang.String)>(r1, 0, "default label");	$r12 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Max = ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be greater than or equal to min = ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r12
;block_num 2