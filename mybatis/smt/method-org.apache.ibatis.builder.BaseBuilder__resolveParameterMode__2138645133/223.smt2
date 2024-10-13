(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1268 0)
(declare-sort var3538 0)
(declare-sort var2878 0)
(declare-sort var2430 0)
(declare-sort var2933 0)
(declare-sort var1769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2430-init () var2430)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2933) String)
(declare-fun cast-from-var2878-to-var2933 (var2878) var2933)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var2430 String var1769) void)
(declare-fun cast-from-var2878-to-var1769 (var2878) var1769)
(declare-const null-var1268 var1268)
(declare-const null-String String)
(declare-const null-var2878 var2878)
(declare-const var85 var1268) ; Statement: r7 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var85 null-var1268)))
(declare-const var1510 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1510 null-String)))
 ; Statement: if r0 != null goto $r8 = staticinvoke <org.apache.ibatis.mapping.ParameterMode: org.apache.ibatis.mapping.ParameterMode valueOf(java.lang.String)>(r0) 
(assert (not (not (= var1510 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var3687 var2878) ; Statement: $r1 := @caughtexception 
(assert (not (= var3687 null-var2878)))
(define-const var3903 var2430 var2430-init) ; Statement: $r2 = new org.apache.ibatis.builder.BuilderException 
(define-const var3718 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3718)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3718!1 String)
(assert (= var3718!1 ""))
(assert true)
(define-const var1679 String (append/672562846 var3718!1 "Error resolving ParameterMode. Cause: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving ParameterMode. Cause: ") 
(declare-const var3718!2 String)
(assert (= var3718!2 (str.++ var3718!1 "Error resolving ParameterMode. Cause: ")))
(assert true)
(define-const var1543 String (append/-1031950772 var1679 (cast-from-var2878-to-var2933 var3687))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var1679!1 String)
(assert (str.prefixof var1679 var1679!1))
(assert true)
(define-const var3318 String (toString/-2075883882 var1543)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var3903 var3318 (cast-from-var2878-to-var1769 var3687))) ; Statement: specialinvoke $r2.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r1) 

(declare-const var3903!1 var2430)
(declare-const var3318!1 String)
(declare-const var3687!1 var2878)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2430-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2878-to-var2933=([java.lang.IllegalArgumentException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var2878-to-var1769=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1268=org.apache.ibatis.builder.BaseBuilder, var85=r7, var1510=r0, var3538=null_type, var2878=java.lang.IllegalArgumentException, var3687=$r1, var2430=org.apache.ibatis.builder.BuilderException, var3903=$r2, var3718=$r3, var1679=$r4, var2933=java.lang.Object, var1543=$r5, var3318=$r6, var1769=java.lang.Throwable}
; {org.apache.ibatis.builder.BaseBuilder=var1268, r7=var85, r0=var1510, null_type=var3538, java.lang.IllegalArgumentException=var2878, $r1=var3687, org.apache.ibatis.builder.BuilderException=var2430, $r2=var3903, $r3=var3718, $r4=var1679, java.lang.Object=var2933, $r5=var1543, $r6=var3318, java.lang.Throwable=var1769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.builder.BaseBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r8 = staticinvoke <org.apache.ibatis.mapping.ParameterMode: org.apache.ibatis.mapping.ParameterMode valueOf(java.lang.String)>(r0);	$r1 := @caughtexception;	$r2 = new org.apache.ibatis.builder.BuilderException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving ParameterMode. Cause: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r1);	throw $r2
;block_num 2