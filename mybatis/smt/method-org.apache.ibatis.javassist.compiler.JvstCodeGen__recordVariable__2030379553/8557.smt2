(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2158 0)
(declare-sort var2655 0)
(declare-sort var1961 0)
(declare-sort var2442 0)
(declare-sort var3110 0)
(declare-sort var3299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2442_descToType/-1878891029 (Int) Int)
(declare-fun var3110-init () var3110)
(declare-fun var3299-init () var3299)
(declare-fun <init>/938829241 (var3299 String) void)
(declare-fun <init>/-1945332396 (var3110 Int String Int Int var3299) void)
(declare-fun append/1729685093 (var1961 String var3110) void)
(declare-const null-var2158 var2158)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1961 var1961)
(declare-const var3338 var2158) ; Statement: r3 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen 
(assert (not (= var3338 null-var2158)))
(declare-const var1770 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1770 null-String)))
(declare-const var428 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var428 null-String)))
(declare-const var236 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var236 null-Int)))
(declare-const var625 var1961) ; Statement: r2 := @parameter3: org.apache.ibatis.javassist.compiler.SymbolTable 
(assert (not (= var625 null-var1961)))
(define-const var3499 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var1770) var3499) (<= 0 var3499))))
(define-const var1064 Int (charAt/698050440 var1770 var3499)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i8) 
(define-const var3656 Int (cast-from-Int-to-Int var1064)) ; Statement: $i9 = (int) $c0 
 ; Statement: if $i9 != 91 goto i1 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>($c0) 
(assert (not (= var3656 91))) ; Cond: $i9 != 91 
(define-const var3037 Int (var2442_descToType/-1878891029 var1064)) ; Statement: i1 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>($c0) 
(define-const var3428 String null-String) ; Statement: r4 = null 
 ; Statement: if i1 != 307 goto $r8 = new org.apache.ibatis.javassist.compiler.ast.Declarator 
(assert (not (= var3037 307))) ; Cond: i1 != 307 
(define-const var781 var3110 var3110-init) ; Statement: $r8 = new org.apache.ibatis.javassist.compiler.ast.Declarator 
(define-const var895 var3299 var3299-init) ; Statement: $r7 = new org.apache.ibatis.javassist.compiler.ast.Symbol 
(assert true)
;(assert (<init>/938829241 var895 var428)) ; Statement: specialinvoke $r7.<org.apache.ibatis.javassist.compiler.ast.Symbol: void <init>(java.lang.String)>(r1) 

(declare-const var895!1 var3299)
(declare-const var428!1 String)
(assert true)
;(assert (<init>/-1945332396 var781 var3037 var3428 var3499 var236 var895!1)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.compiler.ast.Declarator: void <init>(int,java.lang.String,int,int,org.apache.ibatis.javassist.compiler.ast.Symbol)>(i1, r4, i8, i2, $r7) 

(declare-const var781!1 var3110)
(declare-const var3037!1 Int)
(declare-const var3428!1 String)
(declare-const var3499!1 Int)
(declare-const var236!1 Int)
(declare-const var895!2 var3299)
(assert true)
;(assert (append/1729685093 var625 var428!1 var781!1)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.compiler.SymbolTable: void append(java.lang.String,org.apache.ibatis.javassist.compiler.ast.Declarator)>(r1, $r8) 

(declare-const var625!1 var1961)
(declare-const var428!2 String)
(declare-const var781!2 var3110)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2442_descToType/-1878891029=([char], int), var3110-init=([], org.apache.ibatis.javassist.compiler.ast.Declarator), var3299-init=([], org.apache.ibatis.javassist.compiler.ast.Symbol), <init>/938829241=([org.apache.ibatis.javassist.compiler.ast.Symbol, java.lang.String], void), <init>/-1945332396=([org.apache.ibatis.javassist.compiler.ast.Declarator, int, java.lang.String, int, int, org.apache.ibatis.javassist.compiler.ast.Symbol], void), append/1729685093=([org.apache.ibatis.javassist.compiler.SymbolTable, java.lang.String, org.apache.ibatis.javassist.compiler.ast.Declarator], void)}
; {var2158=org.apache.ibatis.javassist.compiler.JvstCodeGen, var3338=r3, var1770=r0, var2655=null_type, var428=r1, var236=i2, var1961=org.apache.ibatis.javassist.compiler.SymbolTable, var625=r2, var3499=i8, var1064=$c0, var3656=$i9, var2442=org.apache.ibatis.javassist.compiler.MemberResolver, var3037=i1, var3428=r4, var3110=org.apache.ibatis.javassist.compiler.ast.Declarator, var781=$r8, var3299=org.apache.ibatis.javassist.compiler.ast.Symbol, var895=$r7}
; {org.apache.ibatis.javassist.compiler.JvstCodeGen=var2158, r3=var3338, r0=var1770, null_type=var2655, r1=var428, i2=var236, org.apache.ibatis.javassist.compiler.SymbolTable=var1961, r2=var625, i8=var3499, $c0=var1064, $i9=var3656, org.apache.ibatis.javassist.compiler.MemberResolver=var2442, i1=var3037, r4=var3428, org.apache.ibatis.javassist.compiler.ast.Declarator=var3110, $r8=var781, org.apache.ibatis.javassist.compiler.ast.Symbol=var3299, $r7=var895}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i2 := @parameter2: int;	r2 := @parameter3: org.apache.ibatis.javassist.compiler.SymbolTable;	i8 = 0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i8);	$i9 = (int) $c0;	if $i9 != 91 goto i1 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>($c0);	i1 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>($c0);	r4 = null;	if i1 != 307 goto $r8 = new org.apache.ibatis.javassist.compiler.ast.Declarator;	$r8 = new org.apache.ibatis.javassist.compiler.ast.Declarator;	$r7 = new org.apache.ibatis.javassist.compiler.ast.Symbol;	specialinvoke $r7.<org.apache.ibatis.javassist.compiler.ast.Symbol: void <init>(java.lang.String)>(r1);	specialinvoke $r8.<org.apache.ibatis.javassist.compiler.ast.Declarator: void <init>(int,java.lang.String,int,int,org.apache.ibatis.javassist.compiler.ast.Symbol)>(i1, r4, i8, i2, $r7);	virtualinvoke r2.<org.apache.ibatis.javassist.compiler.SymbolTable: void append(java.lang.String,org.apache.ibatis.javassist.compiler.ast.Declarator)>(r1, $r8);	return
;block_num 4