(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1488 0)
(declare-sort var1880 0)
(declare-sort var1289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayDim/-21816708 (var1488) Int)
(declare-fun get/-162042672 (var1880) Int)
(declare-fun inStaticMethod/-21816708 (var1488) Bool)
(declare-fun var1289-init () var1289)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var1289 String) void)
(declare-const null-var1488 var1488)
(declare-const null-var1880 var1880)
(declare-const var1689 var1488) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var1689 null-var1488)))
(declare-const var647 var1880) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword 
(assert (not (= var647 null-var1880)))
(declare-const var1689!1 var1488)
(assert (not (= var1689!1 null-var1488)))
(assert (= (arrayDim/-21816708 var1689!1) 0)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0 
(assert true)
(define-const var3311 Int (get/-162042672 var647)) ; Statement: i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>() 
 ; Statement: lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); } 
(assert (and (= var3311 336) true)) ; Intersect: Cond: i0 == 336  and Non Conditional 
(define-const var775 Bool (inStaticMethod/-21816708 var1689!1)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod> 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert (not (= (ite var775 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3627 var1289 var1289-init) ; Statement: $r8 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var110 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var110)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var110!1 String)
(assert (= var110!1 ""))
(assert true)
(define-const var545 String (append/672562846 var110!1 "not-available: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not-available: ") 
(declare-const var110!2 String)
(assert (= var110!2 (str.++ var110!1 "not-available: ")))
 ; Statement: if i0 != 339 goto $r13 = "super" 
(assert (not (not (= var3311 339)))) ; Negate: Cond: i0 != 339  
(define-const var834 String "this") ; Statement: $r13 = "this" 
 ; Statement: goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2226 String (append/672562846 var545 var834)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var545!1 String)
(assert (= var545!1 (str.++ var545 var834)))
(assert true)
(define-const var112 String (toString/-2075883882 var2226)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3627 var112)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12) 

(declare-const var3627!1 var1289)
(declare-const var112!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), get/-162042672=([org.apache.ibatis.javassist.compiler.ast.Keyword], int), inStaticMethod/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], boolean), var1289-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var1488=org.apache.ibatis.javassist.compiler.CodeGen, var1689=r0, var1880=org.apache.ibatis.javassist.compiler.ast.Keyword, var647=r1, var3311=i0, var775=$z0, var1289=org.apache.ibatis.javassist.compiler.CompileError, var3627=$r8, var110=$r9, var545=$r10, var834=$r13, var2226=$r11, var112=$r12}
; {org.apache.ibatis.javassist.compiler.CodeGen=var1488, r0=var1689, org.apache.ibatis.javassist.compiler.ast.Keyword=var1880, r1=var647, i0=var3311, $z0=var775, org.apache.ibatis.javassist.compiler.CompileError=var1289, $r8=var3627, $r9=var110, $r10=var545, $r13=var834, $r11=var2226, $r12=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword;	r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0;	i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>();	lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); };	$z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;	if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	$r8 = new org.apache.ibatis.javassist.compiler.CompileError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not-available: ");	if i0 != 339 goto $r13 = "super";	$r13 = "this";	goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 5