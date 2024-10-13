(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var681 0)
(declare-sort var1963 0)
(declare-sort var1710 0)
(declare-sort var3773 0)
(declare-sort var660 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaring/-934392322 (var3773) var1963)
(declare-fun info/-934392322 (var3773) var660)
(declare-fun getDescriptor/241025769 (var660) String)
(declare-fun getAccessFlags/380368309 (var660) Int)
(declare-fun var2075-init () var2075)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1963) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var2075 String) void)
(declare-const null-var681 var681)
(declare-const null-var1963 var1963)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-var3773 var3773)
(declare-const var1912 var681) ; Statement: r3 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen 
(assert (not (= var1912 null-var681)))
(declare-const var1584 var1963) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1584 null-var1963)))
(declare-const var520 String) ; Statement: r25 := @parameter1: java.lang.String 
(assert (not (= var520 null-String)))
(declare-const var2253 Bool) ; Statement: z7 := @parameter2: boolean 
(assert (not (= var2253 null-Bool)))
(declare-const var2552 Bool) ; Statement: z8 := @parameter3: boolean 
(assert (not (= var2552 null-Bool)))
(declare-const var3112 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3112 null-Int)))
(declare-const var175 var3773) ; Statement: r0 := @parameter5: org.apache.ibatis.javassist.compiler.MemberResolver$Method 
(assert (not (= var175 null-var3773)))
(define-const var2170 var1963 (declaring/-934392322 var175)) ; Statement: r26 = r0.<org.apache.ibatis.javassist.compiler.MemberResolver$Method: org.apache.ibatis.javassist.CtClass declaring> 
(define-const var2261 var660 (info/-934392322 var175)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.compiler.MemberResolver$Method: org.apache.ibatis.javassist.bytecode.MethodInfo info> 
(assert true)
(define-const var3432 String (getDescriptor/241025769 var2261)) ; Statement: r27 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3485 Int (getAccessFlags/380368309 var2261)) ; Statement: i7 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: int getAccessFlags()>() 
(assert true)
(define-const var944 Bool (= var520 "<init>")) ; Statement: $z0 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>("<init>") 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.apache.ibatis.javassist.bytecode.AccessFlag: boolean isPrivate(int)>(i7) 
(assert (not (= (ite var944 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2552!1 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
 ; Statement: if r26 == r2 goto $r15 = r3.<org.apache.ibatis.javassist.compiler.MemberCodeGen: org.apache.ibatis.javassist.CtClass thisClass> 
(assert (not (= var2170 var1584))) ; Negate: Cond: r26 == r2  
(define-const var3553 var2075 var2075-init) ; Statement: $r19 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var3606 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3606)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3606!1 String)
(assert (= var3606!1 ""))
(assert true)
(define-const var576 String (append/672562846 var3606!1 "no such constructor: ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such constructor: ") 
(declare-const var3606!2 String)
(assert (= var3606!2 (str.++ var3606!1 "no such constructor: ")))
(assert true)
(define-const var3764 String (getName/1611768686 var1584)) ; Statement: $r21 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var1338 String (append/672562846 var576 var3764)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var576!1 String)
(assert (= var576!1 (str.++ var576 var3764)))
(assert true)
(define-const var2114 String (toString/-2075883882 var1338)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3553 var2114)) ; Statement: specialinvoke $r19.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r24) 

(declare-const var3553!1 var2075)
(declare-const var2114!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {declaring/-934392322=([org.apache.ibatis.javassist.compiler.MemberResolver$Method], org.apache.ibatis.javassist.CtClass), info/-934392322=([org.apache.ibatis.javassist.compiler.MemberResolver$Method], org.apache.ibatis.javassist.bytecode.MethodInfo), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String), getAccessFlags/380368309=([org.apache.ibatis.javassist.bytecode.MethodInfo], int), var2075-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var681=org.apache.ibatis.javassist.compiler.MemberCodeGen, var1912=r3, var1963=org.apache.ibatis.javassist.CtClass, var1584=r2, var520=r25, var1710=null_type, var2253=z7, var2552=z8, var3112=i3, var3773=org.apache.ibatis.javassist.compiler.MemberResolver$Method, var175=r0, var2170=r26, var660=org.apache.ibatis.javassist.bytecode.MethodInfo, var2261=r1, var3432=r27, var3485=i7, var944=$z0, var2075=org.apache.ibatis.javassist.compiler.CompileError, var3553=$r19, var3606=$r20, var576=$r22, var3764=$r21, var1338=$r23, var2114=$r24}
; {org.apache.ibatis.javassist.compiler.MemberCodeGen=var681, r3=var1912, org.apache.ibatis.javassist.CtClass=var1963, r2=var1584, r25=var520, null_type=var1710, z7=var2253, z8=var2552, i3=var3112, org.apache.ibatis.javassist.compiler.MemberResolver$Method=var3773, r0=var175, r26=var2170, org.apache.ibatis.javassist.bytecode.MethodInfo=var660, r1=var2261, r27=var3432, i7=var3485, $z0=var944, org.apache.ibatis.javassist.compiler.CompileError=var2075, $r19=var3553, $r20=var3606, $r22=var576, $r21=var3764, $r23=var1338, $r24=var2114}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen;	r2 := @parameter0: org.apache.ibatis.javassist.CtClass;	r25 := @parameter1: java.lang.String;	z7 := @parameter2: boolean;	z8 := @parameter3: boolean;	i3 := @parameter4: int;	r0 := @parameter5: org.apache.ibatis.javassist.compiler.MemberResolver$Method;	r26 = r0.<org.apache.ibatis.javassist.compiler.MemberResolver$Method: org.apache.ibatis.javassist.CtClass declaring>;	r1 = r0.<org.apache.ibatis.javassist.compiler.MemberResolver$Method: org.apache.ibatis.javassist.bytecode.MethodInfo info>;	r27 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	i7 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: int getAccessFlags()>();	$z0 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>("<init>");	if $z0 == 0 goto $z1 = staticinvoke <org.apache.ibatis.javassist.bytecode.AccessFlag: boolean isPrivate(int)>(i7);	z8 = 1;	if r26 == r2 goto $r15 = r3.<org.apache.ibatis.javassist.compiler.MemberCodeGen: org.apache.ibatis.javassist.CtClass thisClass>;	$r19 = new org.apache.ibatis.javassist.compiler.CompileError;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such constructor: ");	$r21 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 3