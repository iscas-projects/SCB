(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort var258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var258_replace/2010041407 (String String String Bool Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1213 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1213 null-String)))
(declare-const var2991 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2991 null-String)))
(declare-const var325 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var325 null-String)))
(declare-const var3433 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3433 null-String)))
(declare-const var2095 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2095 null-Bool)))
(declare-const var3925 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3925 null-Bool)))
 ; Statement: if z0 == 0 goto $z8 = 1 
(assert (= (ite var2095 1 0) 0)) ; Cond: z0 == 0 
(define-const var2763 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
(define-const var2044 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z1 = $z7] 
(assert true) ; Non Conditional
(define-const var3249 Bool var2044) ; Statement: z1 = $z7 
 ; Statement: if $z8 == 0 goto $z10 = 0 
(assert (= (ite var2763 1 0) 0)) ; Cond: $z8 == 0 
(define-const var2681 Bool (ite (= 1 0) true false)) ; Statement: $z10 = 0 
(define-const var3150 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(assert true) ; Non Conditional
(define-const var2912 Bool var3150) ; Statement: z2 = $z9 
(define-const var739 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var739 var1213)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>(r0) 
(declare-const var739!1 String)
(assert (= var739!1 var1213))
 ; Statement: if $z10 == 0 goto (branch) 
(assert (= (ite var2681 1 0) 0)) ; Cond: $z10 == 0 
 ; Statement: if z1 == 0 goto $r7 = r1 
(assert (= (ite var3249 1 0) 0)) ; Cond: z1 == 0 
(define-const var1785 String var325) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var739!1 var1785)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var739!2 String)
(assert (= var739!2 (str.++ var739!1 var1785)))
 ; Statement: if z2 == 0 goto $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3) 
(assert (= (ite var2912 1 0) 0)) ; Cond: z2 == 0 
(define-const var1686 String (var258_replace/2010041407 var2991 var325 var3433 var2095 var3925)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3) 
(assert true)
;(assert (append/672562846 var739!2 var1686)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var739!3 String)
(assert (= var739!3 (str.++ var739!2 var1686)))
(assert true)
(define-const var3677 String (toString/-2075883882 var739!3)) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var258_replace/2010041407=([java.lang.String, java.lang.String, java.lang.String, boolean, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1213=r0, var2182=null_type, var2991=r2, var325=r1, var3433=r3, var2095=z0, var3925=z3, var2763=$z8, var2044=$z7, var3249=z1, var2681=$z10, var3150=$z9, var2912=z2, var739=$r8, var1785=$r7, var258=org.hibernate.internal.util.StringHelper, var1686=$r4, var3677=$r5}
; {r0=var1213, null_type=var2182, r2=var2991, r1=var325, r3=var3433, z0=var2095, z3=var3925, $z8=var2763, $z7=var2044, z1=var3249, $z10=var2681, $z9=var3150, z2=var2912, $r8=var739, $r7=var1785, org.hibernate.internal.util.StringHelper=var258, $r4=var1686, $r5=var3677}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	z3 := @parameter5: boolean;	if z0 == 0 goto $z8 = 1;	$z8 = 1;	$z7 = 1;	goto [?= z1 = $z7];	z1 = $z7;	if $z8 == 0 goto $z10 = 0;	$z10 = 0;	$z9 = 0;	z2 = $z9;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>(r0);	if $z10 == 0 goto (branch);	if z1 == 0 goto $r7 = r1;	$r7 = r1;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	if z2 == 0 goto $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3);	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9