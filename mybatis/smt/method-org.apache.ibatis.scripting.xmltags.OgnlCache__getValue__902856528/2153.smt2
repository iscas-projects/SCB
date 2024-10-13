(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2697 0)
(declare-sort var3282 0)
(declare-sort var2703 0)
(declare-sort var1585 0)
(declare-sort var1788 0)
(declare-sort var3272 0)
(declare-sort var851 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var851-init () var851)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3282) String)
(declare-fun cast-from-var3272-to-var3282 (var3272) var3282)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var851 String var2833) void)
(declare-fun cast-from-var3272-to-var2833 (var3272) var2833)
(declare-const null-String String)
(declare-const null-var3282 var3282)
(declare-const var1585-MEMBER_ACCESS var2703)
(declare-const var1585-CLASS_RESOLVER var1788)
(declare-const null-var3272 var3272)
(declare-const var1348 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1348 null-String)))
(declare-const var3494 var3282) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3494 null-var3282)))
(define-const var3992 var2703 var1585-MEMBER_ACCESS) ; Statement: $r2 = <org.apache.ibatis.scripting.xmltags.OgnlCache: org.apache.ibatis.scripting.xmltags.OgnlMemberAccess MEMBER_ACCESS> 
(define-const var333 var1788 var1585-CLASS_RESOLVER) ; Statement: $r1 = <org.apache.ibatis.scripting.xmltags.OgnlCache: org.apache.ibatis.scripting.xmltags.OgnlClassResolver CLASS_RESOLVER> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var243 var3272) ; Statement: $r6 := @caughtexception 
(assert (not (= var243 null-var3272)))
(define-const var226 var851 var851-init) ; Statement: $r7 = new org.apache.ibatis.builder.BuilderException 
(define-const var1596 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1596)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1596!1 String)
(assert (= var1596!1 ""))
(assert true)
(define-const var3958 String (append/672562846 var1596!1 "Error evaluating expression \u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error evaluating expression \'") 
(declare-const var1596!2 String)
(assert (= var1596!2 (str.++ var1596!1 "Error evaluating expression \u0027")))
(assert true)
(define-const var303 String (append/672562846 var3958 var1348)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3958!1 String)
(assert (= var3958!1 (str.++ var3958 var1348)))
(assert true)
(define-const var1209 String (append/672562846 var303 "\u0027. Cause: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Cause: ") 
(declare-const var303!1 String)
(assert (= var303!1 (str.++ var303 "\u0027. Cause: ")))
(assert true)
(define-const var3450 String (append/-1031950772 var1209 (cast-from-var3272-to-var3282 var243))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1209!1 String)
(assert (str.prefixof var1209 var1209!1))
(assert true)
(define-const var844 String (toString/-2075883882 var3450)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var226 var844 (cast-from-var3272-to-var2833 var243))) ; Statement: specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var226!1 var851)
(declare-const var844!1 String)
(declare-const var243!1 var3272)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var851-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3272-to-var3282=([org.apache.ibatis.ognl.OgnlException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var3272-to-var2833=([org.apache.ibatis.ognl.OgnlException], java.lang.Throwable)}
; {var1348=r3, var2697=null_type, var3282=java.lang.Object, var3494=r0, var2703=org.apache.ibatis.scripting.xmltags.OgnlMemberAccess, var1585=org.apache.ibatis.scripting.xmltags.OgnlCache, var3992=$r2, var1788=org.apache.ibatis.scripting.xmltags.OgnlClassResolver, var333=$r1, var3272=org.apache.ibatis.ognl.OgnlException, var243=$r6, var851=org.apache.ibatis.builder.BuilderException, var226=$r7, var1596=$r8, var3958=$r9, var303=$r10, var1209=$r11, var3450=$r12, var844=$r13, var2833=java.lang.Throwable}
; {r3=var1348, null_type=var2697, java.lang.Object=var3282, r0=var3494, org.apache.ibatis.scripting.xmltags.OgnlMemberAccess=var2703, org.apache.ibatis.scripting.xmltags.OgnlCache=var1585, $r2=var3992, org.apache.ibatis.scripting.xmltags.OgnlClassResolver=var1788, $r1=var333, org.apache.ibatis.ognl.OgnlException=var3272, $r6=var243, org.apache.ibatis.builder.BuilderException=var851, $r7=var226, $r8=var1596, $r9=var3958, $r10=var303, $r11=var1209, $r12=var3450, $r13=var844, java.lang.Throwable=var2833}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Object;	$r2 = <org.apache.ibatis.scripting.xmltags.OgnlCache: org.apache.ibatis.scripting.xmltags.OgnlMemberAccess MEMBER_ACCESS>;	$r1 = <org.apache.ibatis.scripting.xmltags.OgnlCache: org.apache.ibatis.scripting.xmltags.OgnlClassResolver CLASS_RESOLVER>;	$r6 := @caughtexception;	$r7 = new org.apache.ibatis.builder.BuilderException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error evaluating expression \'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Cause: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2