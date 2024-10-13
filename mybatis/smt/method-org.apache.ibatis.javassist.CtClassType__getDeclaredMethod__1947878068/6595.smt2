(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1855 0)
(declare-sort var2292 0)
(declare-sort var2057 0)
(declare-sort var3664 0)
(declare-sort var1717 0)
(declare-sort var412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMembers/1401795886 (var1855) var2057)
(declare-fun methodHead/771997826 (var2057) var3664)
(declare-fun lastMethod/-746115060 (var2057) var3664)
(declare-fun var1717-init () var1717)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var412) String)
(declare-fun cast-from-var1855-to-var412 (var1855) var412)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/982930918 (var1717 String) void)
(declare-const null-var1855 var1855)
(declare-const null-String String)
(declare-const var3794 var1855) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var3794 null-var1855)))
(declare-const var3581 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3581 null-String)))
(assert true)
(define-const var3148 var2057 (getMembers/1401795886 var3794)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMember$Cache getMembers()>() 
(assert true)
(define-const var1336 var3664 (methodHead/771997826 var3148)) ; Statement: r13 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember methodHead()>() 
(assert true)
(define-const var2288 var3664 (lastMethod/-746115060 var3148)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastMethod()>() 
(assert true) ; Non Conditional
 ; Statement: if r13 == r2 goto $r3 = new org.apache.ibatis.javassist.NotFoundException 
(assert (= var1336 var2288)) ; Cond: r13 == r2 
(define-const var2458 var1717 var1717-init) ; Statement: $r3 = new org.apache.ibatis.javassist.NotFoundException 
(define-const var1061 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1061)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1061!1 String)
(assert (= var1061!1 ""))
(assert true)
(define-const var1696 String (append/672562846 var1061!1 var3581)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1061!2 String)
(assert (= var1061!2 (str.++ var1061!1 var3581)))
(assert true)
(define-const var188 String (append/672562846 var1696 "(..) is not found in ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(..) is not found in ") 
(declare-const var1696!1 String)
(assert (= var1696!1 (str.++ var1696 "(..) is not found in ")))
(assert true)
(define-const var6 String (getName/1611768686 (cast-from-var1855-to-var412 var3794))) ; Statement: $r7 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var701 String (append/672562846 var188 var6)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var188!1 String)
(assert (= var188!1 (str.++ var188 var6)))
(assert true)
(define-const var828 String (toString/-2075883882 var701)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/982930918 var2458 var828)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.NotFoundException: void <init>(java.lang.String)>($r10) 

(declare-const var2458!1 var1717)
(declare-const var828!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getMembers/1401795886=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtMember$Cache), methodHead/771997826=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), lastMethod/-746115060=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), var1717-init=([], org.apache.ibatis.javassist.NotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1855-to-var412=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/982930918=([org.apache.ibatis.javassist.NotFoundException, java.lang.String], void)}
; {var1855=org.apache.ibatis.javassist.CtClassType, var3794=r0, var3581=r5, var2292=null_type, var2057=org.apache.ibatis.javassist.CtMember$Cache, var3148=r1, var3664=org.apache.ibatis.javassist.CtMember, var1336=r13, var2288=r2, var1717=org.apache.ibatis.javassist.NotFoundException, var2458=$r3, var1061=$r4, var1696=$r6, var188=$r8, var412=org.apache.ibatis.javassist.CtClass, var6=$r7, var701=$r9, var828=$r10}
; {org.apache.ibatis.javassist.CtClassType=var1855, r0=var3794, r5=var3581, null_type=var2292, org.apache.ibatis.javassist.CtMember$Cache=var2057, r1=var3148, org.apache.ibatis.javassist.CtMember=var3664, r13=var1336, r2=var2288, org.apache.ibatis.javassist.NotFoundException=var1717, $r3=var2458, $r4=var1061, $r6=var1696, $r8=var188, org.apache.ibatis.javassist.CtClass=var412, $r7=var6, $r9=var701, $r10=var828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r5 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMember$Cache getMembers()>();	r13 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember methodHead()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastMethod()>();	if r13 == r2 goto $r3 = new org.apache.ibatis.javassist.NotFoundException;	$r3 = new org.apache.ibatis.javassist.NotFoundException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(..) is not found in ");	$r7 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.javassist.NotFoundException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 3