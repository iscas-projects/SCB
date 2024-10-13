(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort var2411 0)
(declare-sort var3114 0)
(declare-sort var2844 0)
(declare-sort var924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2844-init () var2844)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var2844 String var924) void)
(declare-fun cast-from-var3114-to-var924 (var3114) var924)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2411-INDEXED_PROPERTY_NONE Int)
(declare-const null-var3114 var3114)
(declare-const var1411 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1411 null-ClassObject)))
(declare-const var272 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var272 null-String)))
(define-const var367 Int var2411-INDEXED_PROPERTY_NONE) ; Statement: i0 = <org.apache.ibatis.ognl.OgnlRuntime: int INDEXED_PROPERTY_NONE> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3660 var3114) ; Statement: $r2 := @caughtexception 
(assert (not (= var3660 null-var3114)))
(define-const var810 var2844 var2844-init) ; Statement: $r3 = new org.apache.ibatis.ognl.OgnlException 
(define-const var3261 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3261)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3261!1 String)
(assert (= var3261!1 ""))
(assert true)
(define-const var916 String (append/672562846 var3261!1 "problem determining if \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("problem determining if \'") 
(declare-const var3261!2 String)
(assert (= var3261!2 (str.++ var3261!1 "problem determining if \u0027")))
(assert true)
(define-const var3684 String (append/672562846 var916 var272)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var916!1 String)
(assert (= var916!1 (str.++ var916 var272)))
(assert true)
(define-const var3574 String (append/672562846 var3684 "\u0027 is an indexed property")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is an indexed property") 
(declare-const var3684!1 String)
(assert (= var3684!1 (str.++ var3684 "\u0027 is an indexed property")))
(assert true)
(define-const var3236 String (toString/-2075883882 var3574)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var810 var3236 (cast-from-var3114-to-var924 var3660))) ; Statement: specialinvoke $r3.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var810!1 var2844)
(declare-const var3236!1 String)
(declare-const var3660!1 var3114)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2844-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var3114-to-var924=([java.lang.Exception], java.lang.Throwable)}
; {var1411=r0, var272=r1, var3709=null_type, var2411=org.apache.ibatis.ognl.OgnlRuntime, var367=i0, var3114=java.lang.Exception, var3660=$r2, var2844=org.apache.ibatis.ognl.OgnlException, var810=$r3, var3261=$r4, var916=$r5, var3684=$r6, var3574=$r7, var3236=$r8, var924=java.lang.Throwable}
; {r0=var1411, r1=var272, null_type=var3709, org.apache.ibatis.ognl.OgnlRuntime=var2411, i0=var367, java.lang.Exception=var3114, $r2=var3660, org.apache.ibatis.ognl.OgnlException=var2844, $r3=var810, $r4=var3261, $r5=var916, $r6=var3684, $r7=var3574, $r8=var3236, java.lang.Throwable=var924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	i0 = <org.apache.ibatis.ognl.OgnlRuntime: int INDEXED_PROPERTY_NONE>;	$r2 := @caughtexception;	$r3 = new org.apache.ibatis.ognl.OgnlException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("problem determining if \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is an indexed property");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r3
;block_num 2