(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1160 0)
(declare-sort var2771 0)
(declare-sort var2410 0)
(declare-sort var3841 0)
(declare-sort var1044 0)
(declare-sort var81 0)
(declare-sort var1763 0)
(declare-sort var3193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFieldInfo2/589325723 (var2771) var2410)
(declare-fun getDescriptor/-1085906438 (var2410) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getConstPool/53162971 (var2410) var3841)
(declare-fun var1044-init () var1044)
(declare-fun <init>/-1914107049 (var1044 var3841 String String) void)
(declare-fun setAccessFlags/-114621185 (var1044 Int) void)
(declare-fun var81-init () var81)
(declare-fun <init>/-1394564669 (var81 var3841 Int Int) void)
(declare-fun var3193-init () var3193)
(declare-fun <init>/1879686810 (var3193 var1763) void)
(declare-const null-String String)
(declare-const null-var2771 var2771)
(declare-const null-var1763 var1763)
(declare-const var729 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var729 null-String)))
(declare-const var924 var2771) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtField 
(assert (not (= var924 null-var2771)))
(assert true)
(define-const var1496 var2410 (getFieldInfo2/589325723 var924)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>() 
(assert true)
(define-const var1726 String (getDescriptor/-1085906438 var1496)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(define-const var1094 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1094)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1094!1 String)
(assert (= var1094!1 ""))
(assert true)
(define-const var2367 String (append/672562846 var1094!1 "()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var1094!2 String)
(assert (= var1094!2 (str.++ var1094!1 "()")))
(assert true)
(define-const var1822 String (append/672562846 var2367 var1726)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2367!1 String)
(assert (= var2367!1 (str.++ var2367 var1726)))
(assert true)
(define-const var3764 String (toString/-2075883882 var1822)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var297 var3841 (getConstPool/53162971 var1496)) ; Statement: r7 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(define-const var2385 var1044 var1044-init) ; Statement: $r8 = new org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert true)
;(assert (<init>/-1914107049 var2385 var297 var729 var3764)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.String,java.lang.String)>(r7, r9, r6) 

(declare-const var2385!1 var1044)
(declare-const var297!1 var3841)
(declare-const var729!1 String)
(declare-const var3764!1 String)
(assert true)
;(assert (setAccessFlags/-114621185 var2385!1 1)) ; Statement: virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: void setAccessFlags(int)>(1) 

(declare-const var2385!2 var1044)
(declare-const var3029 Int)
(define-const var463 var81 var81-init) ; Statement: $r10 = new org.apache.ibatis.javassist.bytecode.Bytecode 
(assert true)
;(assert (<init>/-1394564669 var463 var297!1 2 1)) ; Statement: specialinvoke $r10.<org.apache.ibatis.javassist.bytecode.Bytecode: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,int,int)>(r7, 2, 1) 

(declare-const var463!1 var81)
(declare-const var297!2 var3841)
(declare-const var3673 Int)
(declare-const var3029!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var806 var1763) ; Statement: $r16 := @caughtexception 
(assert (not (= var806 null-var1763)))
(define-const var668 var3193 var3193-init) ; Statement: $r17 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/1879686810 var668 var806)) ; Statement: specialinvoke $r17.<org.apache.ibatis.javassist.CannotCompileException: void <init>(org.apache.ibatis.javassist.NotFoundException)>($r16) 

(declare-const var668!1 var3193)
(declare-const var806!1 var1763)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getFieldInfo2/589325723=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getConstPool/53162971=([org.apache.ibatis.javassist.bytecode.FieldInfo], org.apache.ibatis.javassist.bytecode.ConstPool), var1044-init=([], org.apache.ibatis.javassist.bytecode.MethodInfo), <init>/-1914107049=([org.apache.ibatis.javassist.bytecode.MethodInfo, org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.String, java.lang.String], void), setAccessFlags/-114621185=([org.apache.ibatis.javassist.bytecode.MethodInfo, int], void), var81-init=([], org.apache.ibatis.javassist.bytecode.Bytecode), <init>/-1394564669=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.bytecode.ConstPool, int, int], void), var3193-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/1879686810=([org.apache.ibatis.javassist.CannotCompileException, org.apache.ibatis.javassist.NotFoundException], void)}
; {var729=r9, var1160=null_type, var2771=org.apache.ibatis.javassist.CtField, var924=r0, var2410=org.apache.ibatis.javassist.bytecode.FieldInfo, var1496=r1, var1726=r2, var1094=$r3, var2367=$r4, var1822=$r5, var3764=r6, var3841=org.apache.ibatis.javassist.bytecode.ConstPool, var297=r7, var1044=org.apache.ibatis.javassist.bytecode.MethodInfo, var2385=$r8, var3029=1, var81=org.apache.ibatis.javassist.bytecode.Bytecode, var463=$r10, var3673=2, var1763=org.apache.ibatis.javassist.NotFoundException, var806=$r16, var3193=org.apache.ibatis.javassist.CannotCompileException, var668=$r17}
; {r9=var729, null_type=var1160, org.apache.ibatis.javassist.CtField=var2771, r0=var924, org.apache.ibatis.javassist.bytecode.FieldInfo=var2410, r1=var1496, r2=var1726, $r3=var1094, $r4=var2367, $r5=var1822, r6=var3764, org.apache.ibatis.javassist.bytecode.ConstPool=var3841, r7=var297, org.apache.ibatis.javassist.bytecode.MethodInfo=var1044, $r8=var2385, 1=var3029, org.apache.ibatis.javassist.bytecode.Bytecode=var81, $r10=var463, 2=var3673, org.apache.ibatis.javassist.NotFoundException=var1763, $r16=var806, org.apache.ibatis.javassist.CannotCompileException=var3193, $r17=var668}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.CtField;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	$r8 = new org.apache.ibatis.javassist.bytecode.MethodInfo;	specialinvoke $r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.String,java.lang.String)>(r7, r9, r6);	virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.MethodInfo: void setAccessFlags(int)>(1);	$r10 = new org.apache.ibatis.javassist.bytecode.Bytecode;	specialinvoke $r10.<org.apache.ibatis.javassist.bytecode.Bytecode: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,int,int)>(r7, 2, 1);	$r16 := @caughtexception;	$r17 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r17.<org.apache.ibatis.javassist.CannotCompileException: void <init>(org.apache.ibatis.javassist.NotFoundException)>($r16);	throw $r17
;block_num 2