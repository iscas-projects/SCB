(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1175 0)
(declare-sort var1943 0)
(declare-sort var3075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTextAround/34908750 (var1943) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-844430300 (var3075 String var1943) void)
(declare-fun cast-from-var1175-to-var3075 (var1175) var3075)
(declare-const null-var1175 var1175)
(declare-const null-var1943 var1943)
(declare-const var539 var1175) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.SyntaxError 
(assert (not (= var539 null-var1175)))
(declare-const var589 var1943) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.compiler.Lex 
(assert (not (= var589 null-var1943)))
(define-const var971 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var971)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var971!1 String)
(assert (= var971!1 ""))
(assert true)
(define-const var2350 String (append/672562846 var971!1 "syntax error near \u0022")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax error near \"") 
(declare-const var971!2 String)
(assert (= var971!2 (str.++ var971!1 "syntax error near \u0022")))
(assert true)
(define-const var3004 String (getTextAround/34908750 var589)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String getTextAround()>() 
(assert true)
(define-const var2031 String (append/672562846 var2350 var3004)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2350!1 String)
(assert (= var2350!1 (str.++ var2350 var3004)))
(assert true)
(define-const var3482 String (append/672562846 var2031 "\u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2031!1 String)
(assert (= var2031!1 (str.++ var2031 "\u0022")))
(assert true)
(define-const var2626 String (toString/-2075883882 var3482)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-844430300 (cast-from-var1175-to-var3075 var539) var2626 var589)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String,org.apache.ibatis.javassist.compiler.Lex)>($r7, r2) 

(declare-const var539!1 var1175)
(declare-const var2626!1 String)
(declare-const var589!1 var1943)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTextAround/34908750=([org.apache.ibatis.javassist.compiler.Lex], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-844430300=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String, org.apache.ibatis.javassist.compiler.Lex], void), cast-from-var1175-to-var3075=([org.apache.ibatis.javassist.compiler.SyntaxError], org.apache.ibatis.javassist.compiler.CompileError)}
; {var1175=org.apache.ibatis.javassist.compiler.SyntaxError, var539=r0, var1943=org.apache.ibatis.javassist.compiler.Lex, var589=r2, var971=$r1, var2350=$r4, var3004=$r3, var2031=$r5, var3482=$r6, var2626=$r7, var3075=org.apache.ibatis.javassist.compiler.CompileError}
; {org.apache.ibatis.javassist.compiler.SyntaxError=var1175, r0=var539, org.apache.ibatis.javassist.compiler.Lex=var1943, r2=var589, $r1=var971, $r4=var2350, $r3=var3004, $r5=var2031, $r6=var3482, $r7=var2626, org.apache.ibatis.javassist.compiler.CompileError=var3075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.SyntaxError;	r2 := @parameter0: org.apache.ibatis.javassist.compiler.Lex;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax error near \"");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String getTextAround()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String,org.apache.ibatis.javassist.compiler.Lex)>($r7, r2);	return
;block_num 1