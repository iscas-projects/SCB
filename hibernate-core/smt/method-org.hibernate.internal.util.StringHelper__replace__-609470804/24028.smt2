(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3201 0)
(declare-sort var2991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2991_replace/2010041407 (String String String Bool Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2174 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2174 null-String)))
(declare-const var3040 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3040 null-String)))
(declare-const var2777 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2777 null-String)))
(declare-const var704 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var704 null-String)))
(declare-const var3404 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3404 null-Bool)))
(declare-const var915 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var915 null-Bool)))
 ; Statement: if z0 == 0 goto $z8 = 1 
(assert (= (ite var3404 1 0) 0)) ; Cond: z0 == 0 
(define-const var1039 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
(define-const var3316 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z1 = $z7] 
(assert true) ; Non Conditional
(define-const var295 Bool var3316) ; Statement: z1 = $z7 
 ; Statement: if $z8 == 0 goto $z10 = 0 
(assert (= (ite var1039 1 0) 0)) ; Cond: $z8 == 0 
(define-const var3972 Bool (ite (= 1 0) true false)) ; Statement: $z10 = 0 
(define-const var2250 Bool (ite (= 1 0) true false)) ; Statement: $z9 = 0 
(assert true) ; Non Conditional
(define-const var3719 Bool var2250) ; Statement: z2 = $z9 
(define-const var434 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var434 var2174)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>(r0) 
(declare-const var434!1 String)
(assert (= var434!1 var2174))
 ; Statement: if $z10 == 0 goto (branch) 
(assert (= (ite var3972 1 0) 0)) ; Cond: $z10 == 0 
 ; Statement: if z1 == 0 goto $r7 = r1 
(assert (not (= (ite var295 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var626 String var704) ; Statement: $r7 = r3 
 ; Statement: goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var434!1 var626)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var434!2 String)
(assert (= var434!2 (str.++ var434!1 var626)))
 ; Statement: if z2 == 0 goto $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3) 
(assert (= (ite var3719 1 0) 0)) ; Cond: z2 == 0 
(define-const var333 String (var2991_replace/2010041407 var3040 var2777 var704 var3404 var915)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3) 
(assert true)
;(assert (append/672562846 var434!2 var333)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var434!3 String)
(assert (= var434!3 (str.++ var434!2 var333)))
(assert true)
(define-const var348 String (toString/-2075883882 var434!3)) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2991_replace/2010041407=([java.lang.String, java.lang.String, java.lang.String, boolean, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2174=r0, var3201=null_type, var3040=r2, var2777=r1, var704=r3, var3404=z0, var915=z3, var1039=$z8, var3316=$z7, var295=z1, var3972=$z10, var2250=$z9, var3719=z2, var434=$r8, var626=$r7, var2991=org.hibernate.internal.util.StringHelper, var333=$r4, var348=$r5}
; {r0=var2174, null_type=var3201, r2=var3040, r1=var2777, r3=var704, z0=var3404, z3=var915, $z8=var1039, $z7=var3316, z1=var295, $z10=var3972, $z9=var2250, z2=var3719, $r8=var434, $r7=var626, org.hibernate.internal.util.StringHelper=var2991, $r4=var333, $r5=var348}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	z3 := @parameter5: boolean;	if z0 == 0 goto $z8 = 1;	$z8 = 1;	$z7 = 1;	goto [?= z1 = $z7];	z1 = $z7;	if $z8 == 0 goto $z10 = 0;	$z10 = 0;	$z9 = 0;	z2 = $z9;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>(r0);	if $z10 == 0 goto (branch);	if z1 == 0 goto $r7 = r1;	$r7 = r3;	goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	if z2 == 0 goto $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3);	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String,boolean,boolean)>(r2, r1, r3, z0, z3);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9