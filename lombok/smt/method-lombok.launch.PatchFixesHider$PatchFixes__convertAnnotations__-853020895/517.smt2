(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var1459 0)
(declare-sort var2523 0)
(declare-sort var2124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1459_getAnnotations/-1808796163 (var1459) (Array Int var2523))
(declare-fun getLength-Arr-var1435-1 ((Array Int var1435)) Int)
(declare-fun String-init () String)
(declare-fun type/-1501058498 (var1435) var2124)
(declare-fun getLastToken/-1243612748 (var2124) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getLength-Arr-var2523-1 ((Array Int var2523)) Int)
(declare-const null-__Array__Int__var1435__ (Array Int var1435))
(declare-const null-var1459 var1459)
(declare-const null-var1435 var1435)
(declare-const var1106 (Array Int var1435)) ; Statement: r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[] 
(assert (not (= var1106 null-__Array__Int__var1435__)))
(declare-const var574 var1459) ; Statement: r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable 
(assert (not (= var574 null-var1459)))
(assert true) ; Non Conditional
(define-const var425 (Array Int var2523) (var1459_getAnnotations/-1808796163 var574)) ; Statement: r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto i5 = 0 
(assert (not (= var1106 null-__Array__Int__var1435__))) ; Cond: r2 != null 
(define-const var3823 Int 0) ; Statement: i5 = 0 
(define-const var490 Int 0) ; Statement: i6 = 0 
 ; Statement: goto [?= $i8 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var2573 Int (getLength-Arr-var1435-1 var1106)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (< var490 var2573)) ; Cond: i6 < $i8 
(define-const var1714 String String-init) ; Statement: $r13 = new java.lang.String 
(define-const var1835 var1435 (select var1106 var490)) ; Statement: $r4 = r2[i6] 
(define-const var3550 var2124 (type/-1501058498 var1835)) ; Statement: $r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type> 
(assert true)
(define-const var983 (Array Int Int) (getLastToken/-1243612748 var3550)) ; Statement: $r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>() 
(assert true)
;(assert (<init>/-915723298 var1714 var983)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6) 

(declare-const var1714!1 String)
(declare-const var983!1 (Array Int Int))
(define-const var2986 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1560 Int (getLength-Arr-var2523-1 var425)) ; Statement: i0 = lengthof r1 
(define-const var3801 Int 0) ; Statement: i7 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 < i0 goto r7 = r1[i7] 
(assert (not (< var3801 var1560))) ; Negate: Cond: i7 < i0  
 ; Statement: if z1 != 0 goto i5 = i5 + 1 
(assert (not (not (= (ite var2986 1 0) 0)))) ; Negate: Cond: z1 != 0  
(declare-const var1106!1 (Array Int var1435))
(assert (not (= var1106!1 null-__Array__Int__var1435__)))
(assert (= (select var1106!1 var490) null-var1435)) ; Statement: r2[i6] = null 
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var490!1 Int (+ var490 1)) ; Statement: i6 = i6 + 1 
(assert true) ; Non Conditional
(define-const var2573!1 Int (getLength-Arr-var1435-1 var1106!1)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (not (< var490!1 var2573!1))) ; Negate: Cond: i6 < $i8  
(define-const var744 (Array Int var1435) var1106!1) ; Statement: r12 = r2 
(define-const var1204 Int (getLength-Arr-var1435-1 var1106!1)) ; Statement: $i3 = lengthof r2 
 ; Statement: if i5 >= $i3 goto return r12 
(assert (>= var3823 var1204)) ; Cond: i5 >= $i3 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1459_getAnnotations/-1808796163=([org.eclipse.jdt.core.IAnnotatable], org.eclipse.jdt.core.IAnnotation[]), getLength-Arr-var1435-1=([org.eclipse.jdt.internal.compiler.ast.Annotation[]], int), String-init=([], java.lang.String), type/-1501058498=([org.eclipse.jdt.internal.compiler.ast.Annotation], org.eclipse.jdt.internal.compiler.ast.TypeReference), getLastToken/-1243612748=([org.eclipse.jdt.internal.compiler.ast.TypeReference], char[]), <init>/-915723298=([java.lang.String, char[]], void), getLength-Arr-var2523-1=([org.eclipse.jdt.core.IAnnotation[]], int)}
; {var1435=org.eclipse.jdt.internal.compiler.ast.Annotation, var1106=r2, var1459=org.eclipse.jdt.core.IAnnotatable, var574=r0, var2523=org.eclipse.jdt.core.IAnnotation, var425=r1, var3823=i5, var490=i6, var2573=$i8, var1714=$r13, var1835=$r4, var2124=org.eclipse.jdt.internal.compiler.ast.TypeReference, var3550=$r5, var983=$r6, var2986=z1, var1560=i0, var3801=i7, var744=r12, var1204=$i3}
; {org.eclipse.jdt.internal.compiler.ast.Annotation=var1435, r2=var1106, org.eclipse.jdt.core.IAnnotatable=var1459, r0=var574, org.eclipse.jdt.core.IAnnotation=var2523, r1=var425, i5=var3823, i6=var490, $i8=var2573, $r13=var1714, $r4=var1835, org.eclipse.jdt.internal.compiler.ast.TypeReference=var2124, $r5=var3550, $r6=var983, z1=var2986, i0=var1560, i7=var3801, r12=var744, $i3=var1204}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[];	r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable;	r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>();	goto [?= (branch)];	if r2 != null goto i5 = 0;	i5 = 0;	i6 = 0;	goto [?= $i8 = lengthof r2];	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	$r13 = new java.lang.String;	$r4 = r2[i6];	$r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type>;	$r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>();	specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6);	z1 = 0;	i0 = lengthof r1;	i7 = 0;	goto [?= (branch)];	if i7 < i0 goto r7 = r1[i7];	if z1 != 0 goto i5 = i5 + 1;	r2[i6] = null;	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	r12 = r2;	$i3 = lengthof r2;	if i5 >= $i3 goto return r12;	return r12
;block_num 14