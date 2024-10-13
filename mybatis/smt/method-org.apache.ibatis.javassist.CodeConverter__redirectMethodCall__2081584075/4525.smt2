(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3209 0)
(declare-sort var3446 0)
(declare-sort var1863 0)
(declare-sort var39 0)
(declare-sort var3634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethodInfo2/-1623269181 (var39) var1863)
(declare-fun cast-from-var3446-to-var39 (var3446) var39)
(declare-fun getDescriptor/241025769 (var1863) String)
(declare-fun var3634-init () var3634)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLongName/-1696175681 (var3446) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var3634 String) void)
(declare-const null-var3209 var3209)
(declare-const null-var3446 var3446)
(declare-const var657 var3209) ; Statement: r8 := @this: org.apache.ibatis.javassist.CodeConverter 
(assert (not (= var657 null-var3209)))
(declare-const var82 var3446) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var82 null-var3446)))
(declare-const var825 var3446) ; Statement: r3 := @parameter1: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var825 null-var3446)))
(assert true)
(define-const var3814 var1863 (getMethodInfo2/-1623269181 (cast-from-var3446-to-var39 var82))) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var3465 String (getDescriptor/241025769 var3814)) ; Statement: r2 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3936 var1863 (getMethodInfo2/-1623269181 (cast-from-var3446-to-var39 var825))) ; Statement: $r4 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var1234 String (getDescriptor/241025769 var3936)) ; Statement: r5 = virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1321 Bool (= var3465 var1234)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 != 0 goto i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: int getModifiers()>() 
(assert (not (not (= (ite var1321 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3811 var3634 var3634-init) ; Statement: $r11 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var2951 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2951)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2951!1 String)
(assert (= var2951!1 ""))
(assert true)
(define-const var1610 String (append/672562846 var2951!1 "signature mismatch: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("signature mismatch: ") 
(declare-const var2951!2 String)
(assert (= var2951!2 (str.++ var2951!1 "signature mismatch: ")))
(assert true)
(define-const var1504 String (getLongName/-1696175681 var825)) ; Statement: $r13 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMethod: java.lang.String getLongName()>() 
(assert true)
(define-const var1866 String (append/672562846 var1610 var1504)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1610!1 String)
(assert (= var1610!1 (str.++ var1610 var1504)))
(assert true)
(define-const var3622 String (toString/-2075883882 var1866)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var3811 var3622)) ; Statement: specialinvoke $r11.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r16) 

(declare-const var3811!1 var3634)
(declare-const var3622!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethodInfo2/-1623269181=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.bytecode.MethodInfo), cast-from-var3446-to-var39=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtBehavior), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String), var3634-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLongName/-1696175681=([org.apache.ibatis.javassist.CtMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var3209=org.apache.ibatis.javassist.CodeConverter, var657=r8, var3446=org.apache.ibatis.javassist.CtMethod, var82=r0, var825=r3, var1863=org.apache.ibatis.javassist.bytecode.MethodInfo, var39=org.apache.ibatis.javassist.CtBehavior, var3814=$r1, var3465=r2, var3936=$r4, var1234=r5, var1321=$z0, var3634=org.apache.ibatis.javassist.CannotCompileException, var3811=$r11, var2951=$r12, var1610=$r14, var1504=$r13, var1866=$r15, var3622=$r16}
; {org.apache.ibatis.javassist.CodeConverter=var3209, r8=var657, org.apache.ibatis.javassist.CtMethod=var3446, r0=var82, r3=var825, org.apache.ibatis.javassist.bytecode.MethodInfo=var1863, org.apache.ibatis.javassist.CtBehavior=var39, $r1=var3814, r2=var3465, $r4=var3936, r5=var1234, $z0=var1321, org.apache.ibatis.javassist.CannotCompileException=var3634, $r11=var3811, $r12=var2951, $r14=var1610, $r13=var1504, $r15=var1866, $r16=var3622}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.javassist.CodeConverter;	r0 := @parameter0: org.apache.ibatis.javassist.CtMethod;	r3 := @parameter1: org.apache.ibatis.javassist.CtMethod;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	r2 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$r4 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	r5 = virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 != 0 goto i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtMethod: int getModifiers()>();	$r11 = new org.apache.ibatis.javassist.CannotCompileException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("signature mismatch: ");	$r13 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMethod: java.lang.String getLongName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2