(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var1073 0)
(declare-sort var2272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNext/1096066462 (var1073) Bool)
(declare-fun var2272-init () var2272)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var2272 String) void)
(declare-const null-var120 var120)
(declare-const null-var1073 var1073)
(declare-const null-Int Int)
(declare-const var880 var120) ; Statement: r7 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer 
(assert (not (= var880 null-var120)))
(declare-const var2605 var1073) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2605 null-var1073)))
(declare-const var2689 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2689 null-Int)))
(assert true)
(define-const var1923 Bool (hasNext/1096066462 var2605)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int lookAhead()>() 
(assert (not (not (= (ite var1923 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var475 var2272 var2272-init) ; Statement: $r1 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var1282 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1282)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1282!1 String)
(assert (= var1282!1 ""))
(assert true)
(define-const var3884 String (append/672562846 var1282!1 "Execution falls off end! [pos = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Execution falls off end! [pos = ") 
(declare-const var1282!2 String)
(assert (= var1282!2 (str.++ var1282!1 "Execution falls off end! [pos = ")))
(assert true)
(define-const var3049 String (append/-1001720160 var3884 var2689)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3884!1 String)
(assert (str.prefixof var3884 var3884!1))
(assert true)
(define-const var370 String (append/672562846 var3049 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3049!1 String)
(assert (= var3049!1 (str.++ var3049 "]")))
(assert true)
(define-const var980 String (toString/-2075883882 var370)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var475 var980)) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r6) 

(declare-const var475!1 var2272)
(declare-const var980!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNext/1096066462=([org.apache.ibatis.javassist.bytecode.CodeIterator], boolean), var2272-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var120=org.apache.ibatis.javassist.bytecode.analysis.Analyzer, var880=r7, var1073=org.apache.ibatis.javassist.bytecode.CodeIterator, var2605=r0, var2689=i1, var1923=$z0, var2272=org.apache.ibatis.javassist.bytecode.BadBytecode, var475=$r1, var1282=$r2, var3884=$r3, var3049=$r4, var370=$r5, var980=$r6}
; {org.apache.ibatis.javassist.bytecode.analysis.Analyzer=var120, r7=var880, org.apache.ibatis.javassist.bytecode.CodeIterator=var1073, r0=var2605, i1=var2689, $z0=var1923, org.apache.ibatis.javassist.bytecode.BadBytecode=var2272, $r1=var475, $r2=var1282, $r3=var3884, $r4=var3049, $r5=var370, $r6=var980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i1 := @parameter1: int;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: boolean hasNext()>();	if $z0 != 0 goto $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int lookAhead()>();	$r1 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Execution falls off end! [pos = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2