(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2277 0)
(declare-sort var3809 0)
(declare-sort var3595 0)
(declare-sort var3674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var3674 String var3595) void)
(declare-fun cast-from-var2277-to-var3674 (var2277) var3674)
(declare-const null-var2277 var2277)
(declare-const null-String String)
(declare-const null-var3595 var3595)
(declare-const var948 var2277) ; Statement: r0 := @this: org.apache.ibatis.ognl.ExpressionSyntaxException 
(assert (not (= var948 null-var2277)))
(declare-const var3087 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3087 null-String)))
(declare-const var2960 var3595) ; Statement: r5 := @parameter1: java.lang.Throwable 
(assert (not (= var2960 null-var3595)))
(define-const var1349 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1349)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1349!1 String)
(assert (= var1349!1 ""))
(assert true)
(define-const var844 String (append/672562846 var1349!1 "Malformed OGNL expression: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Malformed OGNL expression: ") 
(declare-const var1349!2 String)
(assert (= var1349!2 (str.++ var1349!1 "Malformed OGNL expression: ")))
(assert true)
(define-const var2972 String (append/672562846 var844 var3087)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var844!1 String)
(assert (= var844!1 (str.++ var844 var3087)))
(assert true)
(define-const var3547 String (toString/-2075883882 var2972)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 (cast-from-var2277-to-var3674 var948) var3547 var2960)) ; Statement: specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5) 

(declare-const var948!1 var2277)
(declare-const var3547!1 String)
(declare-const var2960!1 var3595)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var2277-to-var3674=([org.apache.ibatis.ognl.ExpressionSyntaxException], org.apache.ibatis.ognl.OgnlException)}
; {var2277=org.apache.ibatis.ognl.ExpressionSyntaxException, var948=r0, var3087=r2, var3809=null_type, var3595=java.lang.Throwable, var2960=r5, var1349=$r1, var844=$r3, var2972=$r4, var3547=$r6, var3674=org.apache.ibatis.ognl.OgnlException}
; {org.apache.ibatis.ognl.ExpressionSyntaxException=var2277, r0=var948, r2=var3087, null_type=var3809, java.lang.Throwable=var3595, r5=var2960, $r1=var1349, $r3=var844, $r4=var2972, $r6=var3547, org.apache.ibatis.ognl.OgnlException=var3674}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ExpressionSyntaxException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Malformed OGNL expression: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5);	return
;block_num 1