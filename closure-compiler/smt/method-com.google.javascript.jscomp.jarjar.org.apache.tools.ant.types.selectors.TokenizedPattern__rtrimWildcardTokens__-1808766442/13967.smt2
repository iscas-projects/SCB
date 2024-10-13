(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2531 0)
(declare-sort var1499 0)
(declare-sort var1835 0)
(declare-sort var1410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun tokenizedPattern/1998934357 (var2531) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1499_arraycopy/-325913181 (var1835 Int var1835 Int Int) void)
(declare-fun cast-from-__Array__Int__String__-to-var1835 ((Array Int String)) var1835)
(declare-fun var1410-init () var1410)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1853638167 (var1410 String (Array Int String)) void)
(declare-const null-var2531 var2531)
(declare-const var286 var2531) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern 
(assert (not (= var286 null-var2531)))
(define-const var879 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var879)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var879!1 String)
(assert (= var879!1 ""))
(define-const var2789 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var28 (Array Int String) (tokenizedPattern/1998934357 var286)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String[] tokenizedPattern> 
(define-const var2740 Int (getLength-Arr-String-1 var28)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i5 >= $i0 goto (branch) 
(assert (>= var2789 var2740)) ; Cond: i5 >= $i0 
 ; Statement: if i5 != 0 goto r3 = newarray (java.lang.String)[i5] 
(assert (not (= var2789 0))) ; Cond: i5 != 0 
(define-const var2243 (Array Int String) arr-String-init) ; Statement: r3 = newarray (java.lang.String)[i5] 
(define-const var1649 (Array Int String) (tokenizedPattern/1998934357 var286)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String[] tokenizedPattern> 
;(assert (var1499_arraycopy/-325913181 (cast-from-__Array__Int__String__-to-var1835 var1649) 0 (cast-from-__Array__Int__String__-to-var1835 var2243) 0 var2789)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r4, 0, r3, 0, i5) 

(declare-const var1649!1 (Array Int String))
(declare-const var320 Int)
(declare-const var2243!1 (Array Int String))
(declare-const var320!1 Int)
(declare-const var2789!1 Int)
(define-const var1107 var1410 var1410-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath 
(assert true)
(define-const var1350 String (toString/-2075883882 var879!1)) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1853638167 var1107 var1350 var2243!1)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: void <init>(java.lang.String,java.lang.String[])>($r6, r3) 

(declare-const var1107!1 var1410)
(declare-const var1350!1 String)
(declare-const var2243!2 (Array Int String))
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), tokenizedPattern/1998934357=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-String-init=([], java.lang.String[]), var1499_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__String__-to-var1835=([java.lang.String[]], java.lang.Object), var1410-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1853638167=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath, java.lang.String, java.lang.String[]], void)}
; {var2531=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern, var286=r1, var879=$r13, var2789=i5, var28=$r2, var2740=$i0, var2243=r3, var1649=$r4, var1499=java.lang.System, var1835=java.lang.Object, var320=0, var1410=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath, var1107=$r14, var1350=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern=var2531, r1=var286, $r13=var879, i5=var2789, $r2=var28, $i0=var2740, r3=var2243, $r4=var1649, java.lang.System=var1499, java.lang.Object=var1835, 0=var320, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath=var1410, $r14=var1107, $r6=var1350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String[] tokenizedPattern>;	$i0 = lengthof $r2;	if i5 >= $i0 goto (branch);	if i5 != 0 goto r3 = newarray (java.lang.String)[i5];	r3 = newarray (java.lang.String)[i5];	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String[] tokenizedPattern>;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r4, 0, r3, 0, i5);	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath;	$r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: void <init>(java.lang.String,java.lang.String[])>($r6, r3);	return $r14
;block_num 4