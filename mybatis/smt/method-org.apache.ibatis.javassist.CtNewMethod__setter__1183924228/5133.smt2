(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3652 0)
(declare-sort var1429 0)
(declare-sort var310 0)
(declare-sort var2089 0)
(declare-sort var3337 0)
(declare-sort var3722 0)
(declare-sort var240 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFieldInfo2/589325723 (var1429) var310)
(declare-fun getDescriptor/-1085906438 (var310) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getConstPool/53162971 (var310) var2089)
(declare-fun var3337-init () var3337)
(declare-fun <init>/-1914107049 (var3337 var2089 String String) void)
(declare-fun setAccessFlags/-114621185 (var3337 Int) void)
(declare-fun var3722-init () var3722)
(declare-fun <init>/-1394564669 (var3722 var2089 Int Int) void)
(declare-fun var3883-init () var3883)
(declare-fun <init>/1879686810 (var3883 var240) void)
(declare-const null-String String)
(declare-const null-var1429 var1429)
(declare-const null-var240 var240)
(declare-const var2908 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2908 null-String)))
(declare-const var2235 var1429) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtField 
(assert (not (= var2235 null-var1429)))
(assert true)
(define-const var3905 var310 (getFieldInfo2/589325723 var2235)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>() 
(assert true)
(define-const var1655 String (getDescriptor/-1085906438 var3905)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(define-const var3070 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3070)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3070!1 String)
(assert (= var3070!1 ""))
(assert true)
(define-const var1713 String (append/672562846 var3070!1 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3070!2 String)
(assert (= var3070!2 (str.++ var3070!1 "(")))
(assert true)
(define-const var870 String (append/672562846 var1713 var1655)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 var1655)))
(assert true)
(define-const var61 String (append/672562846 var870 ")V")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var870!1 String)
(assert (= var870!1 (str.++ var870 ")V")))
(assert true)
(define-const var723 String (toString/-2075883882 var61)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var13 var2089 (getConstPool/53162971 var3905)) ; Statement: r8 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(define-const var2790 var3337 var3337-init) ; Statement: $r9 = new org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert true)
;(assert (<init>/-1914107049 var2790 var13 var2908 var723)) ; Statement: specialinvoke $r9.<org.apache.ibatis.javassist.bytecode.MethodInfo: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.String,java.lang.String)>(r8, r10, r7) 

(declare-const var2790!1 var3337)
(declare-const var13!1 var2089)
(declare-const var2908!1 String)
(declare-const var723!1 String)
(assert true)
;(assert (setAccessFlags/-114621185 var2790!1 1)) ; Statement: virtualinvoke $r9.<org.apache.ibatis.javassist.bytecode.MethodInfo: void setAccessFlags(int)>(1) 

(declare-const var2790!2 var3337)
(declare-const var812 Int)
(define-const var896 var3722 var3722-init) ; Statement: $r11 = new org.apache.ibatis.javassist.bytecode.Bytecode 
(assert true)
;(assert (<init>/-1394564669 var896 var13!1 3 3)) ; Statement: specialinvoke $r11.<org.apache.ibatis.javassist.bytecode.Bytecode: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,int,int)>(r8, 3, 3) 

(declare-const var896!1 var3722)
(declare-const var13!2 var2089)
(declare-const var3916 Int)
(declare-const var3916!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2760 var240) ; Statement: $r18 := @caughtexception 
(assert (not (= var2760 null-var240)))
(define-const var3932 var3883 var3883-init) ; Statement: $r19 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/1879686810 var3932 var2760)) ; Statement: specialinvoke $r19.<org.apache.ibatis.javassist.CannotCompileException: void <init>(org.apache.ibatis.javassist.NotFoundException)>($r18) 

(declare-const var3932!1 var3883)
(declare-const var2760!1 var240)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getFieldInfo2/589325723=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getConstPool/53162971=([org.apache.ibatis.javassist.bytecode.FieldInfo], org.apache.ibatis.javassist.bytecode.ConstPool), var3337-init=([], org.apache.ibatis.javassist.bytecode.MethodInfo), <init>/-1914107049=([org.apache.ibatis.javassist.bytecode.MethodInfo, org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.String, java.lang.String], void), setAccessFlags/-114621185=([org.apache.ibatis.javassist.bytecode.MethodInfo, int], void), var3722-init=([], org.apache.ibatis.javassist.bytecode.Bytecode), <init>/-1394564669=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.bytecode.ConstPool, int, int], void), var3883-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/1879686810=([org.apache.ibatis.javassist.CannotCompileException, org.apache.ibatis.javassist.NotFoundException], void)}
; {var2908=r10, var3652=null_type, var1429=org.apache.ibatis.javassist.CtField, var2235=r0, var310=org.apache.ibatis.javassist.bytecode.FieldInfo, var3905=r1, var1655=r2, var3070=$r3, var1713=$r4, var870=$r5, var61=$r6, var723=r7, var2089=org.apache.ibatis.javassist.bytecode.ConstPool, var13=r8, var3337=org.apache.ibatis.javassist.bytecode.MethodInfo, var2790=$r9, var812=1, var3722=org.apache.ibatis.javassist.bytecode.Bytecode, var896=$r11, var3916=3, var240=org.apache.ibatis.javassist.NotFoundException, var2760=$r18, var3883=org.apache.ibatis.javassist.CannotCompileException, var3932=$r19}
; {r10=var2908, null_type=var3652, org.apache.ibatis.javassist.CtField=var1429, r0=var2235, org.apache.ibatis.javassist.bytecode.FieldInfo=var310, r1=var3905, r2=var1655, $r3=var3070, $r4=var1713, $r5=var870, $r6=var61, r7=var723, org.apache.ibatis.javassist.bytecode.ConstPool=var2089, r8=var13, org.apache.ibatis.javassist.bytecode.MethodInfo=var3337, $r9=var2790, 1=var812, org.apache.ibatis.javassist.bytecode.Bytecode=var3722, $r11=var896, 3=var3916, org.apache.ibatis.javassist.NotFoundException=var240, $r18=var2760, org.apache.ibatis.javassist.CannotCompileException=var3883, $r19=var3932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.CtField;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	$r9 = new org.apache.ibatis.javassist.bytecode.MethodInfo;	specialinvoke $r9.<org.apache.ibatis.javassist.bytecode.MethodInfo: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.String,java.lang.String)>(r8, r10, r7);	virtualinvoke $r9.<org.apache.ibatis.javassist.bytecode.MethodInfo: void setAccessFlags(int)>(1);	$r11 = new org.apache.ibatis.javassist.bytecode.Bytecode;	specialinvoke $r11.<org.apache.ibatis.javassist.bytecode.Bytecode: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,int,int)>(r8, 3, 3);	$r18 := @caughtexception;	$r19 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r19.<org.apache.ibatis.javassist.CannotCompileException: void <init>(org.apache.ibatis.javassist.NotFoundException)>($r18);	throw $r19
;block_num 2