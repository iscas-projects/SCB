(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var16 0)
(declare-sort var994 0)
(declare-sort var1958 0)
(declare-sort var3761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var994_getAnnotations/-1808796163 (var994) (Array Int var1958))
(declare-fun getLength-Arr-var16-1 ((Array Int var16)) Int)
(declare-fun String-init () String)
(declare-fun type/-1501058498 (var16) var3761)
(declare-fun getLastToken/-1243612748 (var3761) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getLength-Arr-var1958-1 ((Array Int var1958)) Int)
(declare-fun arr-var16-init () (Array Int var16))
(declare-const null-__Array__Int__var16__ (Array Int var16))
(declare-const null-var994 var994)
(declare-const null-var16 var16)
(declare-const var3828 (Array Int var16)) ; Statement: r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[] 
(assert (not (= var3828 null-__Array__Int__var16__)))
(declare-const var1753 var994) ; Statement: r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable 
(assert (not (= var1753 null-var994)))
(assert true) ; Non Conditional
(define-const var2864 (Array Int var1958) (var994_getAnnotations/-1808796163 var1753)) ; Statement: r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto i5 = 0 
(assert (not (= var3828 null-__Array__Int__var16__))) ; Cond: r2 != null 
(define-const var3259 Int 0) ; Statement: i5 = 0 
(define-const var224 Int 0) ; Statement: i6 = 0 
 ; Statement: goto [?= $i8 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var81 Int (getLength-Arr-var16-1 var3828)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (< var224 var81)) ; Cond: i6 < $i8 
(define-const var388 String String-init) ; Statement: $r13 = new java.lang.String 
(define-const var633 var16 (select var3828 var224)) ; Statement: $r4 = r2[i6] 
(define-const var2023 var3761 (type/-1501058498 var633)) ; Statement: $r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type> 
(assert true)
(define-const var2945 (Array Int Int) (getLastToken/-1243612748 var2023)) ; Statement: $r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>() 
(assert true)
;(assert (<init>/-915723298 var388 var2945)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6) 

(declare-const var388!1 String)
(declare-const var2945!1 (Array Int Int))
(define-const var3502 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var275 Int (getLength-Arr-var1958-1 var2864)) ; Statement: i0 = lengthof r1 
(define-const var2218 Int 0) ; Statement: i7 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 < i0 goto r7 = r1[i7] 
(assert (not (< var2218 var275))) ; Negate: Cond: i7 < i0  
 ; Statement: if z1 != 0 goto i5 = i5 + 1 
