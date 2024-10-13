(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1096 0)
(declare-sort var3904 0)
(declare-sort var3053 0)
(declare-sort var2660 0)
(declare-sort var1339 0)
(declare-sort var197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var197-init () var197)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var197 String) void)
(declare-const null-var1096 var1096)
(declare-const null-var3904 var3904)
(declare-const null-var3053 var3053)
(declare-const null-Int Int)
(declare-const null-var2660 var2660)
(declare-const null-var1339 var1339)
(declare-const var742 var1096) ; Statement: r5 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer 
(assert (not (= var742 null-var1096)))
(declare-const var3580 var3904) ; Statement: r10 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.IntQueue 
(assert (not (= var3580 null-var3904)))
(declare-const var1331 var3053) ; Statement: r6 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var1331 null-var3053)))
(declare-const var488 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var488 null-Int)))
(declare-const var298 var2660) ; Statement: r8 := @parameter3: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var298 null-var2660)))
(declare-const var3382 var1339) ; Statement: r0 := @parameter4: org.apache.ibatis.javassist.bytecode.analysis.Subroutine 
(assert (not (= var3382 null-var1339)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Subroutine: java.util.Collection callers()>() 
(assert (not (not (= var3382 null-var1339)))) ; Negate: Cond: r0 != null  
(define-const var3169 var197 var197-init) ; Statement: $r18 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var1146 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1146)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1146!1 String)
(assert (= var1146!1 ""))
(assert true)
(define-const var3515 String (append/672562846 var1146!1 "Ret on no subroutine! [pos = ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ret on no subroutine! [pos = ") 
(declare-const var1146!2 String)
(assert (= var1146!2 (str.++ var1146!1 "Ret on no subroutine! [pos = ")))
(assert true)
(define-const var3604 String (append/-1001720160 var3515 var488)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3515!1 String)
(assert (str.prefixof var3515 var3515!1))
(assert true)
(define-const var2166 String (append/672562846 var3604 "]")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3604!1 String)
(assert (= var3604!1 (str.++ var3604 "]")))
(assert true)
(define-const var2341 String (toString/-2075883882 var2166)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var3169 var2341)) ; Statement: specialinvoke $r18.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r23) 

(declare-const var3169!1 var197)
(declare-const var2341!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var197-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var1096=org.apache.ibatis.javassist.bytecode.analysis.Analyzer, var742=r5, var3904=org.apache.ibatis.javassist.bytecode.analysis.IntQueue, var3580=r10, var3053=org.apache.ibatis.javassist.bytecode.CodeIterator, var1331=r6, var488=i1, var2660=org.apache.ibatis.javassist.bytecode.analysis.Frame, var298=r8, var1339=org.apache.ibatis.javassist.bytecode.analysis.Subroutine, var3382=r0, var197=org.apache.ibatis.javassist.bytecode.BadBytecode, var3169=$r18, var1146=$r19, var3515=$r20, var3604=$r21, var2166=$r22, var2341=$r23}
; {org.apache.ibatis.javassist.bytecode.analysis.Analyzer=var1096, r5=var742, org.apache.ibatis.javassist.bytecode.analysis.IntQueue=var3904, r10=var3580, org.apache.ibatis.javassist.bytecode.CodeIterator=var3053, r6=var1331, i1=var488, org.apache.ibatis.javassist.bytecode.analysis.Frame=var2660, r8=var298, org.apache.ibatis.javassist.bytecode.analysis.Subroutine=var1339, r0=var3382, org.apache.ibatis.javassist.bytecode.BadBytecode=var197, $r18=var3169, $r19=var1146, $r20=var3515, $r21=var3604, $r22=var2166, $r23=var2341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer;	r10 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.IntQueue;	r6 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator;	i1 := @parameter2: int;	r8 := @parameter3: org.apache.ibatis.javassist.bytecode.analysis.Frame;	r0 := @parameter4: org.apache.ibatis.javassist.bytecode.analysis.Subroutine;	if r0 != null goto $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Subroutine: java.util.Collection callers()>();	$r18 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ret on no subroutine! [pos = ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r23);	throw $r18
;block_num 2