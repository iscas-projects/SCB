(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3579 0)
(declare-sort var3395 0)
(declare-sort var1887 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1599-init () var1599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1887) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1599 String) void)
(declare-const null-var3579 var3579)
(declare-const null-var3395 var3395)
(declare-const null-var1887 var1887)
(declare-const var102 var3579) ; Statement: r7 := @this: org.apache.ibatis.ognl.IteratorPropertyAccessor 
(assert (not (= var102 null-var3579)))
(declare-const var521 var3395) ; Statement: r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var521 null-var3395)))
(declare-const var3628 var1887) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var3628 null-var1887)))
(declare-const var819 var1887) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var819 null-var1887)))
(declare-const var1399 var1887) ; Statement: r10 := @parameter3: java.lang.Object 
(assert (not (= var1399 null-var1887)))
(define-const var1668 var1599 var1599-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1714 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1714)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1714!1 String)
(assert (= var1714!1 ""))
(assert true)
(define-const var3223 String (append/672562846 var1714!1 "can\u0027t set property ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t set property ") 
(declare-const var1714!2 String)
(assert (= var1714!2 (str.++ var1714!1 "can\u0027t set property ")))
(assert true)
(define-const var1241 String (append/-1031950772 var3223 var819)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3223!1 String)
(assert (str.prefixof var3223 var3223!1))
(assert true)
(define-const var874 String (append/672562846 var1241 " on Iterator")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on Iterator") 
(declare-const var1241!1 String)
(assert (= var1241!1 (str.++ var1241 " on Iterator")))
(assert true)
(define-const var583 String (toString/-2075883882 var874)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1668 var583)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1668!1 var1599)
(declare-const var583!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1599-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3579=org.apache.ibatis.ognl.IteratorPropertyAccessor, var102=r7, var3395=org.apache.ibatis.ognl.OgnlContext, var521=r8, var1887=java.lang.Object, var3628=r9, var819=r2, var1399=r10, var1599=java.lang.IllegalArgumentException, var1668=$r0, var1714=$r1, var3223=$r3, var1241=$r4, var874=$r5, var583=$r6}
; {org.apache.ibatis.ognl.IteratorPropertyAccessor=var3579, r7=var102, org.apache.ibatis.ognl.OgnlContext=var3395, r8=var521, java.lang.Object=var1887, r9=var3628, r2=var819, r10=var1399, java.lang.IllegalArgumentException=var1599, $r0=var1668, $r1=var1714, $r3=var3223, $r4=var1241, $r5=var874, $r6=var583}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.ognl.IteratorPropertyAccessor;	r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	r10 := @parameter3: java.lang.Object;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t set property ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on Iterator");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1