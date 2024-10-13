(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2702 0)
(declare-sort var3854 0)
(declare-sort var2888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayDim/-21816708 (var2702) Int)
(declare-fun get/-162042672 (var3854) Int)
(declare-fun inStaticMethod/-21816708 (var2702) Bool)
(declare-fun var2888-init () var2888)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var2888 String) void)
(declare-const null-var2702 var2702)
(declare-const null-var3854 var3854)
(declare-const var1311 var2702) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var1311 null-var2702)))
(declare-const var1494 var3854) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword 
(assert (not (= var1494 null-var3854)))
(declare-const var1311!1 var2702)
(assert (not (= var1311!1 null-var2702)))
(assert (= (arrayDim/-21816708 var1311!1) 0)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0 
(assert true)
(define-const var3280 Int (get/-162042672 var1494)) ; Statement: i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>() 
 ; Statement: lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); } 
(assert (and (= var3280 336) true)) ; Intersect: Cond: i0 == 336  and Non Conditional 
(define-const var3900 Bool (inStaticMethod/-21816708 var1311!1)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod> 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert (not (= (ite var3900 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2299 var2888 var2888-init) ; Statement: $r8 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var3745 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3745)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3745!1 String)
(assert (= var3745!1 ""))
(assert true)
(define-const var1761 String (append/672562846 var3745!1 "not-available: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not-available: ") 
(declare-const var3745!2 String)
(assert (= var3745!2 (str.++ var3745!1 "not-available: ")))
 ; Statement: if i0 != 339 goto $r13 = "super" 
(assert (not (= var3280 339))) ; Cond: i0 != 339 
(define-const var2714 String "super") ; Statement: $r13 = "super" 
(assert true) ; Non Conditional
(assert true)
(define-const var2704 String (append/672562846 var1761 var2714)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1761!1 String)
(assert (= var1761!1 (str.++ var1761 var2714)))
(assert true)
(define-const var884 String (toString/-2075883882 var2704)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var2299 var884)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12) 

(declare-const var2299!1 var2888)
(declare-const var884!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), get/-162042672=([org.apache.ibatis.javassist.compiler.ast.Keyword], int), inStaticMethod/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], boolean), var2888-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var2702=org.apache.ibatis.javassist.compiler.CodeGen, var1311=r0, var3854=org.apache.ibatis.javassist.compiler.ast.Keyword, var1494=r1, var3280=i0, var3900=$z0, var2888=org.apache.ibatis.javassist.compiler.CompileError, var2299=$r8, var3745=$r9, var1761=$r10, var2714=$r13, var2704=$r11, var884=$r12}
; {org.apache.ibatis.javassist.compiler.CodeGen=var2702, r0=var1311, org.apache.ibatis.javassist.compiler.ast.Keyword=var3854, r1=var1494, i0=var3280, $z0=var3900, org.apache.ibatis.javassist.compiler.CompileError=var2888, $r8=var2299, $r9=var3745, $r10=var1761, $r13=var2714, $r11=var2704, $r12=var884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword;	r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0;	i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>();	lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); };	$z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;	if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	$r8 = new org.apache.ibatis.javassist.compiler.CompileError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not-available: ");	if i0 != 339 goto $r13 = "super";	$r13 = "super";	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 5