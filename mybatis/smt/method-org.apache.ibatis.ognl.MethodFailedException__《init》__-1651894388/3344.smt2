(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var3311 0)
(declare-sort var2137 0)
(declare-sort var2466 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3311) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var2736 String var2466) void)
(declare-fun cast-from-var1743-to-var2736 (var1743) var2736)
(declare-const null-var1743 var1743)
(declare-const null-var3311 var3311)
(declare-const null-String String)
(declare-const null-var2466 var2466)
(declare-const var1800 var1743) ; Statement: r0 := @this: org.apache.ibatis.ognl.MethodFailedException 
(assert (not (= var1800 null-var1743)))
(declare-const var1668 var3311) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var1668 null-var3311)))
(declare-const var919 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var919 null-String)))
(declare-const var1185 var2466) ; Statement: r8 := @parameter2: java.lang.Throwable 
(assert (not (= var1185 null-var2466)))
(define-const var1098 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1098)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1098!1 String)
(assert (= var1098!1 ""))
(assert true)
(define-const var1433 String (append/672562846 var1098!1 "Method \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"") 
(declare-const var1098!2 String)
(assert (= var1098!2 (str.++ var1098!1 "Method \u0022")))
(assert true)
(define-const var53 String (append/672562846 var1433 var919)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1433!1 String)
(assert (= var1433!1 (str.++ var1433 var919)))
(assert true)
(define-const var1810 String (append/672562846 var53 "\u0022 failed for object ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" failed for object ") 
(declare-const var53!1 String)
(assert (= var53!1 (str.++ var53 "\u0022 failed for object ")))
(assert true)
(define-const var2174 String (append/-1031950772 var1810 var1668)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1810!1 String)
(assert (str.prefixof var1810 var1810!1))
(assert true)
(define-const var3792 String (toString/-2075883882 var2174)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 (cast-from-var1743-to-var2736 var1800) var3792 var1185)) ; Statement: specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r9, r8) 

(declare-const var1800!1 var1743)
(declare-const var3792!1 String)
(declare-const var1185!1 var2466)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var1743-to-var2736=([org.apache.ibatis.ognl.MethodFailedException], org.apache.ibatis.ognl.OgnlException)}
; {var1743=org.apache.ibatis.ognl.MethodFailedException, var1800=r0, var3311=java.lang.Object, var1668=r5, var919=r2, var2137=null_type, var2466=java.lang.Throwable, var1185=r8, var1098=$r1, var1433=$r3, var53=$r4, var1810=$r6, var2174=$r7, var3792=$r9, var2736=org.apache.ibatis.ognl.OgnlException}
; {org.apache.ibatis.ognl.MethodFailedException=var1743, r0=var1800, java.lang.Object=var3311, r5=var1668, r2=var919, null_type=var2137, java.lang.Throwable=var2466, r8=var1185, $r1=var1098, $r3=var1433, $r4=var53, $r6=var1810, $r7=var2174, $r9=var3792, org.apache.ibatis.ognl.OgnlException=var2736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.MethodFailedException;	r5 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" failed for object ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r9, r8);	return
;block_num 1