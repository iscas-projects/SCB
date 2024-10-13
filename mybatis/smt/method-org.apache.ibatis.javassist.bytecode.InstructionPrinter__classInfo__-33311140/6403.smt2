(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getClassInfo/1878292087 (var597 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var597 var597)
(declare-const null-Int Int)
(declare-const var29 var597) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var29 null-var597)))
(declare-const var1258 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1258 null-Int)))
(define-const var2554 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2554)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2554!1 String)
(assert (= var2554!1 ""))
(assert true)
(define-const var3167 String (append/672562846 var2554!1 "#")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2554!2 String)
(assert (= var2554!2 (str.++ var2554!1 "#")))
(assert true)
(define-const var23 String (append/-1001720160 var3167 var1258)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3167!1 String)
(assert (str.prefixof var3167 var3167!1))
(assert true)
(define-const var1168 String (append/672562846 var23 " = Class ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = Class ") 
(declare-const var23!1 String)
(assert (= var23!1 (str.++ var23 " = Class ")))
(assert true)
(define-const var169 String (getClassInfo/1878292087 var29 var1258)) ; Statement: $r4 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i0) 
(assert true)
(define-const var2813 String (append/672562846 var1168 var169)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1168!1 String)
(assert (= var1168!1 (str.++ var1168 var169)))
(assert true)
(define-const var1040 String (toString/-2075883882 var2813)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getClassInfo/1878292087=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var597=org.apache.ibatis.javassist.bytecode.ConstPool, var29=r3, var1258=i0, var2554=$r0, var3167=$r1, var23=$r2, var1168=$r5, var169=$r4, var2813=$r6, var1040=$r7}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var597, r3=var29, i0=var1258, $r0=var2554, $r1=var3167, $r2=var23, $r5=var1168, $r4=var169, $r6=var2813, $r7=var1040}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = Class ");	$r4 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1