(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var215 0)
(declare-sort var702 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beanClass/1787315416 (var215) ClassObject)
(declare-fun isInstance/451912363 (ClassObject var702) Bool)
(declare-fun stopClass/1787315416 (var215) ClassObject)
(declare-fun var215_visitBeanInfo/1787322211 (ClassObject ClassObject var365) void)
(declare-const null-var215 var215)
(declare-const null-var702 var702)
(declare-const null-var365 var365)
(declare-const var2902 var215) ; Statement: r0 := @this: org.hibernate.internal.util.beans.BeanInfoHelper 
(assert (not (= var2902 null-var215)))
(declare-const var2464 var702) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2464 null-var702)))
(declare-const var2007 var365) ; Statement: r3 := @parameter1: org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate 
(assert (not (= var2007 null-var365)))
(define-const var3018 ClassObject (beanClass/1787315416 var2902)) ; Statement: $r2 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass> 
(assert true)
(define-const var974 Bool (isInstance/451912363 var3018 var2464)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r5 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass> 
(assert (not (= (ite var974 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1861 ClassObject (beanClass/1787315416 var2902)) ; Statement: $r5 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass> 
(define-const var2728 ClassObject (stopClass/1787315416 var2902)) ; Statement: $r4 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class stopClass> 
;(assert (var215_visitBeanInfo/1787322211 var1861 var2728 var2007)) ; Statement: staticinvoke <org.hibernate.internal.util.beans.BeanInfoHelper: void visitBeanInfo(java.lang.Class,java.lang.Class,org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate)>($r5, $r4, r3) 

(declare-const var1861!1 ClassObject)
(declare-const var2728!1 ClassObject)
(declare-const var2007!1 var365)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {beanClass/1787315416=([org.hibernate.internal.util.beans.BeanInfoHelper], java.lang.Class), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), stopClass/1787315416=([org.hibernate.internal.util.beans.BeanInfoHelper], java.lang.Class), var215_visitBeanInfo/1787322211=([java.lang.Class, java.lang.Class, org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate], void)}
; {var215=org.hibernate.internal.util.beans.BeanInfoHelper, var2902=r0, var702=java.lang.Object, var2464=r1, var365=org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate, var2007=r3, var3018=$r2, var974=$z0, var1861=$r5, var2728=$r4}
; {org.hibernate.internal.util.beans.BeanInfoHelper=var215, r0=var2902, java.lang.Object=var702, r1=var2464, org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate=var365, r3=var2007, $r2=var3018, $z0=var974, $r5=var1861, $r4=var2728}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.util.beans.BeanInfoHelper;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate;	$r2 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass>;	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	if $z0 != 0 goto $r5 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass>;	$r5 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass>;	$r4 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class stopClass>;	staticinvoke <org.hibernate.internal.util.beans.BeanInfoHelper: void visitBeanInfo(java.lang.Class,java.lang.Class,org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate)>($r5, $r4, r3);	return
;block_num 2