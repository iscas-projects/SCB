(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1118 0)
(declare-sort var3767 0)
(declare-sort var3890 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3767_requireNonNull/1378936425 (var3890 String) var3890)
(declare-fun cast-from-__Array__Int__Int__-to-var3890 ((Array Int Int)) var3890)
(declare-fun var1476-init () var1476)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1476 String) void)
(declare-const null-var1118 var1118)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2766 var1118) ; Statement: r10 := @this: org.apache.commons.io.output.AppendableWriter 
(assert (not (= var2766 null-var1118)))
(declare-const var1516 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var1516 null-__Array__Int__Int__)))
(declare-const var1666 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1666 null-Int)))
(declare-const var1998 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1998 null-Int)))
;(assert (var3767_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var3890 var1516) "Character array is missing")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Character array is missing") 

(declare-const var1516!1 (Array Int Int))
(declare-const var3443 String)
 ; Statement: if i0 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (< var1998 0)) ; Cond: i0 < 0 
(define-const var142 var1476 var1476-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var978 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var978)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var978!1 String)
(assert (= var978!1 ""))
(assert true)
(define-const var3812 String (append/672562846 var978!1 "Array Size=")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=") 
(declare-const var978!2 String)
(assert (= var978!2 (str.++ var978!1 "Array Size=")))
(define-const var2504 Int (getLength-Arr-Int-1 var1516!1)) ; Statement: $i1 = lengthof r0 
(assert true)
(define-const var1353 String (append/-1001720160 var3812 var2504)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3812!1 String)
(assert (str.prefixof var3812 var3812!1))
(assert true)
(define-const var2661 String (append/672562846 var1353 ", offset=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=") 
(declare-const var1353!1 String)
(assert (= var1353!1 (str.++ var1353 ", offset=")))
(assert true)
(define-const var2869 String (append/-1001720160 var2661 var1666)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2661!1 String)
(assert (str.prefixof var2661 var2661!1))
(assert true)
(define-const var3656 String (append/672562846 var2869 ", length=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=") 
(declare-const var2869!1 String)
(assert (= var2869!1 (str.++ var2869 ", length=")))
(assert true)
(define-const var2501 String (append/-1001720160 var3656 var1998)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3656!1 String)
(assert (str.prefixof var3656 var3656!1))
(assert true)
(define-const var83 String (toString/-2075883882 var2501)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var142 var83)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9) 

(declare-const var142!1 var1476)
(declare-const var83!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3767_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var3890=([char[]], java.lang.Object), var1476-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-Int-1=([char[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1118=org.apache.commons.io.output.AppendableWriter, var2766=r10, var1516=r0, var1666=i2, var1998=i0, var3767=java.util.Objects, var3890=java.lang.Object, var3443="Character array is missing", var1476=java.lang.IndexOutOfBoundsException, var142=$r1, var978=$r2, var3812=$r3, var2504=$i1, var1353=$r4, var2661=$r5, var2869=$r6, var3656=$r7, var2501=$r8, var83=$r9}
; {org.apache.commons.io.output.AppendableWriter=var1118, r10=var2766, r0=var1516, i2=var1666, i0=var1998, java.util.Objects=var3767, java.lang.Object=var3890, "Character array is missing"=var3443, java.lang.IndexOutOfBoundsException=var1476, $r1=var142, $r2=var978, $r3=var3812, $i1=var2504, $r4=var1353, $r5=var2661, $r6=var2869, $r7=var3656, $r8=var2501, $r9=var83}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.commons.io.output.AppendableWriter;	r0 := @parameter0: char[];	i2 := @parameter1: int;	i0 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Character array is missing");	if i0 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=");	$i1 = lengthof r0;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9);	throw $r1
;block_num 2