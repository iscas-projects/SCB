(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var1989 0)
(declare-sort var3387 0)
(declare-sort var676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3387-init () var3387)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var676) String)
(declare-fun cast-from-var1989-to-var676 (var1989) var676)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1465387217 (var3387 String var676) void)
(declare-const null-var1947 var1947)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1989 var1989)
(declare-const var2733 var1947) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var2733 null-var1947)))
(declare-const var3415 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3415 null-Int)))
(declare-const var117 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var117 null-__Array__Int__Int__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1589 var1989) ; Statement: $r2 := @caughtexception 
(assert (not (= var1589 null-var1989)))
(define-const var3475 var3387 var3387-init) ; Statement: $r10 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2567 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2567)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2567!1 String)
(assert (= var2567!1 ""))
(assert true)
(define-const var3381 String (append/672562846 var2567!1 "inconsistent stack height ")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inconsistent stack height ") 
(declare-const var2567!2 String)
(assert (= var2567!2 (str.++ var2567!1 "inconsistent stack height ")))
(assert true)
(define-const var784 String (getMessage/849299655 (cast-from-var1989-to-var676 var1589))) ; Statement: $r5 = virtualinvoke $r2.<java.lang.ArrayIndexOutOfBoundsException: java.lang.String getMessage()>() 
(assert true)
(define-const var3852 String (append/672562846 var3381 var784)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3381!1 String)
(assert (= var3381!1 (str.++ var3381 var784)))
(assert true)
(define-const var1714 String (toString/-2075883882 var3852)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1465387217 var3475 var1714 (cast-from-var1989-to-var676 var1589))) ; Statement: specialinvoke $r10.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var3475!1 var3387)
(declare-const var1714!1 String)
(declare-const var1589!1 var1989)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3387-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1989-to-var676=([java.lang.ArrayIndexOutOfBoundsException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1465387217=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String, java.lang.Throwable], void)}
; {var1947=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var2733=r1, var3415=i0, var117=r0, var1989=java.lang.ArrayIndexOutOfBoundsException, var1589=$r2, var3387=org.apache.ibatis.javassist.bytecode.BadBytecode, var3475=$r10, var2567=$r9, var3381=$r6, var676=java.lang.Throwable, var784=$r5, var3852=$r7, var1714=$r8}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var1947, r1=var2733, i0=var3415, r0=var117, java.lang.ArrayIndexOutOfBoundsException=var1989, $r2=var1589, org.apache.ibatis.javassist.bytecode.BadBytecode=var3387, $r10=var3475, $r9=var2567, $r6=var3381, java.lang.Throwable=var676, $r5=var784, $r7=var3852, $r8=var1714}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	i0 := @parameter0: int;	r0 := @parameter1: byte[];	$r2 := @caughtexception;	$r10 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inconsistent stack height ");	$r5 = virtualinvoke $r2.<java.lang.ArrayIndexOutOfBoundsException: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r10
;block_num 2