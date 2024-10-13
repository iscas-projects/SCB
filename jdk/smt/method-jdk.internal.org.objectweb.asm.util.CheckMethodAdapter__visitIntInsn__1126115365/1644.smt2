(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2032 0)
(declare-sort var3016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var2032) void)
(declare-fun checkEndCode/-651668869 (var2032) void)
(declare-fun var2032_checkOpcode/1313284371 (Int Int) void)
(declare-fun var3016-init () var3016)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3016 String) void)
(declare-const null-var2032 var2032)
(declare-const null-Int Int)
(declare-const var1590 var2032) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var1590 null-var2032)))
(declare-const var1538 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1538 null-Int)))
(declare-const var3797 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3797 null-Int)))
(assert true)
;(assert (checkStartCode/-1084876908 var1590)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var1590!1 var2032)
(assert true)
;(assert (checkEndCode/-651668869 var1590!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var1590!2 var2032)
;(assert (var2032_checkOpcode/1313284371 var1538 1)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkOpcode(int,int)>(i0, 1) 

(declare-const var1538!1 Int)
(declare-const var3943 Int)
 ; Statement: lookupswitch(i0) {     case 16: goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkSignedByte(int,java.lang.String)>(i1, "Invalid operand");     case 17: goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkSignedShort(int,java.lang.String)>(i1, "Invalid operand");     default: goto if i1 < 4 goto $r1 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1538!1 17)) (and (not (= var1538!1 16)) true))) ; Intersect: Negate: Cond: i0 == 17   and Intersect: Negate: Cond: i0 == 16   and Non Conditional  
 ; Statement: if i1 < 4 goto $r1 = new java.lang.IllegalArgumentException 
(assert (< var3797 4)) ; Cond: i1 < 4 
(define-const var3754 var3016 var3016-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var3740 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3740)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3740!1 String)
(assert (= var3740!1 ""))
(assert true)
(define-const var765 String (append/672562846 var3740!1 "Invalid operand (must be an array type code T_...): ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid operand (must be an array type code T_...): ") 
(declare-const var3740!2 String)
(assert (= var3740!2 (str.++ var3740!1 "Invalid operand (must be an array type code T_...): ")))
(assert true)
(define-const var2293 String (append/-1001720160 var765 var3797)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var765!1 String)
(assert (str.prefixof var765 var765!1))
(assert true)
(define-const var1998 String (toString/-2075883882 var2293)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3754 var1998)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3754!1 var3016)
(declare-const var1998!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var2032_checkOpcode/1313284371=([int, int], void), var3016-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2032=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var1590=r0, var1538=i0, var3797=i1, var3943=1, var3016=java.lang.IllegalArgumentException, var3754=$r1, var3740=$r2, var765=$r3, var2293=$r4, var1998=$r5}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var2032, r0=var1590, i0=var1538, i1=var3797, 1=var3943, java.lang.IllegalArgumentException=var3016, $r1=var3754, $r2=var3740, $r3=var765, $r4=var2293, $r5=var1998}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	i1 := @parameter1: int;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkOpcode(int,int)>(i0, 1);	lookupswitch(i0) {     case 16: goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkSignedByte(int,java.lang.String)>(i1, "Invalid operand");     case 17: goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkSignedShort(int,java.lang.String)>(i1, "Invalid operand");     default: goto if i1 < 4 goto $r1 = new java.lang.IllegalArgumentException; };	if i1 < 4 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid operand (must be an array type code T_...): ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 3