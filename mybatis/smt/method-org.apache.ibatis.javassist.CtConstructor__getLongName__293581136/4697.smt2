(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort var1544 0)
(declare-sort var3081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/629685452 (var3081) var1544)
(declare-fun cast-from-var1128-to-var3081 (var1128) var3081)
(declare-fun getName/1611768686 (var1544) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isConstructor/1438209776 (var1128) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1128 var1128)
(declare-const var3494 var1128) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtConstructor 
(assert (not (= var3494 null-var1128)))
(define-const var1857 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1857)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1857!1 String)
(assert (= var1857!1 ""))
(assert true)
(define-const var2545 var1544 (getDeclaringClass/629685452 (cast-from-var1128-to-var3081 var3494))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.CtClass getDeclaringClass()>() 
(assert true)
(define-const var3658 String (getName/1611768686 var2545)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var1162 String (append/672562846 var1857!1 var3658)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1857!2 String)
(assert (= var1857!2 (str.++ var1857!1 var3658)))
(assert true)
(define-const var1863 Bool (isConstructor/1438209776 var3494)) ; Statement: $z0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: boolean isConstructor()>() 
 ; Statement: if $z0 == 0 goto $r8 = ".<clinit>()" 
(assert (= (ite var1863 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3541 String ".<clinit>()") ; Statement: $r8 = ".<clinit>()" 
(assert true) ; Non Conditional
(assert true)
(define-const var97 String (append/672562846 var1162 var3541)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1162!1 String)
(assert (= var1162!1 (str.++ var1162 var3541)))
(assert true)
(define-const var1730 String (toString/-2075883882 var97)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/629685452=([org.apache.ibatis.javassist.CtMember], org.apache.ibatis.javassist.CtClass), cast-from-var1128-to-var3081=([org.apache.ibatis.javassist.CtConstructor], org.apache.ibatis.javassist.CtMember), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isConstructor/1438209776=([org.apache.ibatis.javassist.CtConstructor], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1128=org.apache.ibatis.javassist.CtConstructor, var3494=r1, var1857=$r0, var1544=org.apache.ibatis.javassist.CtClass, var3081=org.apache.ibatis.javassist.CtMember, var2545=$r2, var3658=$r3, var1162=$r4, var1863=$z0, var3541=$r8, var97=$r5, var1730=$r6}
; {org.apache.ibatis.javassist.CtConstructor=var1128, r1=var3494, $r0=var1857, org.apache.ibatis.javassist.CtClass=var1544, org.apache.ibatis.javassist.CtMember=var3081, $r2=var2545, $r3=var3658, $r4=var1162, $z0=var1863, $r8=var3541, $r5=var97, $r6=var1730}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtConstructor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.CtClass getDeclaringClass()>();	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: boolean isConstructor()>();	if $z0 == 0 goto $r8 = ".<clinit>()";	$r8 = ".<clinit>()";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3