(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1700 0)
(declare-sort var2098 0)
(declare-sort var3353 0)
(declare-sort var349 0)
(declare-sort var3950 0)
(declare-sort var2021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2021-init () var2021)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1700) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var2021 String) void)
(declare-const null-var1700 var1700)
(declare-const null-var2098 var2098)
(declare-const null-var3353 var3353)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1700__ (Array Int var1700))
(declare-const null-var349 var349)
(declare-const null-var3950 var3950)
(declare-const var688 var1700) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var688 null-var1700)))
(declare-const var3406 var2098) ; Statement: r5 := @parameter1: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var3406 null-var2098)))
(declare-const var1101 var3353) ; Statement: r4 := @parameter2: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var1101 null-var3353)))
(declare-const var1216 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1216 null-Bool)))
(declare-const var2776 (Array Int var1700)) ; Statement: r2 := @parameter4: org.apache.ibatis.javassist.CtClass[] 
(assert (not (= var2776 null-__Array__Int__var1700__)))
(declare-const var2273 var1700) ; Statement: r8 := @parameter5: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2273 null-var1700)))
(declare-const var1849 var349) ; Statement: r3 := @parameter6: org.apache.ibatis.javassist.CtMethod$ConstParameter 
(assert (not (= var1849 null-var349)))
(declare-const var863 var3950) ; Statement: r1 := @parameter7: org.apache.ibatis.javassist.bytecode.Bytecode 
(assert (not (= var863 null-var3950)))
(define-const var2659 Bool false) ; Statement: $z0 = r0 instanceof org.apache.ibatis.javassist.CtClassType 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var2659 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var837 var2021 var2021-init) ; Statement: $r11 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var1309 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1309)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1309!1 String)
(assert (= var1309!1 ""))
(assert true)
(define-const var3091 String (append/672562846 var1309!1 "bad declaring class")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad declaring class") 
(declare-const var1309!2 String)
(assert (= var1309!2 (str.++ var1309!1 "bad declaring class")))
(assert true)
(define-const var1536 String (getName/1611768686 var688)) ; Statement: $r13 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var622 String (append/672562846 var3091 var1536)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3091!1 String)
(assert (= var3091!1 (str.++ var3091 var1536)))
(assert true)
(define-const var1207 String (toString/-2075883882 var622)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var837 var1207)) ; Statement: specialinvoke $r11.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r16) 

(declare-const var837!1 var2021)
(declare-const var1207!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2021-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var1700=org.apache.ibatis.javassist.CtClass, var688=r0, var2098=org.apache.ibatis.javassist.bytecode.ClassFile, var3406=r5, var3353=org.apache.ibatis.javassist.CtMethod, var1101=r4, var1216=z1, var2776=r2, var2273=r8, var349=org.apache.ibatis.javassist.CtMethod$ConstParameter, var1849=r3, var3950=org.apache.ibatis.javassist.bytecode.Bytecode, var863=r1, var2659=$z0, var2021=org.apache.ibatis.javassist.CannotCompileException, var837=$r11, var1309=$r12, var3091=$r14, var1536=$r13, var622=$r15, var1207=$r16}
; {org.apache.ibatis.javassist.CtClass=var1700, r0=var688, org.apache.ibatis.javassist.bytecode.ClassFile=var2098, r5=var3406, org.apache.ibatis.javassist.CtMethod=var3353, r4=var1101, z1=var1216, r2=var2776, r8=var2273, org.apache.ibatis.javassist.CtMethod$ConstParameter=var349, r3=var1849, org.apache.ibatis.javassist.bytecode.Bytecode=var3950, r1=var863, $z0=var2659, org.apache.ibatis.javassist.CannotCompileException=var2021, $r11=var837, $r12=var1309, $r14=var3091, $r13=var1536, $r15=var622, $r16=var1207}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	r5 := @parameter1: org.apache.ibatis.javassist.bytecode.ClassFile;	r4 := @parameter2: org.apache.ibatis.javassist.CtMethod;	z1 := @parameter3: boolean;	r2 := @parameter4: org.apache.ibatis.javassist.CtClass[];	r8 := @parameter5: org.apache.ibatis.javassist.CtClass;	r3 := @parameter6: org.apache.ibatis.javassist.CtMethod$ConstParameter;	r1 := @parameter7: org.apache.ibatis.javassist.bytecode.Bytecode;	$z0 = r0 instanceof org.apache.ibatis.javassist.CtClassType;	if $z0 != 0 goto (branch);	$r11 = new org.apache.ibatis.javassist.CannotCompileException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad declaring class");	$r13 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2