(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getInterfaceMethodrefClassName/-37161157 (var900 Int) String)
(declare-fun getInterfaceMethodrefName/1585860587 (var900 Int) String)
(declare-fun getInterfaceMethodrefType/911009114 (var900 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var900 var900)
(declare-const null-Int Int)
(declare-const var81 var900) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var81 null-var900)))
(declare-const var2787 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2787 null-Int)))
(define-const var1110 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1110)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1110!1 String)
(assert (= var1110!1 ""))
(assert true)
(define-const var946 String (append/672562846 var1110!1 "#")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1110!2 String)
(assert (= var1110!2 (str.++ var1110!1 "#")))
(assert true)
(define-const var3356 String (append/-1001720160 var946 var2787)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var946!1 String)
(assert (str.prefixof var946 var946!1))
(assert true)
(define-const var2716 String (append/672562846 var3356 " = Method ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = Method ") 
(declare-const var3356!1 String)
(assert (= var3356!1 (str.++ var3356 " = Method ")))
(assert true)
(define-const var3800 String (getInterfaceMethodrefClassName/-37161157 var81 var2787)) ; Statement: $r4 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefClassName(int)>(i0) 
(assert true)
(define-const var3911 String (append/672562846 var2716 var3800)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2716!1 String)
(assert (= var2716!1 (str.++ var2716 var3800)))
(assert true)
(define-const var1233 String (append/672562846 var3911 ".")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3911!1 String)
(assert (= var3911!1 (str.++ var3911 ".")))
(assert true)
(define-const var1097 String (getInterfaceMethodrefName/1585860587 var81 var2787)) ; Statement: $r7 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefName(int)>(i0) 
(assert true)
(define-const var2378 String (append/672562846 var1233 var1097)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1233!1 String)
(assert (= var1233!1 (str.++ var1233 var1097)))
(assert true)
(define-const var2552 String (append/672562846 var2378 "(")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2378!1 String)
(assert (= var2378!1 (str.++ var2378 "(")))
(assert true)
(define-const var2728 String (getInterfaceMethodrefType/911009114 var81 var2787)) ; Statement: $r10 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefType(int)>(i0) 
(assert true)
(define-const var2451 String (append/672562846 var2552 var2728)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2552!1 String)
(assert (= var2552!1 (str.++ var2552 var2728)))
(assert true)
(define-const var3004 String (append/672562846 var2451 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2451!1 String)
(assert (= var2451!1 (str.++ var2451 ")")))
(assert true)
(define-const var869 String (toString/-2075883882 var3004)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getInterfaceMethodrefClassName/-37161157=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), getInterfaceMethodrefName/1585860587=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), getInterfaceMethodrefType/911009114=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var900=org.apache.ibatis.javassist.bytecode.ConstPool, var81=r3, var2787=i0, var1110=$r0, var946=$r1, var3356=$r2, var2716=$r5, var3800=$r4, var3911=$r6, var1233=$r8, var1097=$r7, var2378=$r9, var2552=$r11, var2728=$r10, var2451=$r12, var3004=$r13, var869=$r14}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var900, r3=var81, i0=var2787, $r0=var1110, $r1=var946, $r2=var3356, $r5=var2716, $r4=var3800, $r6=var3911, $r8=var1233, $r7=var1097, $r9=var2378, $r11=var2552, $r10=var2728, $r12=var2451, $r13=var3004, $r14=var869}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = Method ");	$r4 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefClassName(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r7 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefName(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r10 = virtualinvoke r3.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefType(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1