(assert (not (not (= (ite var3502 1 0) 0)))) ; Negate: Cond: z1 != 0  
(declare-const var3828!1 (Array Int var16))
(assert (not (= var3828!1 null-__Array__Int__var16__)))
(assert (= (select var3828!1 var224) null-var16)) ; Statement: r2[i6] = null 
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var224!1 Int (+ var224 1)) ; Statement: i6 = i6 + 1 
(assert true) ; Non Conditional
(define-const var81!1 Int (getLength-Arr-var16-1 var3828!1)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i6 < $i8 goto $r13 = new java.lang.String 
(assert (not (< var224!1 var81!1))) ; Negate: Cond: i6 < $i8  
(define-const var3355 (Array Int var16) var3828!1) ; Statement: r12 = r2 
(define-const var1503 Int (getLength-Arr-var16-1 var3828!1)) ; Statement: $i3 = lengthof r2 
 ; Statement: if i5 >= $i3 goto return r12 
(assert (not (>= var3259 var1503))) ; Negate: Cond: i5 >= $i3  
(define-const var3355!1 (Array Int var16) arr-var16-init) ; Statement: r12 = newarray (org.eclipse.jdt.internal.compiler.ast.Annotation)[i5] 
(define-const var835 Int 0) ; Statement: i9 = 0 
(define-const var3851 Int 0) ; Statement: i10 = 0 
 ; Statement: goto [?= $i11 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var2993 Int (getLength-Arr-var16-1 var3828!1)) ; Statement: $i11 = lengthof r2 
 ; Statement: if i10 < $i11 goto $r8 = r2[i10] 
(assert (not (< var3851 var2993))) ; Negate: Cond: i10 < $i11  
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var994_getAnnotations/-1808796163=([org.eclipse.jdt.core.IAnnotatable], org.eclipse.jdt.core.IAnnotation[]), getLength-Arr-var16-1=([org.eclipse.jdt.internal.compiler.ast.Annotation[]], int), String-init=([], java.lang.String), type/-1501058498=([org.eclipse.jdt.internal.compiler.ast.Annotation], org.eclipse.jdt.internal.compiler.ast.TypeReference), getLastToken/-1243612748=([org.eclipse.jdt.internal.compiler.ast.TypeReference], char[]), <init>/-915723298=([java.lang.String, char[]], void), getLength-Arr-var1958-1=([org.eclipse.jdt.core.IAnnotation[]], int), arr-var16-init=([], org.eclipse.jdt.internal.compiler.ast.Annotation[])}
; {var16=org.eclipse.jdt.internal.compiler.ast.Annotation, var3828=r2, var994=org.eclipse.jdt.core.IAnnotatable, var1753=r0, var1958=org.eclipse.jdt.core.IAnnotation, var2864=r1, var3259=i5, var224=i6, var81=$i8, var388=$r13, var633=$r4, var3761=org.eclipse.jdt.internal.compiler.ast.TypeReference, var2023=$r5, var2945=$r6, var3502=z1, var275=i0, var2218=i7, var3355=r12, var1503=$i3, var835=i9, var3851=i10, var2993=$i11}
; {org.eclipse.jdt.internal.compiler.ast.Annotation=var16, r2=var3828, org.eclipse.jdt.core.IAnnotatable=var994, r0=var1753, org.eclipse.jdt.core.IAnnotation=var1958, r1=var2864, i5=var3259, i6=var224, $i8=var81, $r13=var388, $r4=var633, org.eclipse.jdt.internal.compiler.ast.TypeReference=var3761, $r5=var2023, $r6=var2945, z1=var3502, i0=var275, i7=var2218, r12=var3355, $i3=var1503, i9=var835, i10=var3851, $i11=var2993}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @parameter0: org.eclipse.jdt.internal.compiler.ast.Annotation[];	r0 := @parameter1: org.eclipse.jdt.core.IAnnotatable;	r1 = interfaceinvoke r0.<org.eclipse.jdt.core.IAnnotatable: org.eclipse.jdt.core.IAnnotation[] getAnnotations()>();	goto [?= (branch)];	if r2 != null goto i5 = 0;	i5 = 0;	i6 = 0;	goto [?= $i8 = lengthof r2];	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	$r13 = new java.lang.String;	$r4 = r2[i6];	$r5 = $r4.<org.eclipse.jdt.internal.compiler.ast.Annotation: org.eclipse.jdt.internal.compiler.ast.TypeReference type>;	$r6 = virtualinvoke $r5.<org.eclipse.jdt.internal.compiler.ast.TypeReference: char[] getLastToken()>();	specialinvoke $r13.<java.lang.String: void <init>(char[])>($r6);	z1 = 0;	i0 = lengthof r1;	i7 = 0;	goto [?= (branch)];	if i7 < i0 goto r7 = r1[i7];	if z1 != 0 goto i5 = i5 + 1;	r2[i6] = null;	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	$i8 = lengthof r2;	if i6 < $i8 goto $r13 = new java.lang.String;	r12 = r2;	$i3 = lengthof r2;	if i5 >= $i3 goto return r12;	r12 = newarray (org.eclipse.jdt.internal.compiler.ast.Annotation)[i5];	i9 = 0;	i10 = 0;	goto [?= $i11 = lengthof r2];	$i11 = lengthof r2;	if i10 < $i11 goto $r8 = r2[i10];	return r12
;block_num 16