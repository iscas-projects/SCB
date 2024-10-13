(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var1225 0)
(declare-sort var2540 0)
(declare-sort var273 0)
(declare-sort var3926 0)
(declare-sort var1427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1027843989 (var273 var2540) void)
(declare-fun cast-from-var240-to-var273 (var240) var273)
(declare-fun getClassFile2/769767517 (var2540) var3926)
(declare-fun var1427-init () var1427)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var2540) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var1427 String) void)
(declare-const null-var240 var240)
(declare-const null-String String)
(declare-const null-var2540 var2540)
(declare-const null-var3926 var3926)
(declare-const var483 var240) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtField 
(assert (not (= var483 null-var240)))
(declare-const var3026 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3026 null-String)))
(declare-const var674 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var674 null-String)))
(declare-const var950 var2540) ; Statement: r1 := @parameter2: org.apache.ibatis.javassist.CtClass 
(assert (not (= var950 null-var2540)))
(assert true)
;(assert (<init>/1027843989 (cast-from-var240-to-var273 var483) var950)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtMember: void <init>(org.apache.ibatis.javassist.CtClass)>(r1) 

(declare-const var483!1 var240)
(declare-const var950!1 var2540)
(assert true)
(define-const var2442 var3926 (getClassFile2/769767517 var950!1)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>() 
 ; Statement: if r2 != null goto $r3 = new org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (not (= var2442 null-var3926)))) ; Negate: Cond: r2 != null  
(define-const var1317 var1427 var1427-init) ; Statement: $r7 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var3304 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3304)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3304!1 String)
(assert (= var3304!1 ""))
(assert true)
(define-const var2262 String (append/672562846 var3304!1 "bad declaring class: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad declaring class: ") 
(declare-const var3304!2 String)
(assert (= var3304!2 (str.++ var3304!1 "bad declaring class: ")))
(assert true)
(define-const var311 String (getName/1611768686 var950!1)) ; Statement: $r9 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var261 String (append/672562846 var2262 var311)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2262!1 String)
(assert (= var2262!1 (str.++ var2262 var311)))
(assert true)
(define-const var38 String (toString/-2075883882 var261)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var1317 var38)) ; Statement: specialinvoke $r7.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r12) 

(declare-const var1317!1 var1427)
(declare-const var38!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1027843989=([org.apache.ibatis.javassist.CtMember, org.apache.ibatis.javassist.CtClass], void), cast-from-var240-to-var273=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.CtMember), getClassFile2/769767517=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.bytecode.ClassFile), var1427-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var240=org.apache.ibatis.javassist.CtField, var483=r0, var3026=r5, var1225=null_type, var674=r4, var2540=org.apache.ibatis.javassist.CtClass, var950=r1, var273=org.apache.ibatis.javassist.CtMember, var3926=org.apache.ibatis.javassist.bytecode.ClassFile, var2442=r2, var1427=org.apache.ibatis.javassist.CannotCompileException, var1317=$r7, var3304=$r8, var2262=$r10, var311=$r9, var261=$r11, var38=$r12}
; {org.apache.ibatis.javassist.CtField=var240, r0=var483, r5=var3026, null_type=var1225, r4=var674, org.apache.ibatis.javassist.CtClass=var2540, r1=var950, org.apache.ibatis.javassist.CtMember=var273, org.apache.ibatis.javassist.bytecode.ClassFile=var3926, r2=var2442, org.apache.ibatis.javassist.CannotCompileException=var1427, $r7=var1317, $r8=var3304, $r10=var2262, $r9=var311, $r11=var261, $r12=var38}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtField;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r1 := @parameter2: org.apache.ibatis.javassist.CtClass;	specialinvoke r0.<org.apache.ibatis.javassist.CtMember: void <init>(org.apache.ibatis.javassist.CtClass)>(r1);	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>();	if r2 != null goto $r3 = new org.apache.ibatis.javassist.bytecode.FieldInfo;	$r7 = new org.apache.ibatis.javassist.CannotCompileException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad declaring class: ");	$r9 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2