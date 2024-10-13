(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort var1773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1773-init () var1773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1773 String) void)
(declare-const null-var108 var108)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3001 var108) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2InputStream 
(assert (not (= var3001 null-var108)))
(declare-const var767 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var767 null-__Array__Int__Int__)))
(declare-const var1352 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1352 null-Int)))
(declare-const var3941 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3941 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var1352 0))) ; Negate: Cond: i0 >= 0  
(define-const var3077 var1773 var1773-init) ; Statement: $r27 = new java.lang.IndexOutOfBoundsException 
(define-const var1171 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1171)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1171!1 String)
(assert (= var1171!1 ""))
(assert true)
(define-const var1396 String (append/672562846 var1171!1 "offs(")) ; Statement: $r22 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offs(") 
(declare-const var1171!2 String)
(assert (= var1171!2 (str.++ var1171!1 "offs(")))
(assert true)
(define-const var488 String (append/-1001720160 var1396 var1352)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1396!1 String)
(assert (str.prefixof var1396 var1396!1))
(assert true)
(define-const var2730 String (append/672562846 var488 ") < 0.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") < 0.") 
(declare-const var488!1 String)
(assert (= var488!1 (str.++ var488 ") < 0.")))
(assert true)
(define-const var3540 String (toString/-2075883882 var2730)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3077 var3540)) ; Statement: specialinvoke $r27.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r25) 

(declare-const var3077!1 var1773)
(declare-const var3540!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var1773-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var108=com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2InputStream, var3001=r1, var767=r0, var1352=i0, var3941=i1, var1773=java.lang.IndexOutOfBoundsException, var3077=$r27, var1171=$r26, var1396=$r22, var488=$r23, var2730=$r24, var3540=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2InputStream=var108, r1=var3001, r0=var767, i0=var1352, i1=var3941, java.lang.IndexOutOfBoundsException=var1773, $r27=var3077, $r26=var1171, $r22=var1396, $r23=var488, $r24=var2730, $r25=var3540}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2InputStream;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	$r27 = new java.lang.IndexOutOfBoundsException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offs(");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") < 0.");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r25);	throw $r27
;block_num 2