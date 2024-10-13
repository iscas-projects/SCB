(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2673 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2437-init () var2437)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2437 String) void)
(declare-const null-var2673 var2673)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var914 var2673) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream 
(assert (not (= var914 null-var2673)))
(declare-const var614 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var614 null-__Array__Int__Int__)))
(declare-const var2008 Int) ; Statement: i7 := @parameter1: int 
(assert (not (= var2008 null-Int)))
(declare-const var3595 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3595 null-Int)))
 ; Statement: if i7 >= 0 goto (branch) 
(assert (not (>= var2008 0))) ; Negate: Cond: i7 >= 0  
(define-const var1658 var2437 var2437-init) ; Statement: $r27 = new java.lang.IndexOutOfBoundsException 
(define-const var3875 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3875)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3875!1 String)
(assert (= var3875!1 ""))
(assert true)
(define-const var2192 String (append/672562846 var3875!1 "offs(")) ; Statement: $r22 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offs(") 
(declare-const var3875!2 String)
(assert (= var3875!2 (str.++ var3875!1 "offs(")))
(assert true)
(define-const var2990 String (append/-1001720160 var2192 var2008)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var2192!1 String)
(assert (str.prefixof var2192 var2192!1))
(assert true)
(define-const var2588 String (append/672562846 var2990 ") < 0.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") < 0.") 
(declare-const var2990!1 String)
(assert (= var2990!1 (str.++ var2990 ") < 0.")))
(assert true)
(define-const var3926 String (toString/-2075883882 var2588)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var1658 var3926)) ; Statement: specialinvoke $r27.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r25) 

(declare-const var1658!1 var2437)
(declare-const var3926!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var2437-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2673=com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream, var914=r1, var614=r0, var2008=i7, var3595=i0, var2437=java.lang.IndexOutOfBoundsException, var1658=$r27, var3875=$r26, var2192=$r22, var2990=$r23, var2588=$r24, var3926=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream=var2673, r1=var914, r0=var614, i7=var2008, i0=var3595, java.lang.IndexOutOfBoundsException=var2437, $r27=var1658, $r26=var3875, $r22=var2192, $r23=var2990, $r24=var2588, $r25=var3926}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.bzip2.CBZip2OutputStream;	r0 := @parameter0: byte[];	i7 := @parameter1: int;	i0 := @parameter2: int;	if i7 >= 0 goto (branch);	$r27 = new java.lang.IndexOutOfBoundsException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offs(");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") < 0.");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r25);	throw $r27
;block_num 2