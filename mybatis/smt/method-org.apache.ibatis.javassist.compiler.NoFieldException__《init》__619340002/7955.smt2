(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3944 0)
(declare-sort var2532 0)
(declare-sort var431 0)
(declare-sort var3194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var3194 String) void)
(declare-fun cast-from-var3944-to-var3194 (var3944) var3194)
(declare-fun fieldName/-721044387 (var3944) String)
(declare-fun expr/-721044387 (var3944) var431)
(declare-const null-var3944 var3944)
(declare-const null-String String)
(declare-const null-var431 var431)
(declare-const var1835 var3944) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.NoFieldException 
(assert (not (= var1835 null-var3944)))
(declare-const var3852 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3852 null-String)))
(declare-const var1874 var431) ; Statement: r6 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var1874 null-var431)))
(define-const var3871 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3871)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3871!1 String)
(assert (= var3871!1 ""))
(assert true)
(define-const var3529 String (append/672562846 var3871!1 "no such field: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such field: ") 
(declare-const var3871!2 String)
(assert (= var3871!2 (str.++ var3871!1 "no such field: ")))
(assert true)
(define-const var1181 String (append/672562846 var3529 var3852)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3529!1 String)
(assert (= var3529!1 (str.++ var3529 var3852)))
(assert true)
(define-const var1968 String (toString/-2075883882 var1181)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 (cast-from-var3944-to-var3194 var1835) var1968)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r5) 

(declare-const var1835!1 var3944)
(declare-const var1968!1 String)
(declare-const var1835!2 var3944)
(assert (not (= var1835!2 null-var3944)))
(assert (= (fieldName/-721044387 var1835!2) var3852)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.NoFieldException: java.lang.String fieldName> = r2 
(declare-const var1835!3 var3944)
(assert (not (= var1835!3 null-var3944)))
(assert (= (expr/-721044387 var1835!3) var1874)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.NoFieldException: org.apache.ibatis.javassist.compiler.ast.ASTree expr> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void), cast-from-var3944-to-var3194=([org.apache.ibatis.javassist.compiler.NoFieldException], org.apache.ibatis.javassist.compiler.CompileError), fieldName/-721044387=([org.apache.ibatis.javassist.compiler.NoFieldException], java.lang.String), expr/-721044387=([org.apache.ibatis.javassist.compiler.NoFieldException], org.apache.ibatis.javassist.compiler.ast.ASTree)}
; {var3944=org.apache.ibatis.javassist.compiler.NoFieldException, var1835=r0, var3852=r2, var2532=null_type, var431=org.apache.ibatis.javassist.compiler.ast.ASTree, var1874=r6, var3871=$r1, var3529=$r3, var1181=$r4, var1968=$r5, var3194=org.apache.ibatis.javassist.compiler.CompileError}
; {org.apache.ibatis.javassist.compiler.NoFieldException=var3944, r0=var1835, r2=var3852, null_type=var2532, org.apache.ibatis.javassist.compiler.ast.ASTree=var431, r6=var1874, $r1=var3871, $r3=var3529, $r4=var1181, $r5=var1968, org.apache.ibatis.javassist.compiler.CompileError=var3194}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.NoFieldException;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTree;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such field: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r5);	r0.<org.apache.ibatis.javassist.compiler.NoFieldException: java.lang.String fieldName> = r2;	r0.<org.apache.ibatis.javassist.compiler.NoFieldException: org.apache.ibatis.javassist.compiler.ast.ASTree expr> = r6;	return
;block_num 1