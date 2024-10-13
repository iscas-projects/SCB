(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1203 0)
(declare-sort var294 0)
(declare-sort var246 0)
(declare-sort var2738 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2617-init () var2617)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var2617 String) void)
(declare-const null-var1203 var1203)
(declare-const null-var294 var294)
(declare-const null-var246 var246)
(declare-const null-var2738 var2738)
(declare-const null-Int Int)
(declare-const var3212 var1203) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer 
(assert (not (= var3212 null-var1203)))
(declare-const var332 var294) ; Statement: r4 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.IntQueue 
(assert (not (= var332 null-var294)))
(declare-const var1072 var246) ; Statement: r3 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var1072 null-var246)))
(declare-const var1539 var2738) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Subroutine 
(assert (not (= var1539 null-var2738)))
(declare-const var3050 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var3050 null-Int)))
(declare-const var3052 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var3052 null-Int)))
 ; Statement: if r0 != null goto $r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Analyzer: org.apache.ibatis.javassist.bytecode.analysis.Frame[] frames> 
(assert (not (not (= var1539 null-var2738)))) ; Negate: Cond: r0 != null  
(define-const var2118 var2617 var2617-init) ; Statement: $r8 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var29 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var29)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var29!1 String)
(assert (= var29!1 ""))
(assert true)
(define-const var3004 String (append/672562846 var29!1 "No subroutine at jsr target! [pos = ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No subroutine at jsr target! [pos = ") 
(declare-const var29!2 String)
(assert (= var29!2 (str.++ var29!1 "No subroutine at jsr target! [pos = ")))
(assert true)
(define-const var3467 String (append/-1001720160 var3004 var3050)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3004!1 String)
(assert (str.prefixof var3004 var3004!1))
(assert true)
(define-const var1183 String (append/672562846 var3467 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3467!1 String)
(assert (= var3467!1 (str.++ var3467 "]")))
(assert true)
(define-const var3029 String (toString/-2075883882 var1183)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var2118 var3029)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r13) 

(declare-const var2118!1 var2617)
(declare-const var3029!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2617-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var1203=org.apache.ibatis.javassist.bytecode.analysis.Analyzer, var3212=r1, var294=org.apache.ibatis.javassist.bytecode.analysis.IntQueue, var332=r4, var246=org.apache.ibatis.javassist.bytecode.analysis.Frame, var1072=r3, var2738=org.apache.ibatis.javassist.bytecode.analysis.Subroutine, var1539=r0, var3050=i2, var3052=i0, var2617=org.apache.ibatis.javassist.bytecode.BadBytecode, var2118=$r8, var29=$r9, var3004=$r10, var3467=$r11, var1183=$r12, var3029=$r13}
; {org.apache.ibatis.javassist.bytecode.analysis.Analyzer=var1203, r1=var3212, org.apache.ibatis.javassist.bytecode.analysis.IntQueue=var294, r4=var332, org.apache.ibatis.javassist.bytecode.analysis.Frame=var246, r3=var1072, org.apache.ibatis.javassist.bytecode.analysis.Subroutine=var2738, r0=var1539, i2=var3050, i0=var3052, org.apache.ibatis.javassist.bytecode.BadBytecode=var2617, $r8=var2118, $r9=var29, $r10=var3004, $r11=var3467, $r12=var1183, $r13=var3029}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer;	r4 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.IntQueue;	r3 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Subroutine;	i2 := @parameter3: int;	i0 := @parameter4: int;	if r0 != null goto $r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Analyzer: org.apache.ibatis.javassist.bytecode.analysis.Frame[] frames>;	$r8 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No subroutine at jsr target! [pos = ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2