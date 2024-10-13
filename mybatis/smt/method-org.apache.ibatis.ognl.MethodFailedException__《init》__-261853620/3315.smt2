(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1805 0)
(declare-sort var293 0)
(declare-sort var3360 0)
(declare-sort var2921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var293) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var2921 String) void)
(declare-fun cast-from-var1805-to-var2921 (var1805) var2921)
(declare-const null-var1805 var1805)
(declare-const null-var293 var293)
(declare-const null-String String)
(declare-const var1276 var1805) ; Statement: r0 := @this: org.apache.ibatis.ognl.MethodFailedException 
(assert (not (= var1276 null-var1805)))
(declare-const var3007 var293) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var3007 null-var293)))
(declare-const var3368 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3368 null-String)))
(define-const var1212 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var390 String (append/672562846 var1212!1 "Method \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"") 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 "Method \u0022")))
(assert true)
(define-const var2008 String (append/672562846 var390 var3368)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var390!1 String)
(assert (= var390!1 (str.++ var390 var3368)))
(assert true)
(define-const var2754 String (append/672562846 var2008 "\u0022 failed for object ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" failed for object ") 
(declare-const var2008!1 String)
(assert (= var2008!1 (str.++ var2008 "\u0022 failed for object ")))
(assert true)
(define-const var3009 String (append/-1031950772 var2754 var3007)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2754!1 String)
(assert (str.prefixof var2754 var2754!1))
(assert true)
(define-const var2091 String (toString/-2075883882 var3009)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 (cast-from-var1805-to-var2921 var1276) var2091)) ; Statement: specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r8) 

(declare-const var1276!1 var1805)
(declare-const var2091!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void), cast-from-var1805-to-var2921=([org.apache.ibatis.ognl.MethodFailedException], org.apache.ibatis.ognl.OgnlException)}
; {var1805=org.apache.ibatis.ognl.MethodFailedException, var1276=r0, var293=java.lang.Object, var3007=r5, var3368=r2, var3360=null_type, var1212=$r1, var390=$r3, var2008=$r4, var2754=$r6, var3009=$r7, var2091=$r8, var2921=org.apache.ibatis.ognl.OgnlException}
; {org.apache.ibatis.ognl.MethodFailedException=var1805, r0=var1276, java.lang.Object=var293, r5=var3007, r2=var3368, null_type=var3360, $r1=var1212, $r3=var390, $r4=var2008, $r6=var2754, $r7=var3009, $r8=var2091, org.apache.ibatis.ognl.OgnlException=var2921}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.MethodFailedException;	r5 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" failed for object ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r8);	return
;block_num 1