(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1450 0)
(declare-sort var1627 0)
(declare-sort var1087 0)
(declare-sort var1980 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSuperclass/206115374 (var1087) var1627)
(declare-fun cast-from-var1450-to-var1087 (var1450) var1087)
(declare-fun getDeclaredConstructors/-519587590 (var1627) (Array Int var1980))
(declare-fun getLength-Arr-var1980-1 ((Array Int var1980)) Int)
(declare-fun var3168-init () var3168)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1627) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var3168 String) void)
(declare-const null-var1450 var1450)
(declare-const var1420 var1450) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtNewClass 
(assert (not (= var1420 null-var1450)))
(assert true)
(define-const var1982 var1627 (getSuperclass/206115374 (cast-from-var1450-to-var1087 var1420))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtNewClass: org.apache.ibatis.javassist.CtClass getSuperclass()>() 
(assert true)
(define-const var925 (Array Int var1980) (getDeclaredConstructors/-519587590 var1982)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtConstructor[] getDeclaredConstructors()>() 
(define-const var447 Int 0) ; Statement: i3 = 0 
(define-const var2904 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var2112 Int (getLength-Arr-var1980-1 var925)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var2904 var2112)) ; Cond: i4 >= $i0 
 ; Statement: if i3 >= 1 goto return 
(assert (not (>= var447 1))) ; Negate: Cond: i3 >= 1  
(define-const var1802 var3168 var3168-init) ; Statement: $r3 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var2420 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2420)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2420!1 String)
(assert (= var2420!1 ""))
(assert true)
(define-const var1126 String (append/672562846 var2420!1 "no inheritable constructor in ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no inheritable constructor in ") 
(declare-const var2420!2 String)
(assert (= var2420!2 (str.++ var2420!1 "no inheritable constructor in ")))
(assert true)
(define-const var1149 String (getName/1611768686 var1982)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2853 String (append/672562846 var1126 var1149)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1126!1 String)
(assert (= var1126!1 (str.++ var1126 var1149)))
(assert true)
(define-const var1336 String (toString/-2075883882 var2853)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var1802 var1336)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r8) 

(declare-const var1802!1 var3168)
(declare-const var1336!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getSuperclass/206115374=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), cast-from-var1450-to-var1087=([org.apache.ibatis.javassist.CtNewClass], org.apache.ibatis.javassist.CtClassType), getDeclaredConstructors/-519587590=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.CtConstructor[]), getLength-Arr-var1980-1=([org.apache.ibatis.javassist.CtConstructor[]], int), var3168-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var1450=org.apache.ibatis.javassist.CtNewClass, var1420=r0, var1627=org.apache.ibatis.javassist.CtClass, var1087=org.apache.ibatis.javassist.CtClassType, var1982=r1, var1980=org.apache.ibatis.javassist.CtConstructor, var925=r2, var447=i3, var2904=i4, var2112=$i0, var3168=org.apache.ibatis.javassist.CannotCompileException, var1802=$r3, var2420=$r4, var1126=$r6, var1149=$r5, var2853=$r7, var1336=$r8}
; {org.apache.ibatis.javassist.CtNewClass=var1450, r0=var1420, org.apache.ibatis.javassist.CtClass=var1627, org.apache.ibatis.javassist.CtClassType=var1087, r1=var1982, org.apache.ibatis.javassist.CtConstructor=var1980, r2=var925, i3=var447, i4=var2904, $i0=var2112, org.apache.ibatis.javassist.CannotCompileException=var3168, $r3=var1802, $r4=var2420, $r6=var1126, $r5=var1149, $r7=var2853, $r8=var1336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtNewClass;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtNewClass: org.apache.ibatis.javassist.CtClass getSuperclass()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtConstructor[] getDeclaredConstructors()>();	i3 = 0;	i4 = 0;	$i0 = lengthof r2;	if i4 >= $i0 goto (branch);	if i3 >= 1 goto return;	$r3 = new org.apache.ibatis.javassist.CannotCompileException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no inheritable constructor in ");	$r5 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 4