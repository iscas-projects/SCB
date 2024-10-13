(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3453 0)
(declare-sort var1851 0)
(declare-sort var3463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/-1746112734 (var3453) var1851)
(declare-fun getName/1611768686 (var1851) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/573518636 (var3453) String)
(declare-fun fieldInfo/-1703048415 (var3453) var3463)
(declare-fun getDescriptor/-1085906438 (var3463) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3453 var3453)
(declare-const var3631 var3453) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtField 
(assert (not (= var3631 null-var3453)))
(define-const var1891 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1891)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1891!1 String)
(assert (= var1891!1 ""))
(assert true)
(define-const var2104 var1851 (getDeclaringClass/-1746112734 var3631)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.CtClass getDeclaringClass()>() 
(assert true)
(define-const var419 String (getName/1611768686 var2104)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var3885 String (append/672562846 var1891!1 var419)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1891!2 String)
(assert (= var1891!2 (str.++ var1891!1 var419)))
(assert true)
(define-const var453 String (append/672562846 var3885 ".")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3885!1 String)
(assert (= var3885!1 (str.++ var3885 ".")))
(assert true)
(define-const var3260 String (getName/573518636 var3631)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>() 
(assert true)
(define-const var2463 String (append/672562846 var453 var3260)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var453!1 String)
(assert (= var453!1 (str.++ var453 var3260)))
(assert true)
(define-const var2671 String (append/672562846 var2463 ":")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2463!1 String)
(assert (= var2463!1 (str.++ var2463 ":")))
(define-const var3358 var3463 (fieldInfo/-1703048415 var3631)) ; Statement: $r8 = r1.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo fieldInfo> 
(assert true)
(define-const var2192 String (getDescriptor/-1085906438 var3358)) ; Statement: $r9 = virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var825 String (append/672562846 var2671 var2192)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2671!1 String)
(assert (= var2671!1 (str.++ var2671 var2192)))
(assert true)
(define-const var13 String (toString/-2075883882 var825)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/-1746112734=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.CtClass), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/573518636=([org.apache.ibatis.javassist.CtField], java.lang.String), fieldInfo/-1703048415=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3453=org.apache.ibatis.javassist.CtField, var3631=r1, var1891=$r0, var1851=org.apache.ibatis.javassist.CtClass, var2104=$r2, var419=$r3, var3885=$r4, var453=$r6, var3260=$r5, var2463=$r7, var2671=$r10, var3463=org.apache.ibatis.javassist.bytecode.FieldInfo, var3358=$r8, var2192=$r9, var825=$r11, var13=$r12}
; {org.apache.ibatis.javassist.CtField=var3453, r1=var3631, $r0=var1891, org.apache.ibatis.javassist.CtClass=var1851, $r2=var2104, $r3=var419, $r4=var3885, $r6=var453, $r5=var3260, $r7=var2463, $r10=var2671, org.apache.ibatis.javassist.bytecode.FieldInfo=var3463, $r8=var3358, $r9=var2192, $r11=var825, $r12=var13}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.CtClass getDeclaringClass()>();	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r8 = r1.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo fieldInfo>;	$r9 = virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1