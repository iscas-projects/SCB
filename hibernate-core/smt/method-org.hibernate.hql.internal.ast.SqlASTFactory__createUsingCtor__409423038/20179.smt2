(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3829 0)
(declare-sort var982 0)
(declare-sort var1667 0)
(declare-sort var1101 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var931-init () var931)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var931 String) void)
(declare-const null-var3829 var3829)
(declare-const null-var982 var982)
(declare-const null-String String)
(declare-const null-var1101 var1101)
(declare-const var3956 var3829) ; Statement: r4 := @this: org.hibernate.hql.internal.ast.SqlASTFactory 
(assert (not (= var3956 null-var3829)))
(declare-const var1526 var982) ; Statement: r6 := @parameter0: antlr.Token 
(assert (not (= var1526 null-var982)))
(declare-const var3539 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3539 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2992 var1101) ; Statement: $r8 := @caughtexception 
(assert (not (= var2992 null-var1101)))
(define-const var3051 var931 var931-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var1651 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1651)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1651!1 String)
(assert (= var1651!1 ""))
(assert true)
(define-const var1993 String (append/672562846 var1651!1 "Invalid class or can\u0027t make instance, ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid class or can\'t make instance, ") 
(declare-const var1651!2 String)
(assert (= var1651!2 (str.++ var1651!1 "Invalid class or can\u0027t make instance, ")))
(assert true)
(define-const var3725 String (append/672562846 var1993 var3539)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1993!1 String)
(assert (= var1993!1 (str.++ var1993 var3539)))
(assert true)
(define-const var2858 String (toString/-2075883882 var3725)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3051 var2858)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var3051!1 var931)
(declare-const var2858!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var931-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3829=org.hibernate.hql.internal.ast.SqlASTFactory, var3956=r4, var982=antlr.Token, var1526=r6, var3539=r0, var1667=null_type, var1101=java.lang.Exception, var2992=$r8, var931=java.lang.IllegalArgumentException, var3051=$r9, var1651=$r10, var1993=$r11, var3725=$r12, var2858=$r13}
; {org.hibernate.hql.internal.ast.SqlASTFactory=var3829, r4=var3956, antlr.Token=var982, r6=var1526, r0=var3539, null_type=var1667, java.lang.Exception=var1101, $r8=var2992, java.lang.IllegalArgumentException=var931, $r9=var3051, $r10=var1651, $r11=var1993, $r12=var3725, $r13=var2858}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.hql.internal.ast.SqlASTFactory;	r6 := @parameter0: antlr.Token;	r0 := @parameter1: java.lang.String;	$r8 := @caughtexception;	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid class or can\'t make instance, ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 2