(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2912 0)
(declare-sort var2717 0)
(declare-sort var725 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2717_getAnnotations/-1808796163 (var2717) (Array Int var725))
(declare-fun getLength-Arr-var2912-1 ((Array Int var2912)) Int)
(declare-fun String-init () String)
(declare-fun type/-1501058498 (var2912) var654)
(declare-fun getLastToken/-1243612748 (var654) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getLength-Arr-var725-1 ((Array Int var725)) Int)
(declare-const null-__Array__Int__var2912__ (Array Int var2912))
(declare-const null-var2717 var2717)
(declare-const var665 (Array Int var2912)) ; Statement: r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[] 
(assert (not (= var665 null-__Array__Int__var2912__)))
(declare-const var2668 var2717) ; Statement: r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable 
(assert (not (= var2668 null-var2717)))
(assert true) ; Non Conditional
(define-const var2601 (Array Int var725) (var2717_getAnnotations/-1808796163 var2668)) ; Statement: r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto i5 = 0 
(assert (not (= var665 null-__Array__Int__var2912__))) ; Cond: r2 != null 
(define-const var806 Int 0) ; Statement: i5 = 0 
(define-const var562 Int 0) ; Statement: i6 = 0 
 ; Statement: goto [?= $i8 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var34 Int (getLength-Arr-var2912-1 var665)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (< var562 var34)) ; Cond: i6 < $i8 
(define-const var3229 String String-init) ; Statement: $r13 = new java.lang.String 
(define-const var1326 var2912 (select var665 var562)) ; Statement: $r4 = r2[i6] 
(define-const var486 var654 (type/-1501058498 var1326)) ; Statement: $r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type> 
(assert true)
(define-const var3662 (Array Int Int) (getLastToken/-1243612748 var486)) ; Statement: $r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>() 
(assert true)
;(assert (<init>/-915723298 var3229 var3662)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6) 

(declare-const var3229!1 String)
(declare-const var3662!1 (Array Int Int))
(define-const var2584 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var100 Int (getLength-Arr-var725-1 var2601)) ; Statement: i0 = lengthof r1 
(define-const var1113 Int 0) ; Statement: i7 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 < i0 goto r7 = r1[i7] 
(assert (not (< var1113 var100))) ; Negate: Cond: i7 < i0  
 ; Statement: if z1 != 0 goto i5 = i5 + 1 
(assert (not (= (ite var2584 1 0) 0))) ; Cond: z1 != 0 
(define-const var806!1 Int (+ var806 1)) ; Statement: i5 = i5 + 1 
(assert true) ; Non Conditional
(define-const var562!1 Int (+ var562 1)) ; Statement: i6 = i6 + 1 
(assert true) ; Non Conditional
(define-const var34!1 Int (getLength-Arr-var2912-1 var665)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (not (< var562!1 var34!1))) ; Negate: Cond: i6 < $i8  
(define-const var1623 (Array Int var2912) var665) ; Statement: r12 = r2 
(define-const var2189 Int (getLength-Arr-var2912-1 var665)) ; Statement: $i3 = lengthof r2 
 ; Statement: if i5 >= $i3 goto return r12 
(assert (>= var806!1 var2189)) ; Cond: i5 >= $i3 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2717_getAnnotations/-1808796163=([org.eclipse.jdt.core.IAnnotatable], org.eclipse.jdt.core.IAnnotation[]), getLength-Arr-var2912-1=([org.eclipse.jdt.internal.compiler.ast.Annotation[]], int), String-init=([], java.lang.String), type/-1501058498=([org.eclipse.jdt.internal.compiler.ast.Annotation], org.eclipse.jdt.internal.compiler.ast.TypeReference), getLastToken/-1243612748=([org.eclipse.jdt.internal.compiler.ast.TypeReference], char[]), <init>/-915723298=([java.lang.String, char[]], void), getLength-Arr-var725-1=([org.eclipse.jdt.core.IAnnotation[]], int)}
; {var2912=org.eclipse.jdt.internal.compiler.ast.Annotation, var665=r2, var2717=org.eclipse.jdt.core.IAnnotatable, var2668=r0, var725=org.eclipse.jdt.core.IAnnotation, var2601=r1, var806=i5, var562=i6, var34=$i8, var3229=$r13, var1326=$r4, var654=org.eclipse.jdt.internal.compiler.ast.TypeReference, var486=$r5, var3662=$r6, var2584=z1, var100=i0, var1113=i7, var1623=r12, var2189=$i3}
; {org.eclipse.jdt.internal.compiler.ast.Annotation=var2912, r2=var665, org.eclipse.jdt.core.IAnnotatable=var2717, r0=var2668, org.eclipse.jdt.core.IAnnotation=var725, r1=var2601, i5=var806, i6=var562, $i8=var34, $r13=var3229, $r4=var1326, org.eclipse.jdt.internal.compiler.ast.TypeReference=var654, $r5=var486, $r6=var3662, z1=var2584, i0=var100, i7=var1113, r12=var1623, $i3=var2189}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[];	r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable;	r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>();	goto [?= (branch)];	if r2 != null goto i5 = 0;	i5 = 0;	i6 = 0;	goto [?= $i8 = lengthof r2];	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	$r13 = new java.lang.String;	$r4 = r2[i6];	$r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type>;	$r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>();	specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6);	z1 = 0;	i0 = lengthof r1;	i7 = 0;	goto [?= (branch)];	if i7 < i0 goto r7 = r1[i7];	if z1 != 0 goto i5 = i5 + 1;	i5 = i5 + 1;	i6 = i6 + 1;	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	r12 = r2;	$i3 = lengthof r2;	if i5 >= $i3 goto return r12;	return r12
;block_num 14