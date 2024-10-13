(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1371 0)
(declare-sort var1022 0)
(declare-sort var830 0)
(declare-sort var2143 0)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var1371) void)
(declare-fun checkEndCode/-651668869 (var1371) void)
(declare-fun version/-1612590968 (var1371) Int)
(declare-fun var1371_checkMethodIdentifier/1458003468 (Int String String) void)
(declare-fun var1371_checkMethodDesc/52528362 (String) void)
(declare-fun getTag/748741772 (var830) Int)
(declare-fun var1341-init () var1341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1341 String) void)
(declare-const null-var1371 var1371)
(declare-const null-String String)
(declare-const null-var830 var830)
(declare-const null-__Array__Int__var2143__ (Array Int var2143))
(declare-const var2438 var1371) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var2438 null-var1371)))
(declare-const var760 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var760 null-String)))
(declare-const var3643 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3643 null-String)))
(declare-const var1664 var830) ; Statement: r3 := @parameter2: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var1664 null-var830)))
(declare-const var1896 (Array Int var2143)) ; Statement: r4 := @parameter3: java.lang.Object[] 
(assert (not (= var1896 null-__Array__Int__var2143__)))
(assert true)
;(assert (checkStartCode/-1084876908 var2438)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var2438!1 var1371)
(assert true)
;(assert (checkEndCode/-651668869 var2438!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var2438!2 var1371)
(define-const var2498 Int (version/-1612590968 var2438!2)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version> 
;(assert (var1371_checkMethodIdentifier/1458003468 var2498 var760 "name")) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodIdentifier(int,java.lang.String,java.lang.String)>($i0, r1, "name") 

(declare-const var2498!1 Int)
(declare-const var760!1 String)
(declare-const var175 String)
;(assert (var1371_checkMethodDesc/52528362 var3643)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r2) 

(declare-const var3643!1 String)
(assert true)
(define-const var2972 Int (getTag/748741772 var1664)) ; Statement: $i1 = virtualinvoke r3.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: if $i1 == 6 goto i6 = 0 
(assert (not (= var2972 6))) ; Negate: Cond: $i1 == 6  
(assert true)
(define-const var1397 Int (getTag/748741772 var1664)) ; Statement: $i4 = virtualinvoke r3.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: if $i4 == 8 goto i6 = 0 
(assert (not (= var1397 8))) ; Negate: Cond: $i4 == 8  
(define-const var1109 var1341 var1341-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2854 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2854)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2854!1 String)
(assert (= var2854!1 ""))
(assert true)
(define-const var1023 String (append/672562846 var2854!1 "invalid handle tag ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid handle tag ") 
(declare-const var2854!2 String)
(assert (= var2854!2 (str.++ var2854!1 "invalid handle tag ")))
(assert true)
(define-const var999 Int (getTag/748741772 var1664)) ; Statement: $i5 = virtualinvoke r3.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
(assert true)
(define-const var1674 String (append/-1001720160 var1023 var999)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1023!1 String)
(assert (str.prefixof var1023 var1023!1))
(assert true)
(define-const var313 String (toString/-2075883882 var1674)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1109 var313)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1109!1 var1341)
(declare-const var313!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), version/-1612590968=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], int), var1371_checkMethodIdentifier/1458003468=([int, java.lang.String, java.lang.String], void), var1371_checkMethodDesc/52528362=([java.lang.String], void), getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), var1341-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1371=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var2438=r0, var760=r1, var1022=null_type, var3643=r2, var830=jdk.internal.org.objectweb.asm.Handle, var1664=r3, var2143=java.lang.Object, var1896=r4, var2498=$i0, var175="name", var2972=$i1, var1397=$i4, var1341=java.lang.IllegalArgumentException, var1109=$r6, var2854=$r7, var1023=$r8, var999=$i5, var1674=$r9, var313=$r10}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var1371, r0=var2438, r1=var760, null_type=var1022, r2=var3643, jdk.internal.org.objectweb.asm.Handle=var830, r3=var1664, java.lang.Object=var2143, r4=var1896, $i0=var2498, "name"=var175, $i1=var2972, $i4=var1397, java.lang.IllegalArgumentException=var1341, $r6=var1109, $r7=var2854, $r8=var1023, $i5=var999, $r9=var1674, $r10=var313}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: jdk.internal.org.objectweb.asm.Handle;	r4 := @parameter3: java.lang.Object[];	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	$i0 = r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int version>;	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodIdentifier(int,java.lang.String,java.lang.String)>($i0, r1, "name");	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkMethodDesc(java.lang.String)>(r2);	$i1 = virtualinvoke r3.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	if $i1 == 6 goto i6 = 0;	$i4 = virtualinvoke r3.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	if $i4 == 8 goto i6 = 0;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid handle tag ");	$i5 = virtualinvoke r3.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 3