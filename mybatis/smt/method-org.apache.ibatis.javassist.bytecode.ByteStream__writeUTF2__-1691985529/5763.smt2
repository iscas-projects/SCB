(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3783 0)
(declare-sort var1355 0)
(declare-sort var3001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3001-init () var3001)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3001 String) void)
(declare-const null-var3783 var3783)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1548 var3783) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.ByteStream 
(assert (not (= var1548 null-var3783)))
(declare-const var2770 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2770 null-String)))
(declare-const var3678 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3678 null-Int)))
(declare-const var989 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var989 null-Int)))
(define-const var3078 Int var3678) ; Statement: i32 = i0 
(define-const var628 Int var989) ; Statement: i33 = i1 
(assert true) ; Non Conditional
 ; Statement: if i33 >= i0 goto $i41 = (int) 65535 
(assert (>= var628 var3678)) ; Cond: i33 >= i0 
(define-const var1159 Int (cast-from-Int-to-Int 65535)) ; Statement: $i41 = (int) 65535 
 ; Statement: if i32 <= $i41 goto $i2 = i32 + 2 
(assert (not (<= var3078 var1159))) ; Negate: Cond: i32 <= $i41  
(define-const var2098 var3001 var3001-init) ; Statement: $r11 = new java.lang.RuntimeException 
(define-const var1216 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1216)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1216!1 String)
(assert (= var1216!1 ""))
(assert true)
(define-const var3750 String (append/672562846 var1216!1 "encoded string too long: ")) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("encoded string too long: ") 
(declare-const var1216!2 String)
(assert (= var1216!2 (str.++ var1216!1 "encoded string too long: ")))
(assert true)
(define-const var3149 String (append/-1001720160 var3750 var3678)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3750!1 String)
(assert (str.prefixof var3750 var3750!1))
(assert true)
(define-const var534 String (append/-1001720160 var3149 var3078)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i32) 
(declare-const var3149!1 String)
(assert (str.prefixof var3149 var3149!1))
(assert true)
(define-const var1902 String (append/672562846 var534 " bytes")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes") 
(declare-const var534!1 String)
(assert (= var534!1 (str.++ var534 " bytes")))
(assert true)
(define-const var1567 String (toString/-2075883882 var1902)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2098 var1567)) ; Statement: specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8) 

(declare-const var2098!1 var3001)
(declare-const var1567!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var3001-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3783=org.apache.ibatis.javassist.bytecode.ByteStream, var1548=r0, var2770=r1, var1355=null_type, var3678=i0, var989=i1, var3078=i32, var628=i33, var1159=$i41, var3001=java.lang.RuntimeException, var2098=$r11, var1216=$r10, var3750=$r4, var3149=$r5, var534=$r6, var1902=$r7, var1567=$r8}
; {org.apache.ibatis.javassist.bytecode.ByteStream=var3783, r0=var1548, r1=var2770, null_type=var1355, i0=var3678, i1=var989, i32=var3078, i33=var628, $i41=var1159, java.lang.RuntimeException=var3001, $r11=var2098, $r10=var1216, $r4=var3750, $r5=var3149, $r6=var534, $r7=var1902, $r8=var1567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.ByteStream;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i32 = i0;	i33 = i1;	if i33 >= i0 goto $i41 = (int) 65535;	$i41 = (int) 65535;	if i32 <= $i41 goto $i2 = i32 + 2;	$r11 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("encoded string too long: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i32);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8);	throw $r11
;block_num 4