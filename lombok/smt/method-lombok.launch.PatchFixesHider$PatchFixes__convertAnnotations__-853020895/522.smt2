(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort var1042 0)
(declare-sort var2335 0)
(declare-sort var499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1042_getAnnotations/-1808796163 (var1042) (Array Int var2335))
(declare-fun getLength-Arr-var1408-1 ((Array Int var1408)) Int)
(declare-fun String-init () String)
(declare-fun type/-1501058498 (var1408) var499)
(declare-fun getLastToken/-1243612748 (var499) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getLength-Arr-var2335-1 ((Array Int var2335)) Int)
(declare-fun arr-var1408-init () (Array Int var1408))
(declare-const null-__Array__Int__var1408__ (Array Int var1408))
(declare-const null-var1042 var1042)
(declare-const var2707 (Array Int var1408)) ; Statement: r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[] 
(assert (not (= var2707 null-__Array__Int__var1408__)))
(declare-const var540 var1042) ; Statement: r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable 
(assert (not (= var540 null-var1042)))
(assert true) ; Non Conditional
(define-const var2252 (Array Int var2335) (var1042_getAnnotations/-1808796163 var540)) ; Statement: r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto i5 = 0 
(assert (not (= var2707 null-__Array__Int__var1408__))) ; Cond: r2 != null 
(define-const var2562 Int 0) ; Statement: i5 = 0 
(define-const var2461 Int 0) ; Statement: i6 = 0 
 ; Statement: goto [?= $i8 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var2627 Int (getLength-Arr-var1408-1 var2707)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (< var2461 var2627)) ; Cond: i6 < $i8 
(define-const var3830 String String-init) ; Statement: $r13 = new java.lang.String 
(define-const var3592 var1408 (select var2707 var2461)) ; Statement: $r4 = r2[i6] 
(define-const var2618 var499 (type/-1501058498 var3592)) ; Statement: $r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type> 
(assert true)
(define-const var3333 (Array Int Int) (getLastToken/-1243612748 var2618)) ; Statement: $r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>() 
(assert true)
;(assert (<init>/-915723298 var3830 var3333)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6) 

(declare-const var3830!1 String)
(declare-const var3333!1 (Array Int Int))
(define-const var216 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3479 Int (getLength-Arr-var2335-1 var2252)) ; Statement: i0 = lengthof r1 
(define-const var3234 Int 0) ; Statement: i7 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 < i0 goto r7 = r1[i7] 
(assert (not (< var3234 var3479))) ; Negate: Cond: i7 < i0  
 ; Statement: if z1 != 0 goto i5 = i5 + 1 
(assert (not (= (ite var216 1 0) 0))) ; Cond: z1 != 0 
(define-const var2562!1 Int (+ var2562 1)) ; Statement: i5 = i5 + 1 
(assert true) ; Non Conditional
(define-const var2461!1 Int (+ var2461 1)) ; Statement: i6 = i6 + 1 
(assert true) ; Non Conditional
(define-const var2627!1 Int (getLength-Arr-var1408-1 var2707)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (not (< var2461!1 var2627!1))) ; Negate: Cond: i6 < $i8  
(define-const var926 (Array Int var1408) var2707) ; Statement: r12 = r2 
(define-const var1364 Int (getLength-Arr-var1408-1 var2707)) ; Statement: $i3 = lengthof r2 
 ; Statement: if i5 >= $i3 goto return r12 
(assert (not (>= var2562!1 var1364))) ; Negate: Cond: i5 >= $i3  
(define-const var926!1 (Array Int var1408) arr-var1408-init) ; Statement: r12 = newarray (org.eclipse.jdt.internal.compiler.ast.Annotation)[i5] 
(define-const var2388 Int 0) ; Statement: i9 = 0 
(define-const var3014 Int 0) ; Statement: i10 = 0 
 ; Statement: goto [?= $i11 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var2426 Int (getLength-Arr-var1408-1 var2707)) ; Statement: $i11 = lengthof r2 
 ; Statement: if i10 < $i11 goto $r8 = r2[i10] 
(assert (not (< var3014 var2426))) ; Negate: Cond: i10 < $i11  
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1042_getAnnotations/-1808796163=([org.eclipse.jdt.core.IAnnotatable], org.eclipse.jdt.core.IAnnotation[]), getLength-Arr-var1408-1=([org.eclipse.jdt.internal.compiler.ast.Annotation[]], int), String-init=([], java.lang.String), type/-1501058498=([org.eclipse.jdt.internal.compiler.ast.Annotation], org.eclipse.jdt.internal.compiler.ast.TypeReference), getLastToken/-1243612748=([org.eclipse.jdt.internal.compiler.ast.TypeReference], char[]), <init>/-915723298=([java.lang.String, char[]], void), getLength-Arr-var2335-1=([org.eclipse.jdt.core.IAnnotation[]], int), arr-var1408-init=([], org.eclipse.jdt.internal.compiler.ast.Annotation[])}
; {var1408=org.eclipse.jdt.internal.compiler.ast.Annotation, var2707=r2, var1042=org.eclipse.jdt.core.IAnnotatable, var540=r0, var2335=org.eclipse.jdt.core.IAnnotation, var2252=r1, var2562=i5, var2461=i6, var2627=$i8, var3830=$r13, var3592=$r4, var499=org.eclipse.jdt.internal.compiler.ast.TypeReference, var2618=$r5, var3333=$r6, var216=z1, var3479=i0, var3234=i7, var926=r12, var1364=$i3, var2388=i9, var3014=i10, var2426=$i11}
; {org.eclipse.jdt.internal.compiler.ast.Annotation=var1408, r2=var2707, org.eclipse.jdt.core.IAnnotatable=var1042, r0=var540, org.eclipse.jdt.core.IAnnotation=var2335, r1=var2252, i5=var2562, i6=var2461, $i8=var2627, $r13=var3830, $r4=var3592, org.eclipse.jdt.internal.compiler.ast.TypeReference=var499, $r5=var2618, $r6=var3333, z1=var216, i0=var3479, i7=var3234, r12=var926, $i3=var1364, i9=var2388, i10=var3014, $i11=var2426}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[];	r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable;	r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>();	goto [?= (branch)];	if r2 != null goto i5 = 0;	i5 = 0;	i6 = 0;	goto [?= $i8 = lengthof r2];	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	$r13 = new java.lang.String;	$r4 = r2[i6];	$r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type>;	$r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>();	specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6);	z1 = 0;	i0 = lengthof r1;	i7 = 0;	goto [?= (branch)];	if i7 < i0 goto r7 = r1[i7];	if z1 != 0 goto i5 = i5 + 1;	i5 = i5 + 1;	i6 = i6 + 1;	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	r12 = r2;	$i3 = lengthof r2;	if i5 >= $i3 goto return r12;	r12 = newarray (org.eclipse.jdt.internal.compiler.ast.Annotation)[i5];	i9 = 0;	i10 = 0;	goto [?= $i11 = lengthof r2];	$i11 = lengthof r2;	if i10 < $i11 goto $r8 = r2[i10];	return r12
;block_num 16