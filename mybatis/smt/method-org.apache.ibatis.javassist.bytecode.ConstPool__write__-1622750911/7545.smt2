(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var537 0)
(declare-sort var2502 0)
(declare-sort var2534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun numOfItems/-481220850 (var537) Int)
(declare-fun var2534-init () var2534)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2534 String) void)
(declare-const null-var537 var537)
(declare-const null-var2502 var2502)
(declare-const var484 var537) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var484 null-var537)))
(declare-const var1033 var2502) ; Statement: r6 := @parameter0: java.io.DataOutputStream 
(assert (not (= var1033 null-var2502)))
(define-const var3193 Int (numOfItems/-481220850 var484)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int numOfItems> 
 ; Statement: if $i0 < 0 goto $r10 = new java.io.IOException 
(assert (< var3193 0)) ; Cond: $i0 < 0 
(define-const var1098 var2534 var2534-init) ; Statement: $r10 = new java.io.IOException 
(define-const var989 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var989)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var989!1 String)
(assert (= var989!1 ""))
(assert true)
(define-const var2061 String (append/672562846 var989!1 "too many constant pool items ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("too many constant pool items ") 
(declare-const var989!2 String)
(assert (= var989!2 (str.++ var989!1 "too many constant pool items ")))
(define-const var2906 Int (numOfItems/-481220850 var484)) ; Statement: $i1 = r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int numOfItems> 
(assert true)
(define-const var482 String (append/-1001720160 var2061 var2906)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2061!1 String)
(assert (str.prefixof var2061 var2061!1))
(assert true)
(define-const var3764 String (toString/-2075883882 var482)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1098 var3764)) ; Statement: specialinvoke $r10.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var1098!1 var2534)
(declare-const var3764!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {numOfItems/-481220850=([org.apache.ibatis.javassist.bytecode.ConstPool], int), var2534-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var537=org.apache.ibatis.javassist.bytecode.ConstPool, var484=r0, var2502=java.io.DataOutputStream, var1033=r6, var3193=$i0, var2534=java.io.IOException, var1098=$r10, var989=$r9, var2061=$r3, var2906=$i1, var482=$r4, var3764=$r5}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var537, r0=var484, java.io.DataOutputStream=var2502, r6=var1033, $i0=var3193, java.io.IOException=var2534, $r10=var1098, $r9=var989, $r3=var2061, $i1=var2906, $r4=var482, $r5=var3764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.ConstPool;	r6 := @parameter0: java.io.DataOutputStream;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int numOfItems>;	if $i0 < 0 goto $r10 = new java.io.IOException;	$r10 = new java.io.IOException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("too many constant pool items ");	$i1 = r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int numOfItems>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r10
;block_num 2