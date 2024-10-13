(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3152 0)
(declare-sort var750 0)
(declare-sort var373 0)
(declare-sort var2807 0)
(declare-sort var683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/629685452 (var373) var750)
(declare-fun cast-from-var3152-to-var373 (var3152) var373)
(declare-fun getName/1611768686 (var750) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isConstructor/1438209776 (var3152) Bool)
(declare-fun getSignature/-576084531 (var2807) String)
(declare-fun cast-from-var3152-to-var2807 (var3152) var2807)
(declare-fun var683_toString/-626024667 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3152 var3152)
(declare-const var3814 var3152) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtConstructor 
(assert (not (= var3814 null-var3152)))
(define-const var1719 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1719)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1719!1 String)
(assert (= var1719!1 ""))
(assert true)
(define-const var2715 var750 (getDeclaringClass/629685452 (cast-from-var3152-to-var373 var3814))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.CtClass getDeclaringClass()>() 
(assert true)
(define-const var973 String (getName/1611768686 var2715)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var3458 String (append/672562846 var1719!1 var973)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1719!2 String)
(assert (= var1719!2 (str.++ var1719!1 var973)))
(assert true)
(define-const var1157 Bool (isConstructor/1438209776 var3814)) ; Statement: $z0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: boolean isConstructor()>() 
 ; Statement: if $z0 == 0 goto $r8 = ".<clinit>()" 
(assert (not (= (ite var1157 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var354 String (getSignature/-576084531 (cast-from-var3152-to-var2807 var3814))) ; Statement: $r7 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: java.lang.String getSignature()>() 
(define-const var1361 String (var683_toString/-626024667 var354)) ; Statement: $r8 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toString(java.lang.String)>($r7) 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var827 String (append/672562846 var3458 var1361)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 var1361)))
(assert true)
(define-const var3282 String (toString/-2075883882 var827)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/629685452=([org.apache.ibatis.javassist.CtMember], org.apache.ibatis.javassist.CtClass), cast-from-var3152-to-var373=([org.apache.ibatis.javassist.CtConstructor], org.apache.ibatis.javassist.CtMember), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isConstructor/1438209776=([org.apache.ibatis.javassist.CtConstructor], boolean), getSignature/-576084531=([org.apache.ibatis.javassist.CtBehavior], java.lang.String), cast-from-var3152-to-var2807=([org.apache.ibatis.javassist.CtConstructor], org.apache.ibatis.javassist.CtBehavior), var683_toString/-626024667=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3152=org.apache.ibatis.javassist.CtConstructor, var3814=r1, var1719=$r0, var750=org.apache.ibatis.javassist.CtClass, var373=org.apache.ibatis.javassist.CtMember, var2715=$r2, var973=$r3, var3458=$r4, var1157=$z0, var2807=org.apache.ibatis.javassist.CtBehavior, var354=$r7, var683=org.apache.ibatis.javassist.bytecode.Descriptor, var1361=$r8, var827=$r5, var3282=$r6}
; {org.apache.ibatis.javassist.CtConstructor=var3152, r1=var3814, $r0=var1719, org.apache.ibatis.javassist.CtClass=var750, org.apache.ibatis.javassist.CtMember=var373, $r2=var2715, $r3=var973, $r4=var3458, $z0=var1157, org.apache.ibatis.javassist.CtBehavior=var2807, $r7=var354, org.apache.ibatis.javassist.bytecode.Descriptor=var683, $r8=var1361, $r5=var827, $r6=var3282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toString(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtConstructor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: org.apache.ibatis.javassist.CtClass getDeclaringClass()>();	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: boolean isConstructor()>();	if $z0 == 0 goto $r8 = ".<clinit>()";	$r7 = virtualinvoke r1.<org.apache.ibatis.javassist.CtConstructor: java.lang.String getSignature()>();	$r8 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toString(java.lang.String)>($r7);	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3